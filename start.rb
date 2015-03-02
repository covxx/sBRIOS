=begin
--------------------
B|R|I|O|S
Basic Ruby Input Output System
https://github.com/covxx/BRIOS
@covxx
--------------------
=end
#Any thing that needs to be required 
require 'io/console'
require 'FileUtils'
require 'bcrypt' 


 def boot
	Print "Starting to run BRIOS"
	Print "Please wait..."
	if #{frun} == 1
		File.open("users.txt, r") 
		#This needs to call the log in
		elsif #{frun} == 0 #Starts the first run process 
			Print "Lets get started"
			Print "What do you want your user name to be?: "
			user_name = gets.chomp
			Print "Choice a password: "
			user_pass = gets.chomp #this needs to be encrypted  
			Print "Confirm your password: "
			userpass_confirm = gets.chomp
				if 
					user_pass == userpass_confirm
					Print "Password correct!"
					Print "One moment please.."
					File.open("fr.txt, w") {|f| f.write("1")}
end


  def login #Login system v0.01 | 
	Print "Welcome to BRIOS" 
	print "Users:" #Will print out a list of the users, probably from a txt file
	Print "What user do you want to log in as: "
	user_name_login = gets.chomp
	
 def menu
	Print "Welcome to your desktop #{user_name}"
	Print "Today's date is" puts "Current Time : " + time.inspect
	Print "-------------------------------------"
	Print "Menu"
	Print "1. Notes"
	Print "2. Calender"
	Print "3. Text Editor"
	Print "4. Log out"
	Print "What would you like to launch?: "
	app_launch = gets.chomp
	#Below launches which program the user choice
	if #{app_launch} == 1
	
		elsif #{app_launch} == 2
	
		elsif #{app_launch} == 3
	
		elsif #{app_launch} == 4
	
