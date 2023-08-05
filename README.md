# Log_in
Hello everyone! Today, I am excited to share with you my latest project - a Login System that I developed in my journey for learning Embedded system. 🚀

Project Description:

During the first-time setup, the user is prompted to enter a password, and the system securely stores it in the EEPROM for future logins.  
Upon subsequent logins, the system will request the user to input their password using the 4x4 Keypad.  
The user can confidently type in their password on the keypad for authentication.  
If the entered password is correct, a successful login message is displayed on the 4x20 LCD screen.  
On the other hand, if an incorrect password is entered, the system displays a friendly "Wrong password" message.  
To enhance security, the user has a maximum of 3 attempts to enter the correct password. After the third attempt, the system locks down until it is reset.  
After a successful login, a warm message "The system is open" appears on the LCD.  

<h3> Software Used:</h3>

Port Driver     - To manage port configurations for various peripherals.  
DIO Driver      - For Digital Input/Output operations.  
4x20 LCD Driver - To control the 4x20 Character LCD.  
Keypad Driver   - For handling the input from the 4x4 Keypad.  
TWI Driver      - For Two-Wire Interface communication (I2C) with the External EEPROM.  
Ex-EEPROM Driver- To read and write data from/to the EEPROM "24c08".  

<h3> Hardware Used:</h3>

Atmega 32 Micro - The brain behind the operation.  
4x20 LCD (CLCD) - For clear and crisp display of messages.  
4x4 Keypad      - The user-friendly input interface.  
Ex-EEPROM       - To store and retrieve passwords securely.  




