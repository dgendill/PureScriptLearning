module Main where

import Math (sqrt)
import Prelude
import Data.List
import Control.Monad.Eff.Console (print)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)

myadd :: Int -> Int -> Int
myadd a b = a + b

swapDivideAndAdd :: Number -> Number -> Number -> Number
swapDivideAndAdd a b c = flip (\d e -> d / c + e ) a b

type Vector =
    { angle :: Number
    , length :: Number
    }

type VectorSpace = List Vector

vlength :: Vector -> Number
vlength v = v.length

showVector :: Vector -> String
showVector v = "A" ++ (show v.angle) ++ " L" ++ (show v.length)

vadd :: Vector -> Vector -> Vector
vadd v1 v2 = {angle:v1.angle+v2.angle, length:v1.length+v2.length}

data Bit = Z | O

main =  print (diagonal 3.0 4.0)
