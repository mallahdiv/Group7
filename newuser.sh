#!/bin/bash -
#title          :newuser.sh
#description    :This script is to create a user profile and onboard them
#author         :Mallah-Divine, Michael, Jamari, Colin, Major
#date           :08162022
#version        :1.0
#usage          :./newuser.sh
#notes          : 
#bash_version   :5.1.16(1)-release
#============================================================================

#Contributor: Michael Blasse

#These lines contain the various different formats for most fields written
#as regular expressions

emailFormat="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"

ageFormat='^[0-9]{2}+$'

phoneNoFormat="^\+[0-9]+\s\([0-9]{3}\)+\s[0-9]{3}+-[0-9]{4}+$"

dateFormat='^[0][0-9]|[1][0-2]/[0-2][0-9]|[3][01]/[0-9]{4}+$'

#==================================================================#
#Prints out a simple greeting to the user when first opened

echo "
Welcome new user. Thank you for joining our organization!:D "

echo "
You're on way to becoming an important part of our group! But first we'll need some info"

echo " "
#==================================================================#

#Accepts the user's input
read -p "Please Enter your first name: " firstName

#Compares the user's input to the regular expression
if [[ $firstName =~ ^[a-zA-Z]+$ ]]

#^This in particular checks if the user only uses characters within the
#alphabet

then

#v Should the statement return true the a file is created
printf "$firstName 's Profile \nFirst Name: $firstName" > ~/Desktop/$firstName"_HRProfile.txt"
else

# Should the statement return false the user will be prompted again
#Note this prompt only occurs once and currently has no verification.
#Thus errors can still be entered.
#v
read -p "Invalid name. Ensure no special characters,numbers or spaces are used: " firstName
printf "$firstName 's Profile \nFirst Name: $firstName" > ~/Desktop/$$firstName"_HRProfile.txt"
fi

#The structure is repeated below. However the variable and format changes
#according to the required input
#v
read -p "Please Enter your last name: " lastName
if [[ $lastName =~ ^[a-zA-Z]+$ ]]
then
printf "\nLast Name: $lastName" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "Invalid name. Ensure no special characters or numbers are used: " lastName
printf "\nLast Name: $lastName" >> ~/Desktop/$firstName"_HRProfile.txt"
fi


read -p "Please Enter your age: " Age
if [[ $Age =~ $ageFormat ]]
then
printf "\nAge: $Age" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "Age out of range. Please try ensure age is < 100: " Age
printf "\nAge: $Age" >> ~/Desktop/$firstName"_HRProfile.txt"
fi

#This prompts the user
PS3="Please select your gender via the corresponding number: "

#Stores the list of options in an array
options=("Male" "Female" "Other")

#Cycles loops through the options where the variable $opt corresponds to the
#value's index number within the array
select opt in "${options[@]}"
 do

#Display the various outcomes of the values that match the chosen $opt value
case $opt in
   "Male")
  Gender=$opt
printf "\nGender: $Gender" >> ~/Desktop/$firstName"_HRProfile.txt"
break
;;
   "Female")
printf "\nGender: $Gender" >> ~/Desktop/$firstName"_HRProfile.txt"
  Gender=$opt
break
;;
 "Other")
  read -p "Please Specify: " NonbinaryOpt
printf "\nNonbinaryOpt: $Gender" >> ~/Desktop/$firstName"_HRProfile.txt"
break
;;

#Should the user sleect an invalid option, they will be prompted to 
#re-select. This will continue to loop until a valid option is chosen
*) 
read -p "Please select your gender; 1 for male, 2 for female, 3 for Other " 
esac
done

#The following follows a similar structure to the first 3 segments of code.
#Adapted for different variables and formats.
#V
read -p "Please Enter your Date of Birth MM/DD/YYYY: "  DOB
if [[ $DOB =~ $dateFormat ]]
then
printf "\nDate of Birth: $DOB" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "Invalid date.Use the format mm/dd/yyy: " DOB
printf "\nDate of Birth: $DOB" >> ~/Desktop/$firstName"_HRProfile.txt"
fi

read -p "Please Enter your address: "  Address
printf "\nAdress: $Address" >> ~/Desktop/$firstName"_HRProfile.txt"

read -p "Please Enter your Email: "  Email
if [[ $Email =~ $emailFormat ]]
then
printf "\nEmail: $Email" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "Invalid Email.Please enter in the format example@email.com: " Email
printf "\nEmail: $Email" >> ~/Desktop/$firstName"_HRProfile.txt"
fi

read -p "Enter Mobile number: " mobNo
if [[ $mobNo =~ $phoneNoFormat ]]
then
printf "\nMobile Number: $mobNo" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "I'm sorry please enter your number in the format +x (xxx) xxx-xxxx: " homNo
printf "\nMobile Number: $mobNo" >> ~/Desktop/$firstName"_HRProfile.txt"
fi

read -p "Enter Home number: " homNo
if [[ $homNo =~ $phoneNoFormat ]]
then
printf "\nHome Number: $homNo" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "I'm sorry please enter your number in the format +x (xxx) xxx-xxxx: " homNo
printf "\nHome Number: $homNo" >> ~/Desktop/$firstName"_HRProfile.txt"
fi

read -p "Please enter emergency contact phone number: " EmerNo
if [[ $EmerNo =~ $phoneNoFormat ]]
then
printf "\nEmergency Contact: $EmerNo" >> ~/Desktop/$firstName"_HRProfile.txt"
else
read -p "I'm sorry please enter your number in the format +x (xxx) xxx-xxxx: " EmerNo
printf "\nEmergency Contact: $EmerNo\n" >> ~/Desktop/$firstName"_HRProfile.txt"
fi
#-=========================================================================-#

# this part of the script will then notify us that a new user has been created by sending an email - jamari
echo “$firstName, is the new user, profile sucessfully created” | mail -s “this is the subject” jamarikelly2816@gmail.com


