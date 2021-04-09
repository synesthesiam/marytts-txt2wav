FROM openjdk:8

COPY build.gradle gradlew settings.gradle /build/
COPY gradle/ /build/gradle/
COPY src/ build/src/

RUN cd /build && ./gradlew shadowJar