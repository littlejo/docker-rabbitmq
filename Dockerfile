FROM rabbitmq:3

ADD start.sh erl_inetrc /
#ENTRYPOINT ['/bin/sh', '/start.sh']

