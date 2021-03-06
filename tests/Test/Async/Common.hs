{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE FlexibleContexts #-}
module Test.Async.Common
  ( value
  , TestException(..)
  , module X
  ) where

import Data.Typeable

import Control.Exception.Lifted
import Test.Tasty as X
import Test.Tasty.HUnit as X
import Test.Tasty.TH as X

value :: Int
value = 42

data TestException = TestException
  deriving (Eq, Show, Typeable)

instance Exception TestException
