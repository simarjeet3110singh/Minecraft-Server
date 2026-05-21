FROM eclipse-temurin:21-jre

WORKDIR /server

RUN apt-get update && apt-get install -y wget

RUN wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/130/downloads/paper-1.21.1-130.jar -O server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms511M", "-Xmx511M", "-jar", "server.jar", "--nogui"]
