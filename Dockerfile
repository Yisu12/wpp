FROM debian:11.6
WORKDIR /opt/wpp
CMD ["./demo"]
EXPOSE 5000
RUN apt update
RUN apt install -y build-essential
COPY . .
RUN make
