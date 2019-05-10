module Commands (fush_pwd) where

import System.Environment
import System.Posix.Directory
import System.IO

fush_pwd :: IO()
fush_pwd = do
    current_path <- getWorkingDirectory
    putStrLn current_path