<img src="images/iThermai.png">

#  iThermAI
#  Code Report

**Code: net_connect.py**

**Written by: Mohammadreza Babaei mosleh**

**Start Date: 22 - 8 - 1**

**Last Update: 22 - 8 - 1**

**Reviewer: <reviewer name>**

**Last Review Date: <last review date>**

#  Abstract
This code helps your device(or server) in connecting to the internet without any graphical interface it is useful when you are working with a server and you do not have any graphical access

# installation
if you want to use this script u can just build a docker image 
you have to just make and run a docker image
but, if you want to use the specific command you can use the below commands
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install wget
sudo apt-get install -y google-chrome-stable
sudoapt-get install -f
sudo apt-get install -yqq unzip
wget https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
```
## note
when you want to download the chromedriver using this command 
```bash
wget https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_linux64.zip
```
you have to make sure that you are downloading the version that is compatible with your chrome installed in the previous steps
you can check the version by the below command
```bash
google-chrome --version
```
check for chromedriver versions from this [Link](https://chromedriver.chromium.org/downloads)
## test
test that every thing is ok by running the command below
```bash 
chromedriver --url-base=/wd/hub

#  How to Use
and edit code by putting your valid username and password in their variables
If you are using docker image just use this command:
```bash
docker build -t <image name>
docker run <image name>
```
If you are using python script and you have set up your system(using the commands mentioned)just use this command
```bash
python net_connect.py
```
##  Input
it does not need any input, you just have to prepare requirements and run it 
##  Output
after that code runs successfully you(or your server) are connected to the internet

##  Sample Usage
you just need to run the script or the docker file

#  Description
this code is developed because almost in all dataset tasks you have to download files and it will have lots of internet usage so it is better to connect to the server and use its internet. 
as you know when you are working with the server you do not have graphical access so you need a script that can connect you to the internet without any graphical interface. considering this script needs lots of installations and setups we have prepared a docker file that can solve all the problems just with a single command. 
