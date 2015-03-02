
#--------------------
#B|R|I|O|S
#Basic Ruby Input Output System
#https://github.com/covxx/BRIOS
#@covxx
#--------------------

#Any thing that required
require 'io/console'
require 'FileUtils'
require 'bcrypt' 
require 'time'

 def boot
	print "Starting BRIOS"
	print "Please wait..."
	print "BRIOS booting"
	print "Checking if first run"
	if #{frun} == 1
		print " Loading login system, please wait "
		File.open("users.txt, r") 
			login()
		elsif #{frun} == 0 #Starts the first run process 
			print "Starting first run process, please wait"
	#Here will call the first boot process
	end
sleep(4.minutes)

  def firstboot
	print "Welcome to BRIOS"
	print "This is the first boot process"
	print "What do you want your user name to be?: "
		user_name = gets.chomp
	print "Choice a password: "
		user_pass = gets.chomp #this needs to be encrypted  
	print "Confirm your password: "
		userpass_confirm = gets.chomp
			if 
				user_pass == userpass_confirm
				print "Password correct!"
				print "One moment please.."
				File.open("fr.txt, w") {|f| f.write("1")}
	end
  
  def login #Login system v0.01 | 
	print "Welcome to BRIOS" 
	#print "Users:" #Will print out a list of the users, probably from a txt file
	#print "What user do you want to log in as: "
	print "Type your username: "
	user_name_login = gets.chomp
	
	
 def menu
	print "Welcome to your desktop #{user_name}"
	print "Today's date is"+ time.inspect
	print "-------------------------------------"
	print "Menu"
	print "1. Notes"
	print "2. Calender"
	print "3. Text Editor"
	print "4. Log out"
	print "5. Exit"
	print "What would you like to launch?: "
	app_launch = gets.chomp
	#Below launches which program the user choice
	if {app_launch} == 1
	
		elsif {app_launch} == 2
	
		elsif {app_launch} == 3
	
		elsif {app_launch} == 4
		
		elsif {app_launch} == 5

	end
boot()
