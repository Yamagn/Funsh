module Main where

import System.Environment(getArgs)
import Commands(fush_pwd)

main :: IO ()
main = do
    fush_loop

fush_loop = do
    putStr "> "
    line <- getLine
    let args = words line
    if args !! 0 == "exit"
        then return ()
        else do
            case args !! 0 of
                "pwd" -> do
                    fush_pwd
                    fush_loop
                _ -> do
                    let err = "Fush: Command not found " ++ (args !! 0)
                    putStrLn err