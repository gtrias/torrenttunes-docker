FROM java:8

WORKDIR /app

RUN \
    wget https://github.com/tchoulihan/torrenttunes-launcher/releases/download/1.0.0/torrenttunes-launcher.jar && \
    wget https://github.com/tchoulihan/torrenttunes-client/releases/download/0.7.8/torrenttunes-client.jar

EXPOSE 4568

ENTRYPOINT nohup java -jar torrenttunes-client.jar -nobrowser