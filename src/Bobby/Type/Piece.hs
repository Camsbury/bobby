--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Type.Piece
-- Description: Provides the 'Piece' type and access functions
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--
-- = Known Concessions
-- Don't care about perf right now. Just representation to start playing with
-- an API.
--
--------------------------------------------------------------------------------
module Bobby.Type.Piece
  ( ColoredPiece(..)
  , Piece(..)
  ) where
--------------------------------------------------------------------------------
import Prelude
import Bobby.Type.Color
--------------------------------------------------------------------------------

data ColoredPiece
  = ColoredPiece Color Piece
  deriving stock (Eq, Show)

data Piece
  = Pawn
  | Knight
  | Bishop
  | Rook
  | Queen
  | King
  deriving stock (Eq, Show)
