--------------------------------------------------------------------------------
{-# LANGUAGE TemplateHaskell       #-}
--------------------------------------------------------------------------------
-- |
-- Module: Bobby.Type.Move
-- Description: Provides the 'Move' type and accessors
-- Maintainers: Cameron Kingsbury <camsbury7@gmail.com>
-- Maturity: Draft
--
--------------------------------------------------------------------------------
module Bobby.Type.Move
  ( module Bobby.Type.Move
  ) where
--------------------------------------------------------------------------------
import Prelude
--------------------------------------------------------------------------------
import Control.Lens (makeFieldsNoPrefix)
--------------------------------------------------------------------------------
import Bobby.Type.Square (Square)
--------------------------------------------------------------------------------

data Move
  = Move
  { _source :: Square
  , _target :: Square
  }
  deriving (Eq, Show)

makeFieldsNoPrefix ''Move
