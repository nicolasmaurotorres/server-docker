FROM mongo:3.4
COPY seed-data.js /docker-entrypoint-initdb.d/