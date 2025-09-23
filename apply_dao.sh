#!/bin/bash

envsubst < dao/sts.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < dao/ingress.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < dao/svc.yaml | kubectl -n $NAMESPACE apply -f -
envsubst < dao/svc_node_port.yaml | kubectl -n $NAMESPACE apply -f -
