# Use a minimal base image
FROM alpine:latest

# Install curl to download the file
RUN apk add --no-cache curl

# Download the .tar file from the hosting service
RUN curl -L -o /tmp/anisette_bak.tar https://drive.google.com/uc?export=download&id=1Lmzx0DEy7y6FNiCe7CECzLpDbTLbYbqS

# Load the tarball into Docker
RUN docker load -i /tmp/anisette_bak.tar

# Set the command to run the container
CMD ["sh", "-c", "docker run -d --restart always --name anisette_new -p 6969:6969 --volume anisette-v3_data:/home/Alcoholic/.config/anisette-v3/lib/ anisette_bak"]
