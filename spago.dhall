{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-aws-core"
, dependencies = [ "console", "effect", "psci-support", "spec-discovery" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
