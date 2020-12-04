#!/bin/sh

echo "127.0.0.1 $RABBITMQ_HOSTNAME" > /etc/hosts-rabbitmq
echo "NODENAME=rabbit@$RABBITMQ_HOSTNAME" > /etc/rabbitmq/rabbitmq-env.conf

/usr/local/bin/docker-entrypoint.sh rabbitmq-server
