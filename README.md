# Kubernetes Haskell Client

[![CI](https://github.com/codedownio/kubernetes-api/actions/workflows/ci.yml/badge.svg)](https://github.com/codedownio/kubernetes-api/actions/workflows/ci.yml)

Haskell client for the [kubernetes](http://kubernetes.io/) API.

This was forked from https://github.com/kubernetes-client/haskell/, in order to improve the OpenAPI generation code to generate a version for each Kubernetes release and update each to Hackage.

The `kubernetes-api-*` folders contain the OpenAPI-generated libraries generated for each Kubernetes version. The `kubernetes-api-client` folder contains the handwritten client library.

Currently, we generate the `kubernetes-api-*` packages from Kubernetes version 1.25 to 1.32. These are released on Hackage where version 1.25 is version `125.x.x`, 1.26 is `126.x.x`, and so on. This scheme was chosen so that we can do both major and minor version updates, if necessary.

When using this, you will probably want to specify the Kubernetes version in your `.cabal` file to match the version of your cluster. I.e., if you cluster is on Kubernetes 1.30, then

``` bash
  build-depends:
    ...
    , kubernetes-api >=130 && <131
```

# Development

## Update client

To regenerate all `kubernetes-api-*` versions, run `./generate_all.sh`. You need to have [Nix](https://nixos.org/) installed.
