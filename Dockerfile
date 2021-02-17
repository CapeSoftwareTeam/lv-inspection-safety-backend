FROM maven:onbuild AS buildenv
FROM openjdk:8-jre-alpine as target
WORKDIR '/capeelectric'
VOLUME /tmp
COPY --from=buildenv target/LV-Safety-Verification-0.0.1-SNAPSHOT.jar LV-Safety-Verification-0.0.1-SNAPSHOT.jar
EXPOSE 8086
ENTRYPOINT ["java", "-jar","LV-Safety-Verification-0.0.1-SNAPSHOT.jar"]