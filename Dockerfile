FROM python:3.8

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'\
    apt-get -y update
#update and installing Google Chrome
RUN apt update
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

RUN apt install wget
RUN apt-get install -y google-chrome-stable
RUN apt-get install -f

#download and installing Chromedriver
RUN apt-get install -yqq unzip

RUN wget https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_linux64.zip

RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /usr/bin/chromedriver\
   && chown root:root /usr/bin/chromedriver\
   && chmod +x /usr/bin/chromedriver

ENV DISPLAY=:99


COPY . /app
WORKDIR /app

RUN pip install --upgrade pip

#installing requirements
RUN pip install -r requirements.txt

CMD ["python", "./net_connect.py"]