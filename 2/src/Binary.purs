module Binary where

import Math (sqrt)
import Prelude
import Data.Array
import Control.Monad.Eff.Console (print)
import Control.Plus (empty)
import Data.Foldable

data Bit = Z | O
type BitString = Array Bit

emptyBitString :: BitString
emptyBitString = empty

-- showBitString :: BitString -> String
-- showBitString bs = foldMap showBit bs

-- showBit :: Bit -> String
-- showBit Z = "0"
-- showBit O = "1"

instance showBit :: Show Bit where
  show Z = "0"
  show O = "1"


-- evenParity :: BitString -> BitString
-- evenParity bs = 
-- let b = [O, Z, O]

main =  print "t"
