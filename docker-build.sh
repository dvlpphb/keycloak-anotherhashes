#!/bin/bash

set -ex

KEYCLOAK_VERSION="21.1.1"

docker run -it --rm --name keycloak-anotherhashes -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8.7 mvn clean package

echo "cp target/keycloak-anotherhashes-${KEYCLOAK_VERSION}.jar [your]/keycloak/deployments/"
#echo "cp target/keycloak-anotherhashes-${KEYCLOAK_VERSION}.jar ../../../dxp-services/keycloak/deployments/"
