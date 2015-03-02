#--------------------
#BRIOS PRE-ALPHA 0.0.2
#@COVXX
#--------------------
#Any thing that needs to be required 
require 'io/console'
require 'FileUtils'
require 'bcrypt' 


def boot
Print "Welcome to BRIOS..."
Print "Please wait..."
if #{frun} == 1
  #This needs to call the 'desktop'
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
      #File.open("FR.txt, OPITON") {|f| f.write("1")}
end

