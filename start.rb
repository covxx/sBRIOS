
#--------------------
#s|B|R|I|O|S
#Simulated Basic Ruby Input Output System
#https://github.com/covxx/sBRIOS
#//@covxx // contact me: covxx@cvoxo.com //
#--------------------
require 'io/console' #Working with files
require 'FileUtils'  #Working with files
require 'bcrypt'     #Encryption 
require 'time'       #Time management  
require 'thread'     #Multi Threading support

 def debug #simple thing to help debugging 
	sleep(4.minutes)
    Print "Code has finished \n"
end	

 def boot
    system "clear" or system "cls" #Clears screen
	print "Starting sBRIOS \n"
	sleep(2.seconds)
	#user = File.read("user.txt, r") This needs to changed to new login user method
	print "Checking if first run \n"
	frun = File.read("config/fr.txt")
	if #{frun} == 1
		system "clear" or system "cls"
		print "Booting sBRIOS please wait \n"
			login()
		elsif #{frun} == 0 #Starts the first run process 
			system "clear" or system "cls"
			print "Starting first run process, please wait \n"
			firstboot()
	end

  def firstboot
  	system "clear" or system "cls" #Clears screen
	print "Welcome to sBRIOS \n"
	sleep(1.seconds)
	print "This is the first boot process \n"
	sleep(1.seconds)
	print "Installing... \n" 
	FileUtils.mkdir_p(config) #Creates folder for config storage
	FileUtils.mkdir_p(user) #Creates folder for user storage
	FileUtils::mkdir_p 'apps/texteditor' #Creates folder for text editor app space
	FileUtils.mkdir_p(notes) #Creates folder for notes app space
	FileUtils.mkdir_p(calc) #Creates folder for Calculator app space, not sure if needed
	File.new "config/fr.txt"
	Sleep(5.seconds)
	print "Choose a user name: \n"
		user_name = gets.chomp
	print "Choose a password: \n"
		user_pass = gets.chomp #This needs to be encrypted  
	print "Confirm your password: \n"  
		userpass_confirm = gets.chomp
			if 
				user_pass == userpass_confirm #This seemed like the simplest way to confirm passwords, remember Ruby was not made for this 
				print "Password correct! \n"
				print "One moment please.. \n"
				sleep(3.seconds)
				File.open("config.txt, r") {|f| f.write("1")}
				File.new "#{user_name}" #Creates file for user
				print "loading login, please wait"
				login()
	end
  
  def login #Login system v0.50 | no multi user support till later
	system "clear" or system "cls" #Clears screen
	print "Welcome to sBRIOS \n" 
	#print "Users:" #Once multi user support is added this will print out the users 
	#print "What user do you want to log in as: " #Grabs user name to login 
	loop do 
	print "Type your user name: \n"
	user_name_login = gets.chomp
	Print "Type your password: \n"
	user_pass_login = gets.chomp 
	break if user_pass_login == pass
		menu()
	end
end
 
 def logout #Logout system v0.50 | Not sure what else is needed yet
	Print "Logging out.. \n"
	sleep(3.seconds)
	f.close  #Just in case something is open 
	system "clear" or system "cls" #Clears screen
	login()
 end
	
 def menu
 	system "clear" or system "cls" #Clears screen
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
	if #{app_launch} == notes #This is causing an issue and so are the app launch things
	  notes_app()
		elsif #{app_launch} == Calender
			calender_app()
			elsif #{app_launch} == Text Editor 
				txteditor_app()
				elsif #{app_launch} == Logout
					logout() #Starts the logout process
					elsif #{app_launch} == exit
						exit  #using the built in exit function 
	end

	
 def notes_app
  Thread.new { #this may be a good to have each app work on its own thread
	system "clear" or system "cls" #Clears screen
	Print "Loading notes, please wait \n"
	sleep(3.seconds)
	Print "Which file would you like to open \n"
	Dir.entries(folder) #prints out the file names so user can choose
	file_name_na = gets.chomp
	Print "Loading file.. \n"
	file.open("file_name_na, r+") #grabs the 'file_name_na' var and uses it to open the file in read and write mode(not sure if this works))
	sleep(3.seconds)
       }
 end

boot() #this is also causing an issue | Only method that needs to be called 
