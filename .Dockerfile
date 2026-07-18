FROM ubuntu:22.04

RUN apt update -y && apt upgrade -y

RUN apt install -y git

RUN git config --global user.name "yosefzaher"
RUN git config --global user.email "zaheryosef72@gmail.com"

WORKDIR /app

RUN git clone https://github.com/yosefzaher/Simple-Flask-App-Containerization-Docker-.git

WORKDIR ./Simple-Flask-App-Containerization-Docker-

RUN apt install -y python3
RUN apt install -y pip    

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3" , "app.py" ] 