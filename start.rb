#--------------------
#/s/B/R/I/O/S/
#Simulated Basic Ruby Input Output System
#https://github.com/covxx/sBRIOS
#//@covxx // contact: covxx@icloud.com //
#--------------------
require 'io/console' #Working with files
require 'FileUtils'  #Working with files
require 'bcrypt'     #Encryption 
require 'time'       #Time management  
require 'thread'     #Multi Threading support

 def debug #simple thing to help debugging 
	sleep(4)
    Print "Code has finished \n"
end	

 def boot #Boot process 
    system "clear" or system "cls" #Clears screen
	print "Starting sBRIOS \n"
	sleep(2)
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
          
  def firstboot #First boot process for config-in and creates user | v0.50
  	system "clear" or system "cls" #Clears screen
	print "Welcome to sBRIOS \n"
	sleep(1)
	print "This is the first boot process \n"
	sleep(1)
	print "Installing... \n" 
	FileUtils.mkdir_p(config) #Creates folder for config storage
	FileUtils.mkdir_p(user) #Creates folder for user storage
	FileUtils::mkdir_p 'apps/texteditor' #Creates folder for text editor app space
	FileUtils.mkdir_p(notes) #Creates folder for notes app space
	FileUtils.mkdir_p(calc) #Creates folder for Calculator app space, not sure if needed
	File.new "config/fr.txt"
	Sleep(5)
	print "Choose a user name: \n"
		user_name = gets.chomp
		loop do
			print "Choose a password: \n"
			user_pass = gets.chomp #This needs to be encrypted  
			print "Confirm your password: \n"  
			userpass_confirm = gets.chomp
			break if 
				user_pass == userpass_confirm #This seemed like the simplest way to confirm passwords, remember Ruby was not made for this 
				print "Password correct! \n"
				file.new "user/#{pass.txt}"
				File.open("user/pass.txt, r") {|f| f.write(#{userpass_confirm})} 
				print "One moment please.. \n"
				sleep(3)
				File.open("config.txt, r") {|f| f.write("1")}
				File.new "user/#{user_name}" #Creates file for user
				print "loading login, please wait"
				f.close  #Just in case something is open 
				login()
	end
  
  def login #Login system v0.50 | no multi user support
	system "clear" or system "cls" #Clears screen
	print "Welcome to sBRIOS \n" 
	loop do 
		print "Type your user name: \n"
		user_name_login = gets.chomp
		file.open("user/#{user_name_login}")
		pass = File.read("pass.txt, r")
		Print "Type your password: \n"
		user_pass_login = gets.chomp 
		break if user_pass_login == pass
			menu()
		end
	end
 
 def logout #Logout system v0.50 | Not sure what else is needed yet
	system "clear" or system "cls"
	Print "Logging out.. \n"
	sleep(3)
	f.close  #Just in case something is open 
	system "clear" or system "cls" #Clears screen
	login()
 end
	
 def menu #menu System | 
 	system "clear" or system "cls" #Clears screen
	print "Welcome to your desktop #{user_name_login}, Today's date is"+ time.inspect 
	print "-------------------- \n"
	print "Menu \n"
	print "-------------------- \n"
	print "1. Text Editor \n"
	print "2. Calender \n"
	print "3. Notes \n"
	print "4. Calculator \n"
	print "9. Exit \n"
	print "10. Logout \n"
	print "What would you like to launch?: \n"
	app_launch = gets.chomp
	if #{app_launch} == notes #This is causing an issue and so are the app launch things
		txteditor_app()
		elsif #{app_launch} == calender
			calender_app()
		elsif #{app_launch} == text editor 
			notes_app()
		elsif #{app_launch} == logout
			logout() #home-made logout process
		elsif #{app_launch} == exit
			exit #using the built in exit function 
	end

 def calc_app #Calculator app 
	Thread.new {
 	system "clear" or system "cls" #Clears screen
	print "Loading calculator... \n"	
	sleep(3)
	print "Menu \n"
	print "For now this only supports 2 numbers at a time \n"
	print "-------------------- \n"
	print "1. Addition \n"
	print "2. Subtraction \n"
	print "3. Division \n"
	print "4. Multiplication \n"
	print "5. Menu"
	print "Which process would you like to do?: \n"
	calc_proc_sel = gets.chomp #Breaking up into sub menus
	if #{calc_proc_sel} == 1 
			"Calculator Addition module loaded..."
			print "Enter the first number: \n"
			fnum = gets.chomp
			print "Enter the second number: \n"
			snum = gets.chomp
			fnum + snum #Prints out the sum // just needs to loop
		elsif #{calc_proc_sel} == 2
		 	system "clear" or system "cls" #Clears screen
			"Calculator subtraction module loaded..."
			print "Enter the first number: \n"
			fnum = gets.chomp
			print "Enter the second number: \n"
			snum = gets.chomp
			fnum - snum #Prints out the difference // just needs to loop
		elsif #{calc_proc_sel} == 3 #I need to make this integer 
		 	system "clear" or system "cls" #Clears screen
			"Calculator division module loaded..."
			print "Enter the first number: \n"
			fnum = gets.chomp
			print "Enter the second number: \n"
			snum = gets.chomp
			fnum / snum #Prints out the dividend // just needs to loop
		elsif #{calc_proc_sel} == 4
		 	system "clear" or system "cls" #Clears screen
			"Calculator multiplication module loaded..."
			print "Enter the first number: \n"
			fnum = gets.chomp
			print "Enter the second number: \n"
			snum = gets.chomp
			fnum * snum #Prints out the product // just needs to loop
		elsif #{calc_proc_sel} == 5
			menu()
		else  #prints error message 
			print "error \n"
			calc_app()
	end
	}
 def notes_app
  Thread.new { #this may be a good to have each app work on its own thread for performance
	system "clear" or system "cls" #Clears screen
	Print "Loading notes, please wait \n"
	sleep(3)
	Print "Which file would you like to open \n"
	Dir.entries(folder) #prints out the file names so user can choose
	file_name_na = gets.chomp
	Print "Loading file.. \n"
	file.open("file_name_na, r+") #grabs the 'file_name_na' var and uses it to open the file in read and write mode(not sure if this works))
	sleep(3)
       }
 end

boot() #this is also causing an issue,maybe due to placment	| Only method that needs to be called 
