
#--------------------
#m|B|R|I|O|S
#Modern Basic Ruby Input Output System
#https://github.com/covxx/mBRIOS
#@covxx // contact me: covxx@cvoxo.com //
#--------------------
require 'io/console' #Working with files
require 'FileUtils'  #Working with files
require 'bcrypt'     #Encryption 
require 'time'       #Time management  
require 'thread'     #Multi Threading support
require 'yaml'       #Using YAML 

 def debug #simple thing to help debugging 
	sleep(4.minutes)
    Print "Code has finished \n"
end	

 def boot
	print "Starting mBRIOS \n"
	sleep(2.seconds)
	user = File.read("user.txt, r") 
	print "Checking if first run \n"
	if #{frun} == 1
		print "Booting mBRIOS please wait \n"
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
				user_pass == userpass_confirm #This seemed like the simplest way to confirm passwords, remember Ruby was not made for this 
				print "Password correct! \n"
				print "One moment please.. \n"
				sleep(3.seconds)
				File.open("fr.txt, w") {|f| f.write("1")}
	end
  
  def login #Login system v0.01 | no multi user support till later
	print "Welcome to mBRIOS \n" 
	#print "Users:" #Once multi user support is added this will print out the users 
	#print "What user do you want to log in as: " #Grabs user name to login 
	print "Type your user name: \n"
	user_name_login = gets.chomp
	Print "Type your password: \n"
	user_pass_login = gets.chomp 
		if user_name_login == user
		menu()
			else #HAS to be a cleaner way to do this but for now this works
			print "No user name found, please try again \n"
			login() 
		end
end

 def logout #Logout system v0.0 | 
	Print "Logging out.. \n"
	sleep(3.seconds)
	#Needs to close threads and files
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
	if {app_launch} == notes #This is causing an issue and so are the app launch things
	  notes_app()
	end
=begin
		elsif {app_launch} == Calender
			calender_app()
		end
			elsif {app_launch} == Text Editor 
				txteditor_app()
			end
				elsif {app_launch} == Logout
					logout() #Homegrown stuff 
				end
				elsif {app_launch} == exit
					exit  #using the built in exit function 
=end
	
 def notes_app
  Thread.new { #this may be a good to have each app work on its own thread
	Print "Loading notes, please wait \n"
	sleep(3.seconds)
	Print "Which file would you like to open \n"
	Dir.entries(folder) #prints out the file names so user can choose
	file_name_na = gets.chomp
	Print "Loading file.. \n"
	file.open("file_name_na, r+") #grabs the 'file_name_na' var and uses it to open the file in read and write mode(not sure if this works))
	sleep(3.seconds)
	end
       }


boot() #this is also causing an issue | Only method that needs to be called 
