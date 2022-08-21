# login script

## Installation

if you want to use this script u can just build a docker image 
you have to just make and run a docker image
but, if you wnat to use specific command you can use bellow commands
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
when you want to download chromedriver using this command 
```bash
wget https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_linux64.zip
```
you have to make shur that you are downloading the version that is compatible with your chrome installaed in previous steps
you can check the version by bellow command
```bash
google-chrome --version
```
check for chromedriver versions from this [Link](https://chromedriver.chromium.org/downloads)
## test
test that every thing is ok by running command below
```bash 
chromedriver --url-base=/wd/hub
```
## How To Use
first of all before you make a docker image go to python script and edit code by putting your valid username and password in their variables
If you are using docker image just use this command:
```bash
docker build -t <image name>
docker run <image name>
```
If you are using python script and you have setted up your system(using commands mentioned)just use this command
```bash
python net_connect.py
```
