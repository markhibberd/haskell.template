module PROJECT_NAMESPACE.Tests
  (
    main
  , test
  ) where

import Test.Framework
import Test.Framework.Providers.QuickCheck2 (testProperty)
import PROJECT_NAMESPACE

main ::
  IO ()
main =
  defaultMain [test]

test ::
  Test
test =
    testGroup "PROJECT_NAMESPACE"
      [
        testProperty "Identity" prop_identity
      ]

prop_identity ::
  Int
  -> Bool
prop_identity n =
  bletch n == n

