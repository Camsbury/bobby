--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Generators
-- Description: Provides generators common to tests
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Generators
  ( module Bobby.Generators
  , module Bobby.Generators.Internal
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Hedgehog (Gen)
--------------------------------------------------------------------------------
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range
--------------------------------------------------------------------------------
import Bobby.Generators.Internal
import Bobby.Type (genSquare, genSquareTweak)
--------------------------------------------------------------------------------
