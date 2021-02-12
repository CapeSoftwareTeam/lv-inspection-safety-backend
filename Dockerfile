FROM maven:onbuild AS buildenv

FROM openjdk:8-jre-alpine as target

VOLUME /tmp
EXPOSE 10555
COPY --from=buildenv target/LV-Safety-Verification-0.0.1-SNAPSHOT.jar LV-Safety-Verification-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar",'LV-Safety-Verification-0.0.1-SNAPSHOT.jar"]