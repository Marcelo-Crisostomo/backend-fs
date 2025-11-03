# Usa una imagen liviana de Java 17
FROM eclipse-temurin:17-jdk-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el jar generado al contenedor
COPY target/*.jar app.jar

# Expone el puerto (Render usa el 10000 internamente)
EXPOSE 8080

# Comando para ejecutar el jar
ENTRYPOINT ["java", "-jar", "app.jar"]
