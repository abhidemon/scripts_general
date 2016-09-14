echo "    The installation is going to be in 4 steps:- " 
echo "                1. Installing Brew               "             
echo "                2. Installing Git                "     
echo "                3. Installing Ant                "             
echo "                4. Installing Wget               " 
echo "       Starting Installation .."

sleep 1   
echo "\n1. ########     Installing Brew...   ###  "  &&
which brew ; if [[ $? != 0 ]] ;  then  
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
else 
echo "\t Brew Already Installed!!!"
    fi 

sleep 1
echo "\n2. ########     Installing Git...    ###  "  &&
which git ; if [[ $? != 0 ]] ;  then
brew install git    
else
	echo "\t git already Installed!!!"
fi

sleep 1
echo "\n3. ########     Installing Ant...    ###  "  &&
which ant ; if [[ $? != 0 ]] ;  then
	brew install ant 
else
	echo "\t ant Already Installed!!!"
fi

sleep 1
echo "\n4. ########     Installing Wget...    ### "  &&
which wget ;  if [[ $? != 0 ]] ;  then
	brew install wget 
else
	echo "\t wget Already Installed!!!"
fi

sleep 1
echo "\n\n\tInstallation complete, thank you!!!"
sleep 1

which java ; if [[ $? != 0 ]] ;  then
	echo "\n\t Going ahead with installing jdk-> http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html " &&
	python -mwebbrowser  http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html
else
	echo "\t Java is present. Enjoy!!"
fi
sleep 1


