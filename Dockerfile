FROM java:8

WORKDIR /app

RUN apt-get update -y && \
    apt-get install -y xvfb

ADD xvfb.init /etc/init.d/xvfb
RUN chmod +x /etc/init.d/xvfb
RUN update-rc.d xvfb defaults

RUN wget https://github.com/tchoulihan/torrenttunes-launcher/releases/download/1.0.0/torrenttunes-launcher.jar

ENTRYPOINT (service xvfb start; export DISPLAY=:10; nohup java -jar torrenttunes-launcher.jar)
