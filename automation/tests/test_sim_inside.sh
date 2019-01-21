#!/bin/bash

function error() {
  echo -e "\e[0;33mERROR: Provisioning if the simulation failed while running the command $BASH_COMMAND at line $BASH_LINENO.\e[0m" >&2
  exit 1
}

trap error ERR

cd ./automation

set -e
set -x

# Enable Colored Output when Running Ansible in the CI pipeline
export ANSIBLE_FORCE_COLOR=true

echo "### Running Test Playbooks... ###"
ansible-playbook ./netq_verify.yml

