# 1. Usamos una imagen base que soporte Java 17
FROM eclipse-temurin:17-jdk-alpine

  # 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

  # 3. Copiar el JAR.
  # IMPORTANTE: Asegúrate de que el nombre del archivo coincida con el que está en tu carpeta target.
COPY target/lab3v-0.0.1-SNAPSHOT.jar app.jar

  # 4. Exponer el puerto (Coincide con tu log anterior que decía 8089)
EXPOSE 8089

  # 5. Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]