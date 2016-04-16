FROM java:8

WORKDIR /app

RUN \
    wget https://github.com/tchoulihan/torrenttunes-client/releases/download/0.7.8/torrenttunes-client.jar

ENTRYPOINT nohup java -jar torrenttunes-client.jar
