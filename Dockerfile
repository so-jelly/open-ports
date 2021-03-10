FROM alpine:stable
RUN apk add --no-cache iproute2 bash
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]