--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Type.Color
-- Description: Provides the 'Color' type and access functions
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--
-- = Known Concessions
-- Don't care about perf right now. Just representation to start playing with
-- an API.
--
--------------------------------------------------------------------------------
module Bobby.Type.Color
  ( Color(..)
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------

data Color
  = Black
  | White
  deriving (Eq, Show)
