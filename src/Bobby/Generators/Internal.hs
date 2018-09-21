--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Generators.Internal
-- Description: Provides core generators to "Bobby.Generators"
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Generators.Internal
  ( module Bobby.Generators.Internal
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Hedgehog (Gen)
--------------------------------------------------------------------------------
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range
--------------------------------------------------------------------------------

-- | Generates a bitboard as a 'Word64'
genBitBoard :: Gen Word64
genBitBoard = Gen.word64 $ Range.linear minBound maxBound
