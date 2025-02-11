#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPTDIR"

pushd kubernetes-api-1.25 && stack upload . && popd
pushd kubernetes-api-1.26 && stack upload . && popd
pushd kubernetes-api-1.27 && stack upload . && popd
pushd kubernetes-api-1.28 && stack upload . && popd
pushd kubernetes-api-1.29 && stack upload . && popd
pushd kubernetes-api-1.30 && stack upload . && popd
pushd kubernetes-api-1.31 && stack upload . && popd
pushd kubernetes-api-1.32 && stack upload . && popd
