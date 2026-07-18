FROM python:3.13-slim

RUN apt update -y && apt upgrade -y

WORKDIR /app

COPY requirements.txt .

RUN pip install requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3" , "app.py" ]