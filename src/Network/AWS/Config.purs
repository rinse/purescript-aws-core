module Network.AWS.Config
    ( AWSConfig
    , Options
    , PromisesDependency
    , getConfig
    , getPromisesDependency
    , loadConfigFromPath
    , updateConfig
    , setPromisesDependency
    ) where

import Prelude

import Effect      (Effect)
import Network.AWS (AWS)
import Node.Path   (FilePath)


foreign import data AWSConfig :: Type
foreign import data PromisesDependency :: Type
foreign import getConfig :: AWS -> AWSConfig
foreign import getPromisesDependency :: Effect PromisesDependency
foreign import loadConfigFromPath :: FilePath -> Effect AWSConfig
foreign import updateConfig :: forall rs. Options rs -> Effect Unit
foreign import setPromisesDependency :: PromisesDependency -> Effect Unit

type Options rs = { | rs }
