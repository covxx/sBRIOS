
#--------------------
#m|B|R|I|O|S
#Modern Basic Ruby Input Output System
#https://github.com/covxx/mBRIOS
#@covxx
#--------------------

#Any thing that required
require 'io/console'
require 'FileUtils'
require 'bcrypt' 
require 'time'
require 'thread'


 def debug #simple thing to help debugging 
	sleep(4.minutes)
    Print "Code has finished \n"
end	

 def boot
	print "Starting mBRIOS \n"
	sleep(2.seconds)
	print "Checking if first run \n"
	if #{frun} == 1
		print "Booting mBRIOS please wait \n"
		File.open("users.txt, r") 
			login()
		elsif #{frun} == 0 #Starts the first run process 
			print "Starting first run process, please wait \n"
	#Here will call the first boot process
	end

  def firstboot
	print "Welcome to mBRIOS \n"
	sleep(1.seconds)
	print "This is the first boot process \n"
	sleep(1.seconds)
	print "Choose a user name: \n"
		user_name = gets.chomp
	print "Choose a password: \n"
		user_pass = gets.chomp #this needs to be encrypted  
	print "Confirm your password: \n"
		userpass_confirm = gets.chomp
			if 
				user_pass == userpass_confirm
				print "Password correct! \n"
				print "One moment please.. \n"
				sleep(3.seconds)
				File.open("fr.txt, w") {|f| f.write("1")}
	end
  
  def login #Login system v0.01 | no multi user support till later
	print "Welcome to mBRIOS \n" 
	#print "Users:" #Will print out a list of the users, probably from a txt file
	#print "What user do you want to log in as: "
	print "Type your user name: \n"
	user_name_login = gets.chomp
end
	
 def menu
	print "Welcome to your desktop #{user_name}, Today's date is"+ time.inspect
	print "------------------------------------- \n"
	print "Menu \n"
	print "1. Notes \n"
	print "2. Calender \n"
	print "3. Text Editor \n"
	print "4. Log out \n"
	print "5. Exit \n"
	print "What would you like to launch?: \n"
	app_launch = gets.chomp
	#Below launches which program the user choice
	if {app_launch} == 1 #This is causing an issue and so are the app launch things
	  notes_app()
		# elsif {app_launch} == 2
			#calender_app()
		# elsif {app_launch} == 3
			#txteditor_app()
		# elsif {app_launch} == 4
		#	logout()
		#elsif {app_launch} == 5
		#	exit
	end
	
 def notes_app
  Thread.new { #this may be a good to have each app work on its own thread

	Print "Loading notes, please wait \n"
	sleep(3.seconds)
	Print "Which file would you like to open \n"
	Dir.entries(folder)
	file_name_na = gets.chomp
	Print "Loading file.. \n"
	file.open("file_name_na, r+") #not sure if this works
	sleep(3.seconds)
}
end	

boot() #this is also causing an issue
