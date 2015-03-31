#!/usr/bin/env python

#---------------------------------------------
# Scan chain implementation v2
# Titto Thomas
# WEL Lab, EE Dept. , IIT Bombay

# Credits : Deepak Bhat, designer of v1
#---------------------------------------------

import usb.core
import usb.util
import sys
import time
import os

print"Scan chain v2.0\nWadhwani Electronics Laboratory, IIT Bombay\n"

# Just checking for the necessary root access of the user
if os.geteuid() != 0:
    exit("You need to have root privileges to run this script.\nPlease try again, this time using 'sudo'. Exiting.\n")
    
# Check for the proper input format
if len(sys.argv) != 3 :
	print "Error : The correct format is ./scan.py <input file> <output file>"
	sys.exit(1)
else:
	input_file = open(sys.argv[1],"r")
	output_file = open(sys.argv[2],"w")
	output_file.write("Expected Output    Received Output   Remarks\n")
	output_file.write("============================================\n")

#----------------- Connecting to device -------------------------------
print "Initiating connection with the device.."

# find our device
dev = usb.core.find(idVendor=0x03eb, idProduct = 0x2402)
# was it found?
if dev is None:
	raise ValueError('Error : Device not found')

print "Device found.."
# set the active configuration. With no arguments, the first configuration will be the active one
print "Please wait, Setting it's configuration... "
print "Done !"
print "Claiming interface.."
# Note: The code below is for interface 0, check what interface is used

#claim the device
if dev.is_kernel_driver_active(0) is True:
	dev.detach_kernel_driver(0)

dev.set_configuration()
usb.util.claim_interface(dev, 0)
print "Connection established.\n"

#--------------------- Hex input to binary conversion function ---------------------------------
def toBin(value, bits):
    value = bin(int(value,16))[2:]
    while ( len(value) < bits ):
    	value = '0' + value
    while ( len(value) > bits ):
    	value = value[1:]   
    return value

line_num = 0
#----------------- Read the input file and send it -------------------------------
for comm in input_file.readlines():
	line_num += 1
	comm = comm.replace('\n','')
	
	#Display the command on screen
	print "\n#------ Command - ",line_num,":",comm,"------#\n"
	command = comm.split(' ')
	
	#Check for the command
	if command[0] == "SDR":
		in_pins = int(command[1])
		out_pins = int(command[3])
		temp_in = command[2].rstrip(')').split('(')
		data_in = toBin(temp_in [1], in_pins)
		data_in_reverse = data_in[::-1]
		temp_out = command[4].rstrip(')').split('(')
		expct_out = toBin(temp_out [1], out_pins)
		temp_mask = command[5].rstrip(')').split('(')
		mask = toBin(temp_mask [1], out_pins)
		mask_int = int(temp_mask[1],16)
		
		#Form the string to be sent to the microcontroller
		command_out = 'L'+chr(in_pins)+data_in_reverse
		print"Sending ",in_pins,"bit input data ",data_in
		
		for single in list(command_out):
			dev.write(2,single,100)
			time.sleep(3)
		print "Successfully entered the input.."
		
	elif command[0] == "RUNTEST":
		time_sec = int(command[1]) #*3
		dev.write(2,'A',100)		
		time.sleep(5)
		print"Applying input.."
		print "Waiting for execution to end.."
		# setup toolbar
		sys.stdout.write("[%s]" % (" " * 40))
		sys.stdout.flush()
		sys.stdout.write("\b" * (41)) # return to start of line, after '['
		
		for i in xrange(40):
			time.sleep(time_sec/40) # do real work here
			# update the bar
			sys.stdout.write("-")
			sys.stdout.flush()

		sys.stdout.write("\n")
		
		# Scan out the data if needed
		if ( mask_int != 0 ):
			dev.write(2,'S',100)
			time.sleep(5)
			dev.write(2,chr(out_pins),100)
			print "Sampling out data.."
			time.sleep(out_pins*3)
			inn = dev.read(0x81,512,100)
			inn = inn [0:out_pins]
			valid = 1
			for each in inn:
				if each not in {0x30,0x31}:
					valid = 0
					
			while (valid != 1):
				# print "Error occured, requesting again.."
				dev.write(2,'R',100)
				time.sleep(5)
				inn = dev.read(0x81,512,100)
				inn = inn [0:out_pins]
				valid = 1
				for each in inn:
					if each not in {0x30,0x31}:
						valid = 0
			
			recvd_data = ''.join(chr(e) for e in inn)
			print "\nOutput : ",recvd_data[::-1]
			
			bit_num = 0
			invalid = 0
			for mask_bit in mask:
				if ( mask_bit == '1' ):
					if (inn[out_pins-1-bit_num] != (48+int(expct_out[bit_num]))):
						invalid = 1
				bit_num += 1
			if ( invalid == 0 ):
				result = "Success"
			else :
				result = "Failure"
				
			print "Output Comparison : ", result
			file_data = expct_out + "    " + recvd_data[::-1] + "   " + result+"\n"
			output_file.write(file_data)
	else :
		print "Error : Unknown command on line ", line_num, ", skipping.."
	
input_file.close()
output_file.close()
	
