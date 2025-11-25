
# Unreleased

## 0.6.1.2

* Support `hoauth2-2.15.0`.

## 0.6.1.1

* Update a CPP bound to fix compatibility with `hoauth2-2.7.0`.

## 0.6.1.0

* Depend on `crypton-connection` instead of `connection` no matter what, even for older GHCs. This will break compatibility with Stackage snapshots from the pre-GHC 9.6 era, but this seems important to do since `connection` is unmaintained, and itself depends on older versions of `tls` which lack some modernization/security improvements (like dropping TLS 1.0 and 1.1 support in version 2.0.0).

## 0.6.0.1

* Fix compatibility with `text-2.1.2`.
