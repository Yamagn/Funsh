module Main where

    import System.Environment(getArgs)
    import Commands(funsh_pwd)
    
    promptLine = do
        putStr "> "
        getLine
    
    main :: IO ()
    main = do
        funsh_loop
        return ()
    
    funsh_loop = do
        line <- promptLine
        let args = words line
        if (length args) == 0
            then funsh_loop
        else if (head args) == "exit"
            then return ()
        else do
            case head args of
                "pwd" -> do
                    funsh_pwd
                    funsh_loop
                _ -> do
                    putStrLn $ "Funsh: Command not found: " ++ (head args)
                    funsh_loop