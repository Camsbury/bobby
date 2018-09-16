--------------------------------------------------------------------------------
{-# LANGUAGE TemplateHaskell       #-}
--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Type.Board
-- Description: Provides the 'Board' type and access functions
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
-- = Implementation Overview
-- Though the 'Board' takes the form of an array of 16 'Word64's
-- in the actual engine, the type defined here provides a nice type to interact
-- with when performance is not necessary. This type is safe, and provides
-- lenses for each square.
--
--------------------------------------------------------------------------------
module Bobby.Type.Board
  ( Board(..)
  , HasA1(..)
  , HasA2(..)
  , HasA3(..)
  , HasA4(..)
  , HasA5(..)
  , HasA6(..)
  , HasA7(..)
  , HasA8(..)
  , HasB1(..)
  , HasB2(..)
  , HasB3(..)
  , HasB4(..)
  , HasB5(..)
  , HasB6(..)
  , HasB7(..)
  , HasB8(..)
  , HasC1(..)
  , HasC2(..)
  , HasC3(..)
  , HasC4(..)
  , HasC5(..)
  , HasC6(..)
  , HasC7(..)
  , HasC8(..)
  , HasD1(..)
  , HasD2(..)
  , HasD3(..)
  , HasD4(..)
  , HasD5(..)
  , HasD6(..)
  , HasD7(..)
  , HasD8(..)
  , HasE1(..)
  , HasE2(..)
  , HasE3(..)
  , HasE4(..)
  , HasE5(..)
  , HasE6(..)
  , HasE7(..)
  , HasE8(..)
  , HasF1(..)
  , HasF2(..)
  , HasF3(..)
  , HasF4(..)
  , HasF5(..)
  , HasF6(..)
  , HasF7(..)
  , HasF8(..)
  , HasG1(..)
  , HasG2(..)
  , HasG3(..)
  , HasG4(..)
  , HasG5(..)
  , HasG6(..)
  , HasG7(..)
  , HasG8(..)
  , HasH1(..)
  , HasH2(..)
  , HasH3(..)
  , HasH4(..)
  , HasH5(..)
  , HasH6(..)
  , HasH7(..)
  , HasH8(..)
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens (makeFieldsNoPrefix)
import Data.Default (Default(..))
--------------------------------------------------------------------------------
import Bobby.Type.Color
import Bobby.Type.Piece
--------------------------------------------------------------------------------
-- types

-- | The chess board! Represented as a matrix to ease computation,
-- but meant to be interacted with using the provided API.
data Board
  = Board
  { _a1 :: Maybe ColoredPiece
  , _a2 :: Maybe ColoredPiece
  , _a3 :: Maybe ColoredPiece
  , _a4 :: Maybe ColoredPiece
  , _a5 :: Maybe ColoredPiece
  , _a6 :: Maybe ColoredPiece
  , _a7 :: Maybe ColoredPiece
  , _a8 :: Maybe ColoredPiece
  , _b1 :: Maybe ColoredPiece
  , _b2 :: Maybe ColoredPiece
  , _b3 :: Maybe ColoredPiece
  , _b4 :: Maybe ColoredPiece
  , _b5 :: Maybe ColoredPiece
  , _b6 :: Maybe ColoredPiece
  , _b7 :: Maybe ColoredPiece
  , _b8 :: Maybe ColoredPiece
  , _c1 :: Maybe ColoredPiece
  , _c2 :: Maybe ColoredPiece
  , _c3 :: Maybe ColoredPiece
  , _c4 :: Maybe ColoredPiece
  , _c5 :: Maybe ColoredPiece
  , _c6 :: Maybe ColoredPiece
  , _c7 :: Maybe ColoredPiece
  , _c8 :: Maybe ColoredPiece
  , _d1 :: Maybe ColoredPiece
  , _d2 :: Maybe ColoredPiece
  , _d3 :: Maybe ColoredPiece
  , _d4 :: Maybe ColoredPiece
  , _d5 :: Maybe ColoredPiece
  , _d6 :: Maybe ColoredPiece
  , _d7 :: Maybe ColoredPiece
  , _d8 :: Maybe ColoredPiece
  , _e1 :: Maybe ColoredPiece
  , _e2 :: Maybe ColoredPiece
  , _e3 :: Maybe ColoredPiece
  , _e4 :: Maybe ColoredPiece
  , _e5 :: Maybe ColoredPiece
  , _e6 :: Maybe ColoredPiece
  , _e7 :: Maybe ColoredPiece
  , _e8 :: Maybe ColoredPiece
  , _f1 :: Maybe ColoredPiece
  , _f2 :: Maybe ColoredPiece
  , _f3 :: Maybe ColoredPiece
  , _f4 :: Maybe ColoredPiece
  , _f5 :: Maybe ColoredPiece
  , _f6 :: Maybe ColoredPiece
  , _f7 :: Maybe ColoredPiece
  , _f8 :: Maybe ColoredPiece
  , _g1 :: Maybe ColoredPiece
  , _g2 :: Maybe ColoredPiece
  , _g3 :: Maybe ColoredPiece
  , _g4 :: Maybe ColoredPiece
  , _g5 :: Maybe ColoredPiece
  , _g6 :: Maybe ColoredPiece
  , _g7 :: Maybe ColoredPiece
  , _g8 :: Maybe ColoredPiece
  , _h1 :: Maybe ColoredPiece
  , _h2 :: Maybe ColoredPiece
  , _h3 :: Maybe ColoredPiece
  , _h4 :: Maybe ColoredPiece
  , _h5 :: Maybe ColoredPiece
  , _h6 :: Maybe ColoredPiece
  , _h7 :: Maybe ColoredPiece
  , _h8 :: Maybe ColoredPiece
  }
  deriving stock (Eq, Show)

--------------------------------------------------------------------------------
-- lenses
makeFieldsNoPrefix ''Board

--------------------------------------------------------------------------------
-- instances

instance Default Board where
  def
    = Board
    { _a1 = Just (ColoredPiece White Rook)
    , _a2 = Just (ColoredPiece White Pawn)
    , _a3 = Nothing
    , _a4 = Nothing
    , _a5 = Nothing
    , _a6 = Nothing
    , _a7 = Just (ColoredPiece Black Pawn)
    , _a8 = Just (ColoredPiece Black Rook)
    , _b1 = Just (ColoredPiece White Knight)
    , _b2 = Just (ColoredPiece White Pawn)
    , _b3 = Nothing
    , _b4 = Nothing
    , _b5 = Nothing
    , _b6 = Nothing
    , _b7 = Just (ColoredPiece Black Pawn)
    , _b8 = Just (ColoredPiece Black Knight)
    , _c1 = Just (ColoredPiece White Bishop)
    , _c2 = Just (ColoredPiece White Pawn)
    , _c3 = Nothing
    , _c4 = Nothing
    , _c5 = Nothing
    , _c6 = Nothing
    , _c7 = Just (ColoredPiece Black Pawn)
    , _c8 = Just (ColoredPiece Black Bishop)
    , _d1 = Just (ColoredPiece White Queen)
    , _d2 = Just (ColoredPiece White Pawn)
    , _d3 = Nothing
    , _d4 = Nothing
    , _d5 = Nothing
    , _d6 = Nothing
    , _d7 = Just (ColoredPiece Black Pawn)
    , _d8 = Just (ColoredPiece Black Queen)
    , _e1 = Just (ColoredPiece White King)
    , _e2 = Just (ColoredPiece White Pawn)
    , _e3 = Nothing
    , _e4 = Nothing
    , _e5 = Nothing
    , _e6 = Nothing
    , _e7 = Just (ColoredPiece Black Pawn)
    , _e8 = Just (ColoredPiece Black King)
    , _f1 = Just (ColoredPiece White Bishop)
    , _f2 = Just (ColoredPiece White Pawn)
    , _f3 = Nothing
    , _f4 = Nothing
    , _f5 = Nothing
    , _f6 = Nothing
    , _f7 = Just (ColoredPiece Black Pawn)
    , _f8 = Just (ColoredPiece Black Bishop)
    , _g1 = Just (ColoredPiece White Knight)
    , _g2 = Just (ColoredPiece White Pawn)
    , _g3 = Nothing
    , _g4 = Nothing
    , _g5 = Nothing
    , _g6 = Nothing
    , _g7 = Just (ColoredPiece Black Pawn)
    , _g8 = Just (ColoredPiece Black Knight)
    , _h1 = Just (ColoredPiece White Rook)
    , _h2 = Just (ColoredPiece White Pawn)
    , _h3 = Nothing
    , _h4 = Nothing
    , _h5 = Nothing
    , _h6 = Nothing
    , _h7 = Just (ColoredPiece Black Pawn)
    , _h8 = Just (ColoredPiece Black Rook)
    }
