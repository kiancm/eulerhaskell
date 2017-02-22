--Project Euler--
problem_1 :: Int
problem_1 = sum [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0 ]

problem_2 :: Int
problem_2 = sum . filter (\x -> even x) . takeWhile (<= 4000000) $ map fib [1..] where
    fib :: Int -> Int
    fib 0 = 0
    fib 1 = 1
    fib x = fib (x-1) + fib (x-2)
