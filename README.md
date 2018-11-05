# std-func
Self-made library that contains functions to work with lists

## Install
```bash
git clone https://github.com/bigman212/list-funcs.git
cd list-funcs
stack run 
```

## Usage
All functions are defined in /src/Lib.hs.
You can freely usr them in Main.hs just using:
```haskell
module Main where

import Lib (
    lmap
)

add x = x + 1

main :: IO()
main = print lmap sum [1,2,3] -- output: [2,3,4]
```
