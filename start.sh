#!/bin/sh

echo "127.0.0.1 $RABBITMQ_HOSTNAME" > /etc/hosts-rabbitmq
echo "NODENAME=rabbit@$RABBITMQ_HOSTNAME" > /etc/rabbitmq/rabbitmq-env.conf
echo "CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf" >> /etc/rabbitmq/rabbitmq-env.conf
echo "cluster_name = rabbit@$RABBITMQ_HOSTNAME" > /etc/rabbitmq/rabbitmq.conf

/usr/local/bin/docker-entrypoint.sh rabbitmq-server
