--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Game.Board
-- Description: Provides functions for working with 'Board's
-- Maintainers: Cameron Kingsbury <cameron@urbint.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Game.Board
  ( printBoard
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens.Operators
--------------------------------------------------------------------------------
import qualified Data.Char as Char
--------------------------------------------------------------------------------
import Bobby.Type.Board
import Bobby.Type.Color
import Bobby.Type.Piece
--------------------------------------------------------------------------------

-- | Renders and prints a board
printBoard :: Board -> IO ()
printBoard = putStr . renderBoard

-- | Renders a 'Board' into a human-readable form
renderBoard :: Board -> Text
renderBoard board
  = pack
  $ rowSpacer
  <> intercalate rowSpacer renderedRows
  <> rowSpacer
  where
    rowSpacer :: String
    rowSpacer
      = '+' : mconcat (replicate 8 "---+") <> "\n"

    renderedRows :: [String]
    renderedRows
      = renderRow <$> boardAsLists

    renderRow :: [Maybe ColoredPiece] -> String
    renderRow
      = spaceRow
      . fmap translateColoredPiece

    spaceRow :: String -> String
    spaceRow row
      = "| " <> intercalate colSpacer row' <> " |\n"
      where
        row' = (:[]) <$> row

    colSpacer :: String
    colSpacer = " | "

    translateColoredPiece
      :: Maybe ColoredPiece -> Char
    translateColoredPiece Nothing
      = ' '
    translateColoredPiece (Just (ColoredPiece White p))
      = Char.toUpper $ translatePiece p
    translateColoredPiece (Just (ColoredPiece Black p))
      = translatePiece p

    translatePiece :: Piece -> Char
    translatePiece Pawn   = 'p'
    translatePiece Knight = 'n'
    translatePiece Bishop = 'b'
    translatePiece Rook   = 'r'
    translatePiece Queen  = 'q'
    translatePiece King   = 'k'

    boardAsLists :: [[Maybe ColoredPiece]]
    boardAsLists
      =   fmap (board ^.)
      <$> [ [a8, b8, c8, d8, e8, f8, g8, h8]
          , [a7, b7, c7, d7, e7, f7, g7, h7]
          , [a6, b6, c6, d6, e6, f6, g6, h6]
          , [a5, b5, c5, d5, e5, f5, g5, h5]
          , [a4, b4, c4, d4, e4, f4, g4, h4]
          , [a3, b3, c3, d3, e3, f3, g3, h3]
          , [a2, b2, c2, d2, e2, f2, g2, h2]
          , [a1, b1, c1, d1, e1, f1, g1, h1]
          ]
