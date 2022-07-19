FROM openjdk:11
RUN useradd -ms /bin/bash user2
RUN usermod -aG sudo user2
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN mkdir /home/user2/workbuild1
WORKDIR /home/user2/workbuild1
COPY target/BatBat-Game-1.0-SNAPSHOT.jar /home/user2/workbuild1
EXPOSE 8080
CMD ["java", "-jar", "BatBat-Game-1.0-SNAPSHOT.jar"]

