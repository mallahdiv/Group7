FOR GROUP 7 GROUP PROJECT SCRIPT (8.17.22) RE NEW USER SETUP & ONBOARDING

Thank you for your interest in our New User On-boarding bash script/program. This project was made possible by Kura Labs, Cohort 3 and it is the product of collaborative efforts of the following Cohort 3 members: Michael Blasse, Mallah Divine, Jamari Kelly, Michael Major, and Colin Mattis. This program was initially created on August 16, 2022 and is provided subject to a standard open source license. 

Purpose: 
This script solves the problem of a team where there is a new member and they need to be on-boarded into the system and get up to speed with team information/skills.

Features:
This program will create a new user, collect select information from the new user, sends (1) an email to the user containing a link to a team github repository with applicable team on-boarding documentation and resources; and (2) a log file containing the new user’s collected information to an HR directory on the organization’s server. 

To run the program:
1)Open a terminal
2)Navigate to the directory where the program .sh file is located/saved
3)Input the following into the Command Line: ./newuser.sh 
4)Press enter
5)(The program will run) provide inputs responses when prompted on the screen.
 
Bugs:
Please do not take any of the following actions, which will render the program inoperable or otherwise cause a poor user experience:
1) For the input re Date of Birth, the script contemplates MMDDYYYY, which is open to human error by using a different format for their input.. 
2) For the input re Emergency Contact, the script contemplates only a phone number, which is open to human error and users may attempt to input other contact information (e.g. names, addresses, relationships, etc).

Areas for further development:
1) We did discuss adding a user verification/authentication security measure after the new user is created. However, we determined that this would be case by case checked against some data unique to the organization and also unreasonably expand the scope of the script, and thus, we did not explore this further. 
2) There can be further customization of the GitHub pre-populated documentation for the user’s on-boarding experience. 
3) Currently, the user is given an onscreen link to copy-paste into a web browser to then access the onboarding repository. In the future, the script could directly provide access to the contents of the onboarding repository. 
4) Currently, the file that contains the users inputs, which is meant to be a resource log for the organization's HR department, is currently saved to a local directory, in the future, this file should be sent to a designated remote HR dirctory/location.
