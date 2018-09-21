--------------------------------------------------------------------------------
module Bobby.Convert.SquareTest where
--------------------------------------------------------------------------------
import Test.Prelude
--------------------------------------------------------------------------------
import Control.Lens
--------------------------------------------------------------------------------
import Hedgehog.Checkers.Lens.Properties
--------------------------------------------------------------------------------
import Bobby
import Bobby.Generators
--------------------------------------------------------------------------------

main :: IO ()
main = defaultMain test_SquareAsWord

test_SquareAsWord :: TestTree
test_SquareAsWord
  = localOption (HedgehogTestLimit 100)
  $ testProperty "_SquareAsWord is a Prism'" testPrismSquareAsWord

testPrismSquareAsWord :: Property
testPrismSquareAsWord = property $
  isPrism _SquareAsWord genSquare genBitBoard genSquareTweak
