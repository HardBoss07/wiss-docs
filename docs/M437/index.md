# Modul 437 - Dienst mit Container anwenden

## Docker Erste Schritte

[Link zum Video](https://www.youtube.com/watch?v=e1BOFzxgQQY)

### Kernkonzepte & Befehle

| Begriff    | Erklärung                                                                      |
| ---------- | ------------------------------------------------------------------------------ |
| Dockerfile | Textdatei mit der Bauanleitung für eine Anwendung und deren Abhängigkeiten.    |
| Image      | Statisches Abbild des Dateisystems inklusive Anwendung und Laufzeitumgebung.   |
| Registry   | Zentrale Bibliothek zum Speichern und Bereitstellen von Images wie Docker Hub. |
| Container  | Isoliert laufende Instanz eines Images auf dem Kernel des Host-Systems.        |

| Befehl         | Funktion                                                        |
| -------------- | --------------------------------------------------------------- |
| `docker build` | Erstellt ein Image auf Basis der Vorgaben aus einem Dockerfile. |
| `docker push`  | Lädt ein lokal erstelltes Image in eine Registry hoch.          |
| `docker pull`  | Lädt ein Image aus einer Registry auf den Server herunter.      |
| `docker run`   | Startet einen neuen Container aus einem vorhandenen Image.      |

### Vorteile gegenüber Virtuellen Maschinen

- VMs benötigen ein eigenes Gast-Betriebssystem und einen Hypervisor, was mehr Ressourcen verbraucht und das Booten verlangsamt.
- Container teilen sich den Kernel des Host-Systems über Linux Namespaces.
- Sie sind leichtgewichtig, starten innerhalb weniger Sekunden und verhindern Konflikte durch isolierte Abhängigkeiten.

### Dockerfile Schritt für Schritt erklärt

1. **Build-Stage:** Kompiliert das Projekt und baut das JAR.
2. **Runtime-Stage:** Kopiert nur das fertige JAR in eine minimale Laufzeitumgebung (ohne Build-Tools, Maven oder Quellcode).

```dockerfile
# ==============================================================================
# STAGE 1: Build-Phase (Kompilierung & Artefakt-Erstellung)
# ==============================================================================
# Basiert auf einer vollwertigen JDK- & Maven-Umgebung zum Bauen der Anwendung.
# Wir vergeben den Namen "builder", um in späteren Stages darauf zugreifen zu können.
FROM maven:3.9-eclipse-temurin-21-alpine AS builder

# WORKDIR: Setzt das Arbeitsverzeichnis für alle nachfolgenden Befehle.
WORKDIR /app

# Dependency Caching: Kopiert zuerst nur die pom.xml und lädt die Abhängigkeiten herunter.
# Docker cached diesen Layer: Solange sich die pom.xml nicht ändert, wird 'mvn dependency:go-offline'
# beim nächsten Build nicht erneut ausgeführt, was enorme Zeit spart.
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Kopiert den eigentlichen Quellcode ins Arbeitsverzeichnis.
COPY src ./src

# Baut das Artefakt (JAR), überspringt Unit-Tests für schnelleres Bauen und bereinigt alte Builds.
RUN mvn clean package -DskipTests

# ==============================================================================
# STAGE 2: Runtime-Phase (Produktion & Ausführung)
# ==============================================================================
# Nutzt ein minimales, abgesichertes JRE-Image (Alpine Linux) ohne unnötige Ballast-Tools.
FROM eclipse-temurin:21-jre-alpine AS runner

WORKDIR /app

# Security Best Practice: Erstellt eine dedizierte System-Gruppe und einen unprivilegierten Benutzer.
# Standardmäßig laufen Container sonst als 'root', was ein Sicherheitsrisiko darstellt.
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# ARG & ENV: Parameter und Umgebungsvariablen definieren.
# ARG gilt nur während des Builds, ENV steht auch zur Laufzeit im Container bereit.
ARG PORT_ARG=8080
ENV PORT=${PORT_ARG} \
    JAVA_OPTS="-Xms256m -Xmx512m"

# COPY --from=builder: Kopiert NUR das fertige JAR aus der vorherigen 'builder'-Stage.
# Der Quellcode und die Maven-Build-Tools bleiben komplett in Stage 1 zurück.
COPY --from=builder /app/target/*.jar app.jar

# Ändert die Besitzerrechte der kopierten Datei auf unseren unprivilegierten Benutzer.
RUN chown appuser:appgroup app.jar

# Schaltet vom root-User auf den eingeschränkten 'appuser' um.
USER appuser

# EXPOSE: Dokumentiert den Port, über den der Container erreichbar sein soll.
EXPOSE ${PORT}

# HEALTHCHECK: Prüft in regelmäßigen Abständen, ob die Anwendung noch reagiert.
# Bricht der Healthcheck fehl, markiert Docker den Container als 'unhealthy'.
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost:${PORT}/actuator/health || exit 1

# ENTRYPOINT: Legt das primäre Start-Kommando fest (wird nicht leicht versehentlich überschrieben).
# Verwendet JSON-Array-Syntax (Exec Form), um Signale wie SIGTERM direkt an den Java-Prozess zu leiten (Graceful Shutdown).
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]

```

### Wichtige Konzepte in diesem Beispiel

- **Multi-Stage Builds:** Reduziert die finale Image-Größe drastisch (oft von über 800 MB auf unter 200 MB) und entfernt Angriffsflächen, da Compiler und Quellcode nicht im finalen Image landen.
- **Layer-Caching (Pom-First Trick):** Indem `pom.xml` separat vor `src/` kopiert wird, müssen Maven-Abhängigkeiten nicht bei jeder Codeänderung neu heruntergeladen werden.
- **Non-Root User:** Führt den Container aus Sicherheitsgründen mit eingeschränkten Rechten (`appuser`) aus.
- **Healthcheck:** Ermöglicht Orchestrierungstools (wie Docker Compose, Swarm oder Kubernetes) festzustellen, ob die Anwendung tatsächlich einsatzbereit ist.

## Docker-1 Aufgabe mit Webserver Apache und PHP

[Link zur Dockerfile](./aufgabe1/Dockerfile)

**Befehle zum Bauen und Starten:**

```bash
docker build -t php-apache-app .
docker run -d -p 8080:80 --name my-php-app php-apache-app
```

[Link zur ApacheWithPHP Dockerfile](./aufgabe1/ApacheWithPHP)

**Befehle zum Bauen und Starten:**

```bash
docker build -f ApacheWithPHP -t apache-with-php .
docker run -d -p 82:82 --name my-apache-82 apache-with-php
```

## Docker-2 Aufgabe mit Webserver Apache und PHP

### 1. PHP mit Docker starten

[Link zum index.php](./aufgabe2/teilaufgabe1/index.php)

**Befehl zum Starten**

```bash
docker run -d -p 8080:80 -v $(pwd)/aufgabe2/teilaufgabe1:/var/www/html --name php-task1 php:8.3-apache
```

### 2. PHP-Dateien per Volume einbinden

[Link zum index.php](./aufgabe2/teilaufgabe2/index.php)

**Befehl zum Starten**

```bash
docker run -d -p 8081:80 -v $(pwd)/aufgabe2/teilaufgabe2:/var/www/html --name php-task2 php:8.3-apache
```

- URL: http://localhost:8081

### 3. Eigenes PHP-Image mit Dockerfile

[Link zum Dockerfile](./aufgabe2/teilaufgabe3/Dockerfile)
[Link zum index.php](./aufgabe2/teilaufgabe3/index.php)

**Befehle zum Bauen und Starten:**

```bash
cd aufgabe2/teilaufgabe3
docker build -t custom-php-app .
docker run -d -p 8082:80 --name php-task3 custom-php-app
```

- URL: http://localhost:8082

### 4. PHP + MySQL mit Docker Compose

[Link zum Dockerfile](./aufgabe2/teilaufgabe4/Dockerfile)
[Link zum index.php](./aufgabe2/teilaufgabe4/index.php)
[Link zum docker-compose.yml](./aufgabe2/teilaufgabe4/docker-compose.yml)

```bash
cd ./aufgabe2/teilaufgabe4
docker compose up -d --build
```

- URL: http://localhost:8083

### 5. Kleine PHP-Docker-Anwendung bauen

[Link zum Dockerfile](./aufgabe2/teilaufgabe5/Dockerfile)
[Link zum index.php](./aufgabe2/teilaufgabe5/src/index.php)
[Link zum docker-compose.yml](./aufgabe2/teilaufgabe5/docker-compose.yml)

```bash
cd aufgabe2/teilaufgabe5
docker compose up -d --build
```

- URL: http://localhost:8084
