type Field = String

--data Value a = Just a | Nothing

data BoolOp = Or | And
    deriving (Read, Show, Enum)

data Op = Equal | NotEqual | GreaterThan | LowerThan | GreaterOrEqual | LowerOrEqual | Like | Between
    deriving (Read, Show, Enum)

data Expression = Expression { field :: Field, op :: Op, val1 :: Int, val2 :: Maybe Int }
    deriving (Read, Show)

--exp :: Expression
exp = Expression "coligada" Equal 1

main = putStrLn "hello world" 