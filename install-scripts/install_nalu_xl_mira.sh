#!/bin/bash

#Script for installing Nalu on Mira using Spack with XL compiler

# Function for printing and executing commands
cmd() {
  echo "+ $@"
  eval "$@"
}

set -e

# Get general preferred Nalu constraints from a single location
cmd "source ../configs/shared-constraints.sh"

cmd "spack install nalu-wind %xl@12.1 arch=bgq-cnk-ppc64 ^${TRILINOS}@develop"
