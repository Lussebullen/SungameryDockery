FROM python:3.6.15

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install build-essential cmake --no-install-recommends --yes

RUN ./setup.sh

EXPOSE 3000