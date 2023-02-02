FROM debian:11.6-slim
WORKDIR /opt/wpp
CMD ["./demo"]
EXPOSE 5000
COPY . .
RUN apt update \
	&& apt install -y build-essential \
	&& make \
	&& apt purge -y build-essential \
	&& apt autoremove -y
