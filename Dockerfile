FROM amazoncorretto:17
COPY ./target/spring-boot-admin.jar /app/
WORKDIR /app
EXPOSE 8080
EXPOSE 8081
ENV JVM_OPTS="-Xss256k -XX:MaxRAMPercentage=80.0 -Djava.security.egd=file:/dev/./urandom"
ENV JAVA_OPTS=""
ENV APP_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JVM_OPTS $JAVA_OPTS -jar spring-boot-admin.jar $APP_OPTS" ]