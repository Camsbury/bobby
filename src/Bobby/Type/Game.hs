--------------------------------------------------------------------------------
{-# LANGUAGE TemplateHaskell       #-}
--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Type.Game
-- Description: Provides the 'Game' type and accessors
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Type.Game
  ( module Bobby.Type.Game
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens (makeFieldsNoPrefix)
--------------------------------------------------------------------------------
import Bobby.Type.Board (Board)
import Bobby.Type.Square (Square)
import Bobby.Type.Color (Color)
--------------------------------------------------------------------------------

data Game
  = Game
  { _board :: Board
  , _playerTurn :: Color
  , _whiteKingSideCastle :: Bool
  , _whiteQueenSideCastle :: Bool
  , _blackKingSideCastle :: Bool
  , _blackQueenSideCastle :: Bool
  , _enPassantSquare :: Square
  }

makeFieldsNoPrefix ''Game
