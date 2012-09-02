module Main where

import qualified PROJECT_NAMESPACE.Tests
import Test.Framework

main ::
  IO ()
main = 
  defaultMain tests 

tests ::
  [Test]
tests =
  [
    testGroup "Tests"
      [
        PROJECT_NAMESPACE.Tests.test
      ]
  ]

