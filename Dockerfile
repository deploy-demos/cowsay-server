FROM ubuntu:16.04
RUN apt update && apt install -y cowsay
RUN apt install -y golang
ADD . /app/
RUN cd /app; go build -o server main.go
ENTRYPOINT ["/app/server"]
