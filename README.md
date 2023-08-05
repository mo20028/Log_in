# Log_in
Hello I'd like to share with you my  project ( LOGIN SYSTEM ) 

project description: 
1. When user open system for firts time should enter password and confirm it,and EEPROM will save the password . 
2. When user tries to Enter system for second time should ask for password . 
3. User Enters password through keypad. 
4. If user enters a correct password, system will display a 
successful login message.
5. If user enters a wrong password, the system should display 
this message, “wrong password”. 
6. The user has a maximum of 3 times to try to enter a correct 
password after that the system will lock util reset the system .
7. After a successful login, the system displays this message"the system is open": 

Software used :
1- Port Driver
2- DIO Driver 
3- 4x20 LCD Driver 
4- Keypad driver
5- TWI Driver
6- External EEPROM Driver

Hardware Used
1- Atmega 32 micro controller
2- 4x20 LCD (CLCD) 
3- 4x4 Keypad
4-EXternal EEPROM "24c08"


