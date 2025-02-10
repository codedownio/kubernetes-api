#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPTDIR"

# The first argument to the generate script is the Kubernetes release to use.
# The second is the package version to place in ./kubernetes-<K8S version>/kubernetes-api.cabal.

MAJOR_VERSION=0
MINOR_VERSION=0

# nix run .#generate -- 1.20 120.${MAJOR_VERSIONS}.${MINOR_VERSION}
# nix run .#generate -- 1.21 121.${MAJOR_VERSIONS}.${MINOR_VERSION}
# nix run .#generate -- 1.22 122.${MAJOR_VERSIONS}.${MINOR_VERSION}
# nix run .#generate -- 1.23 123.${MAJOR_VERSIONS}.${MINOR_VERSION}
# nix run .#generate -- 1.24 124.${MAJOR_VERSIONS}.${MINOR_VERSION}

# For initial Hackage publish, decided to start at 1.25.
# Versions <=1.24 are probably too old for anyone to be using, but we can revisit if anyone asks.

nix run .#generate -- 1.25 125.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.26 126.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.27 127.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.28 128.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.29 129.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.30 130.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.31 131.${MAJOR_VERSION}.${MINOR_VERSION}
nix run .#generate -- 1.32 132.${MAJOR_VERSION}.${MINOR_VERSION}
