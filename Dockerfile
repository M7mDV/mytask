FROM alpine:latest


RUN apk add --no-cache g++ curl make

WORKDIR /app


COPY main.cpp .


RUN g++ main.cpp -o myserver -pthread


EXPOSE 8080


CMD ["./myserver"]
