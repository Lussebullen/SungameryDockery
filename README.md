# Build Image
docker build -t sungamimage .  

# Run Image
docker run --name sungamtest -d -i -t sungamimage /bin/sh

# Enter container in interactive shell
docker exec -it sungamtest sh