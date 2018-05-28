{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Spock
import Web.Spock.Config

import Data.Aeson hiding (json)
import Data.Monoid ((<>))
import Data.Text (Text, pack)
import GHC.Generics

data Person = Person
  { name :: Text
    , age :: Int
  } deriving (Generic, Show)

instance ToJSON Person
instance FromJSON Person

main :: IO ()
main = do
  putStrLn "hello world"