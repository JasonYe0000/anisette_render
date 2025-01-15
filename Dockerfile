CMD ["sh", "-c", "docker run -d -v ${PWD}/provision_config:/home/Chester/.config/Provision/ --restart=always -p 6969:6969 --name anisette dadoum/anisette-server:latest"]
