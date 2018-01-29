import           Control.Monad (unless)
import           System.IO (BufferMode(..), hSetBuffering, stdout, stderr)
import           System.Exit (exitFailure)

-- import qualified Test.PROJECT_NAMESPACE.Baz

main :: IO ()
main = do
  hSetBuffering stdout LineBuffering
  hSetBuffering stderr LineBuffering

  results <- sequence [
      -- Test.PROJECT_NAMESPACE.Baz.tests
    ]

  unless (and results) $
    exitFailure
