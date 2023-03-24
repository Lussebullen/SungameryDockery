# Build Image
build:
	docker build -t sungamimage .  

# Run Image
run:
#   Copy the below code and run in your terminal
#	docker run -d -it --name sungamtest --mount type=bind,source="$(pwd)",target=/app/code sungamimage

# Enter container in interactive shell
sh:
	docker exec -it sungamtest sh