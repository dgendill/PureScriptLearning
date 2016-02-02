module Main where

import Prelude
import Math
import Data.Int (toNumber)
import Data.Array
import Data.Foldable

-- import Control.Monad.Eff
-- import Control.Monad.Eff.Console

-- main :: forall e. Eff (console :: CONSOLE | e) Unit
-- main = do
--   log "Hello sailor!"

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fibSet :: Int -> Array Int
fibSet 0 = [fib 0]
fibSet 1 = [fib 1]
fibSet n = fibSet (n - 1) ++ [fib n]

-- even :: Int -> Boolean
-- even n = if ((%) (abs (toNumber n)) 2.0) == 0.0
--            then true
--            else false

even :: Int -> Boolean
even 0 = true
even 1 = false
even n = even (n - 2)

-- filtering evens
-- filter even (1 .. 100)

-- fibSet of evens
-- fibSet <$> (filter even (1 .. 100))

-- betweenEvens :: Int -> Array Array
-- betweenEvens max = do
--    let evens = even <$> (0 .. max)
--    take 2 evens

compareMultAdd :: Int -> Array Int
compareMultAdd x = [foldr (*) 1 (1 .. x), foldr (+) 0 (1 .. x)]
