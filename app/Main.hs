module Main where

import System.Environment(getArgs)
import Commands(fush_pwd)

promptLine = do
    putStr "> "
    getLine

main :: IO ()
main = do
    fush_loop
    return ()

fush_loop = do
    line <- promptLine
    let args = words line
    if (length args) == 0
        then fush_loop
    else if (head args) == "exit"
        then return ()
    else do
        case head args of
            "pwd" -> do
                fush_pwd
                fush_loop
            _ -> do
                putStrLn $ "Fush: Command not found: " ++ (head args)
                fush_loop