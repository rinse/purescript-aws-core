module Network.AWS (AWS , aws) where

import Effect (Effect)


foreign import data AWS :: Type
foreign import aws :: Effect AWS
