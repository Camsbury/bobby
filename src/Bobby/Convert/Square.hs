--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Convert.Square
-- Description: Provides conversions for 'Square's to bitboards as 'Word64's
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Convert.Square
  ( module Bobby.Convert.Square
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens (Prism', prism')
--------------------------------------------------------------------------------
import Bobby.Type.Square
--------------------------------------------------------------------------------

_SquareAsWord :: Prism' Word64 Square
_SquareAsWord = prism' wordFromSquare squareFromWord
  where
    wordFromSquare :: Square -> Word64
    wordFromSquare A1 = 0
    wordFromSquare A2 = 1
    wordFromSquare A3 = 2
    wordFromSquare A4 = 3
    wordFromSquare A5 = 4
    wordFromSquare A6 = 5
    wordFromSquare A7 = 6
    wordFromSquare A8 = 7
    wordFromSquare B1 = 8
    wordFromSquare B2 = 9
    wordFromSquare B3 = 10
    wordFromSquare B4 = 11
    wordFromSquare B5 = 12
    wordFromSquare B6 = 13
    wordFromSquare B7 = 14
    wordFromSquare B8 = 15
    wordFromSquare C1 = 16
    wordFromSquare C2 = 17
    wordFromSquare C3 = 18
    wordFromSquare C4 = 19
    wordFromSquare C5 = 20
    wordFromSquare C6 = 21
    wordFromSquare C7 = 22
    wordFromSquare C8 = 23
    wordFromSquare D1 = 24
    wordFromSquare D2 = 25
    wordFromSquare D3 = 26
    wordFromSquare D4 = 27
    wordFromSquare D5 = 28
    wordFromSquare D6 = 29
    wordFromSquare D7 = 30
    wordFromSquare D8 = 31
    wordFromSquare E1 = 32
    wordFromSquare E2 = 33
    wordFromSquare E3 = 34
    wordFromSquare E4 = 35
    wordFromSquare E5 = 36
    wordFromSquare E6 = 37
    wordFromSquare E7 = 38
    wordFromSquare E8 = 39
    wordFromSquare F1 = 40
    wordFromSquare F2 = 41
    wordFromSquare F3 = 42
    wordFromSquare F4 = 43
    wordFromSquare F5 = 44
    wordFromSquare F6 = 45
    wordFromSquare F7 = 46
    wordFromSquare F8 = 47
    wordFromSquare G1 = 48
    wordFromSquare G2 = 49
    wordFromSquare G3 = 50
    wordFromSquare G4 = 51
    wordFromSquare G5 = 52
    wordFromSquare G6 = 53
    wordFromSquare G7 = 54
    wordFromSquare G8 = 55
    wordFromSquare H1 = 56
    wordFromSquare H2 = 57
    wordFromSquare H3 = 58
    wordFromSquare H4 = 59
    wordFromSquare H5 = 60
    wordFromSquare H6 = 61
    wordFromSquare H7 = 62
    wordFromSquare H8 = 63

    squareFromWord :: Word64 -> Maybe Square
    squareFromWord 0 = Just A1
    squareFromWord 1 = Just A2
    squareFromWord 2 = Just A3
    squareFromWord 3 = Just A4
    squareFromWord 4 = Just A5
    squareFromWord 5 = Just A6
    squareFromWord 6 = Just A7
    squareFromWord 7 = Just A8
    squareFromWord 8 = Just B1
    squareFromWord 9 = Just B2
    squareFromWord 10 = Just B3
    squareFromWord 11 = Just B4
    squareFromWord 12 = Just B5
    squareFromWord 13 = Just B6
    squareFromWord 14 = Just B7
    squareFromWord 15 = Just B8
    squareFromWord 16 = Just C1
    squareFromWord 17 = Just C2
    squareFromWord 18 = Just C3
    squareFromWord 19 = Just C4
    squareFromWord 20 = Just C5
    squareFromWord 21 = Just C6
    squareFromWord 22 = Just C7
    squareFromWord 23 = Just C8
    squareFromWord 24 = Just D1
    squareFromWord 25 = Just D2
    squareFromWord 26 = Just D3
    squareFromWord 27 = Just D4
    squareFromWord 28 = Just D5
    squareFromWord 29 = Just D6
    squareFromWord 30 = Just D7
    squareFromWord 31 = Just D8
    squareFromWord 32 = Just E1
    squareFromWord 33 = Just E2
    squareFromWord 34 = Just E3
    squareFromWord 35 = Just E4
    squareFromWord 36 = Just E5
    squareFromWord 37 = Just E6
    squareFromWord 38 = Just E7
    squareFromWord 39 = Just E8
    squareFromWord 40 = Just F1
    squareFromWord 41 = Just F2
    squareFromWord 42 = Just F3
    squareFromWord 43 = Just F4
    squareFromWord 44 = Just F5
    squareFromWord 45 = Just F6
    squareFromWord 46 = Just F7
    squareFromWord 47 = Just F8
    squareFromWord 48 = Just G1
    squareFromWord 49 = Just G2
    squareFromWord 50 = Just G3
    squareFromWord 51 = Just G4
    squareFromWord 52 = Just G5
    squareFromWord 53 = Just G6
    squareFromWord 54 = Just G7
    squareFromWord 55 = Just G8
    squareFromWord 56 = Just H1
    squareFromWord 57 = Just H2
    squareFromWord 58 = Just H3
    squareFromWord 59 = Just H4
    squareFromWord 60 = Just H5
    squareFromWord 61 = Just H6
    squareFromWord 62 = Just H7
    squareFromWord 63 = Just H8
    squareFromWord _  = Nothing
