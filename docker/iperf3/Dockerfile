
FROM alpine:latest
LABEL maintainer="gabriel"

RUN apk --update add iperf3

EXPOSE 5201
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]