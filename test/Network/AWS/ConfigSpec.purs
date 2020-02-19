module Test.Network.AWS.ConfigSpec (spec) where

import Prelude

import Control.Monad.Error.Class (catchError)
import Effect.Class              (liftEffect)
import Effect.Exception          (message)
import Network.AWS.Config        (getPromisesDependency, loadConfigFromPath,
                                  setPromisesDependency, updateConfig)
import Test.Spec                 (Spec, describe, it)
import Test.Spec.Assertions      (shouldEqual)


spec :: Spec Unit
spec = do
    describe "getPromisesDependency" $
        it "is bound to `AWS.config.getPromisesDependency`" $
            void $ liftEffect getPromisesDependency

    describe "updateConfig" $
        it "is bound to `AWS.config.update`" $
            liftEffect $ updateConfig {}

    describe "loadConfigFromPath" $
        it "is bound to `AWS.config.loadFromPath`" $ do
            let errorMessage = "ENOENT: no such file or directory, open '/path/to/config.json'"
            catchError (
                void $ liftEffect $ loadConfigFromPath "/path/to/config.json"
            ) (message >>> shouldEqual errorMessage)

    describe "setPromisesDependency" $
        it "is bound to `AWS.config.setPromisesDependency`" $
            liftEffect $ getPromisesDependency >>= setPromisesDependency
