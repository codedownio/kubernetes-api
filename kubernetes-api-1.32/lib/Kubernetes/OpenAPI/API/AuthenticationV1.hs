{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.32
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.AuthenticationV1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.AuthenticationV1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** AuthenticationV1

-- *** createSelfSubjectReview

-- | @POST \/apis\/authentication.k8s.io\/v1\/selfsubjectreviews@
-- 
-- create a SelfSubjectReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createSelfSubjectReview
  :: (Consumes CreateSelfSubjectReview contentType, MimeRender contentType V1SelfSubjectReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1SelfSubjectReview -- ^ "body"
  -> KubernetesRequest CreateSelfSubjectReview contentType V1SelfSubjectReview accept
createSelfSubjectReview _  _ body =
  _mkRequest "POST" ["/apis/authentication.k8s.io/v1/selfsubjectreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateSelfSubjectReview 
instance HasBodyParam CreateSelfSubjectReview V1SelfSubjectReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateSelfSubjectReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateSelfSubjectReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default in v1.23+ - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateSelfSubjectReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam CreateSelfSubjectReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateSelfSubjectReview mtype

-- | @application/json@
instance Produces CreateSelfSubjectReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateSelfSubjectReview MimeVndKubernetesProtobuf
-- | @application/cbor@
instance Produces CreateSelfSubjectReview MimeCbor
-- | @application/yaml@
instance Produces CreateSelfSubjectReview MimeYaml


-- *** createTokenReview

-- | @POST \/apis\/authentication.k8s.io\/v1\/tokenreviews@
-- 
-- create a TokenReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createTokenReview
  :: (Consumes CreateTokenReview contentType, MimeRender contentType V1TokenReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1TokenReview -- ^ "body"
  -> KubernetesRequest CreateTokenReview contentType V1TokenReview accept
createTokenReview _  _ body =
  _mkRequest "POST" ["/apis/authentication.k8s.io/v1/tokenreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateTokenReview 
instance HasBodyParam CreateTokenReview V1TokenReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateTokenReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateTokenReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default in v1.23+ - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateTokenReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam CreateTokenReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateTokenReview mtype

-- | @application/json@
instance Produces CreateTokenReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateTokenReview MimeVndKubernetesProtobuf
-- | @application/cbor@
instance Produces CreateTokenReview MimeCbor
-- | @application/yaml@
instance Produces CreateTokenReview MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/authentication.k8s.io\/v1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/authentication.k8s.io/v1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/cbor@
instance Produces GetAPIResources MimeCbor
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml

