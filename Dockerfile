FROM python:3.6.15

WORKDIR /app

# COPY requirements.txt requirements.txt
COPY . .

RUN apt-get update && apt-get install build-essential cmake --no-install-recommends --yes

RUN ./setup.sh

# RUN pip3 install -r requirements.txt
EXPOSE 3000