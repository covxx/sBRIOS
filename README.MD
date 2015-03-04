+ |m|odern
+ |B|asic 
+ |R|uby
+ |I|nput
+ |O|utput
+ |S|ystem

-------------
BRIOS is a low level 'modern OS' made in Ruby. Started as a crazy idea for my senior final 
project. This runs from terminal by using "ruby start.rb") like anything else. As I'm still learning
Ruby this is going be a little 'hacked' together.

Planned features:
-------------
- [ ] Calculator
- [ ] Notes
- [ ] Text editor
- [ ] Multi user support
- [x] Multi threading of applications 
- [ ] full encryption


Current TODO:
-------------
- [ ] Finish first run process
	- [ ] Create needed files/folders 
	- [ ] First run configuration save to file 
- [ ] Encryption working
	- [ ] gem implantation
	- [ ] encrypt setting password on first run
	- [ ] file encryption working 
		
- [ ] login system working
- [x] Enable Multi Thread support
- [ ] Get notes working
	- [ ] Enable file opening and closing 
	- [ ] Enable file output
	- [ ] Enable file editing (last to be done)

Issues:
-------------
+ issue #01: Not running due to some dumb issue
 
Ideas:
-------------
+ Windows like login 'screen' 

Change log:
-------------
+ 00.00.26
	+ Typo work 
	+ Added documentation to the README
	+ More work on login system
	+ Fixed README up (I do this everyday)
+ 00.00.25
	+ Changed name to mBRIOS
	+ Started work on notes app
	+ Worked on LOGOUT system
	+ Added multi threading support 
	+ Worked on boot process 
	+ Fixed English
	+ Debugging 
	+ Other smaller things
	+ Removed some unnecessary things from read me
+ 00.00.09
	+ Move first boot process to own statement 
	+ Started work on the menu
	+ Started work on login system 
	+ Started work on password encryption 
	+ fixed unnecessary syntax (thanks @nulljosh)
	+ Updated README 
	+ Small organization changes
	
+ 0.0.01
	+ Ground work started 

Documentation
-------------
---How stuff works or *will* *work*, mostly for myself to remember my thought process.
+ mBRIOS

---I'd love to call this an OS but it really isn't, its more of an OS emulator(that sounds right) than an actual OS. Since Ruby wasn't made to do this everything is text based, a GUI is non existent.  


+ Login system 

---The login system is fairy simple; it reads user name and password from the user.txt yaml file and then uses an if statement to check if they're equal. This may not be the best way, there may even be something built in but for now it works.






