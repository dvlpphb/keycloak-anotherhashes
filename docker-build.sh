#!/bin/bash

set -ex

docker run -it --rm --name keycloak-anotherhashes -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8.7 mvn clean package

echo "cp target/keycloak-anotherhashes-20.0.2.jar [your]/keycloak/deployments/"
#echo "cp target/keycloak-anotherhashes-20.0.2.jar ../../../dxp-services/keycloak/deployments/"
