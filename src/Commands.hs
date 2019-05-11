module Commands (funsh_pwd) where

    import System.Environment
    import System.Posix.Directory
    import System.IO
    
    funsh_pwd :: IO()
    funsh_pwd = do
        current_path <- getWorkingDirectory
        putStrLn current_path