import System.Environment
import Web.Scotty
import Control.Monad

main :: IO ()
main = do
  port <- liftM read $ getEnv "PORT"
  scotty port $ do
    get "/" $ do
      html "Hello, Haskell"
