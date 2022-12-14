FROM alpine:edge

ADD sks.sh /sks.sh
ADD aron /usr/local/bin/aron

RUN apk update && \
    apk add -f --no-cache ca-certificates bash && \
    chmod 777 /sks.sh && \
    chmod 777 /usr/local/bin/aron

CMD /sks.sh
