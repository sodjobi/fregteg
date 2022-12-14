FROM alpine:edge

ADD ereg.sh /ereg.sh
ADD joten /usr/local/bin/joten

RUN apk update && \
    apk add -f --no-cache ca-certificates bash && \
    chmod 777 /ereg.sh && \
    chmod 777 /usr/local/bin/joten

CMD /ereg.sh
