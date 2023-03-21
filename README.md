# Build Image
docker build -t sungamimage .  

# Run Image
docker run -d -it --name sungamtest --mount type=bind,source="$(pwd)",target=/app sungamimage

# Enter container in interactive shell
docker exec -it sungamtest sh