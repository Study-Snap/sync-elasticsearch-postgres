# Logstash image that we will be using for postgres
FROM docker.elastic.co/logstash/logstash:7.11.1

# Download JDBC connector for Logstash
WORKDIR /usr/share/logstash/logstash-core/lib/jars
RUN curl -o ./postgres-jdbc-driver-4.2.jar https://jdbc.postgresql.org/download/postgresql-42.2.19.jar
RUN chmod 755 ./postgres-jdbc-driver-4.2.jar

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint" ]