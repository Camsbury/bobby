--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Convert.Square
-- Description: Provides conversions for 'Square's to bitboards as 'Word64's
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Convert.Square
  ( _SquareAsWord
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens (Prism', prism')
--------------------------------------------------------------------------------
import Bobby.Type.Square
--------------------------------------------------------------------------------

-- | Prism converting a 'Square' on a chess board to an efficient 'Word64'
_SquareAsWord :: Prism' Word64 Square
_SquareAsWord = prism' wordFromSquare squareFromWord
  where
    wordFromSquare :: Square -> Word64
    wordFromSquare A1 = p2m1 0
    wordFromSquare A2 = p2m1 1
    wordFromSquare A3 = p2m1 2
    wordFromSquare A4 = p2m1 3
    wordFromSquare A5 = p2m1 4
    wordFromSquare A6 = p2m1 5
    wordFromSquare A7 = p2m1 6
    wordFromSquare A8 = p2m1 7
    wordFromSquare B1 = p2m1 8
    wordFromSquare B2 = p2m1 9
    wordFromSquare B3 = p2m1 10
    wordFromSquare B4 = p2m1 11
    wordFromSquare B5 = p2m1 12
    wordFromSquare B6 = p2m1 13
    wordFromSquare B7 = p2m1 14
    wordFromSquare B8 = p2m1 15
    wordFromSquare C1 = p2m1 16
    wordFromSquare C2 = p2m1 17
    wordFromSquare C3 = p2m1 18
    wordFromSquare C4 = p2m1 19
    wordFromSquare C5 = p2m1 20
    wordFromSquare C6 = p2m1 21
    wordFromSquare C7 = p2m1 22
    wordFromSquare C8 = p2m1 23
    wordFromSquare D1 = p2m1 24
    wordFromSquare D2 = p2m1 25
    wordFromSquare D3 = p2m1 26
    wordFromSquare D4 = p2m1 27
    wordFromSquare D5 = p2m1 28
    wordFromSquare D6 = p2m1 29
    wordFromSquare D7 = p2m1 30
    wordFromSquare D8 = p2m1 31
    wordFromSquare E1 = p2m1 32
    wordFromSquare E2 = p2m1 33
    wordFromSquare E3 = p2m1 34
    wordFromSquare E4 = p2m1 35
    wordFromSquare E5 = p2m1 36
    wordFromSquare E6 = p2m1 37
    wordFromSquare E7 = p2m1 38
    wordFromSquare E8 = p2m1 39
    wordFromSquare F1 = p2m1 40
    wordFromSquare F2 = p2m1 41
    wordFromSquare F3 = p2m1 42
    wordFromSquare F4 = p2m1 43
    wordFromSquare F5 = p2m1 44
    wordFromSquare F6 = p2m1 45
    wordFromSquare F7 = p2m1 46
    wordFromSquare F8 = p2m1 47
    wordFromSquare G1 = p2m1 48
    wordFromSquare G2 = p2m1 49
    wordFromSquare G3 = p2m1 50
    wordFromSquare G4 = p2m1 51
    wordFromSquare G5 = p2m1 52
    wordFromSquare G6 = p2m1 53
    wordFromSquare G7 = p2m1 54
    wordFromSquare G8 = p2m1 55
    wordFromSquare H1 = p2m1 56
    wordFromSquare H2 = p2m1 57
    wordFromSquare H3 = p2m1 58
    wordFromSquare H4 = p2m1 59
    wordFromSquare H5 = p2m1 60
    wordFromSquare H6 = p2m1 61
    wordFromSquare H7 = p2m1 62
    wordFromSquare H8 = p2m1 63

    squareFromWord :: Word64 -> Maybe Square
    squareFromWord x
      | x == p2m1 0  = Just A1
      | x == p2m1 1  = Just A2
      | x == p2m1 2  = Just A3
      | x == p2m1 3  = Just A4
      | x == p2m1 4  = Just A5
      | x == p2m1 5  = Just A6
      | x == p2m1 6  = Just A7
      | x == p2m1 7  = Just A8
      | x == p2m1 8  = Just B1
      | x == p2m1 9  = Just B2
      | x == p2m1 10 = Just B3
      | x == p2m1 11 = Just B4
      | x == p2m1 12 = Just B5
      | x == p2m1 13 = Just B6
      | x == p2m1 14 = Just B7
      | x == p2m1 15 = Just B8
      | x == p2m1 16 = Just C1
      | x == p2m1 17 = Just C2
      | x == p2m1 18 = Just C3
      | x == p2m1 19 = Just C4
      | x == p2m1 20 = Just C5
      | x == p2m1 21 = Just C6
      | x == p2m1 22 = Just C7
      | x == p2m1 23 = Just C8
      | x == p2m1 24 = Just D1
      | x == p2m1 25 = Just D2
      | x == p2m1 26 = Just D3
      | x == p2m1 27 = Just D4
      | x == p2m1 28 = Just D5
      | x == p2m1 29 = Just D6
      | x == p2m1 30 = Just D7
      | x == p2m1 31 = Just D8
      | x == p2m1 32 = Just E1
      | x == p2m1 33 = Just E2
      | x == p2m1 34 = Just E3
      | x == p2m1 35 = Just E4
      | x == p2m1 36 = Just E5
      | x == p2m1 37 = Just E6
      | x == p2m1 38 = Just E7
      | x == p2m1 39 = Just E8
      | x == p2m1 40 = Just F1
      | x == p2m1 41 = Just F2
      | x == p2m1 42 = Just F3
      | x == p2m1 43 = Just F4
      | x == p2m1 44 = Just F5
      | x == p2m1 45 = Just F6
      | x == p2m1 46 = Just F7
      | x == p2m1 47 = Just F8
      | x == p2m1 48 = Just G1
      | x == p2m1 49 = Just G2
      | x == p2m1 50 = Just G3
      | x == p2m1 51 = Just G4
      | x == p2m1 52 = Just G5
      | x == p2m1 53 = Just G6
      | x == p2m1 54 = Just G7
      | x == p2m1 55 = Just G8
      | x == p2m1 56 = Just H1
      | x == p2m1 57 = Just H2
      | x == p2m1 58 = Just H3
      | x == p2m1 59 = Just H4
      | x == p2m1 60 = Just H5
      | x == p2m1 61 = Just H6
      | x == p2m1 62 = Just H7
      | x == p2m1 63 = Just H8
      | otherwise   = Nothing

p2m1 :: Word64 -> Word64
p2m1 x = x ^ 2 - 1
