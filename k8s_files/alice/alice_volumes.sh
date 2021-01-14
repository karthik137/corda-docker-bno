#!/bin/bash


### Create alice config
kubectl create secret generic alice-config --from-file=./participants/alice/node.conf --from-file=./shared/network-parameters --from-file=./logs/alice


### Create alice keystore (node-certificates)
kubectl create secret generic alice-keystore --from-file=./participants/alice/certificates/truststore.jks --from-file=./participants/alice/certificates/sslkeystore.jks  --from-file=./participants/alice/certificates/nodekeystore.jks


### Create alice-additional-node-infos
kubectl create secret generic alice-additional-node-infos --from-file=./shared/infos/nodeInfo-54E6D85328A2E61FE861CB8D924A643C812CBD742827CC671B892971AF52FD13 --from-file=./shared/infos/nodeInfo-DC3E651B8318FDB75C4A32571615E5A21BE7A825896B127467A7E996C8051A0E --from-file=./shared/infos/nodeInfo-8883A655DC760F49000ABFA87AAE00BF3A79FBBFB795C24A178FF5BD74FBA524  --from-file=./shared/infos/nodeInfo-00D21027AA43D173F9018ABEAD91591CB3946E2F7F30199D6E1F9AA87FBB7214   


### Create alice-cordapps
kubectl create secret generic alice-cordapps --from-file=./shared/cordapps/membership-service-1.0.jar 
kubectl create secret generic alice-cordapps-mem --from-file=./shared/cordapps/membership-service-2.0.jar --from-file=./shared/cordapps/membership-service-contracts-and-states-1.0.jar 
kubectl create secret generic alice-cordapps-state-contract --from-file=./shared/cordapps/membership-service-contracts-and-states-2.0.jar 
kubectl create secret generic alice-cordapps-app --from-file=./shared/cordapps/ping-pong-0.1.jar
kubectl create secret generic alice-cordapps-app-config --from-file=./shared/membership-service-member.conf
