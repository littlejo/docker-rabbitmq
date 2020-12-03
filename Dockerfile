FROM rabbitmq:3

ENV ERL_INETRC=/erl_inetrc 
ENV RABBITMQ_HOSTNAME=littlejo

ADD start.sh erl_inetrc /
ENTRYPOINT ["/bin/sh", "/start.sh"]

