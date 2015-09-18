type Field = String

--data Value a = Just a | Nothing

data BoolOp = Or | And
    deriving (Read, Show, Enum)

data Op = Equal | NotEqual | GreaterThan | LowerThan | GreaterOrEqual | LowerOrEqual | Like | Between
    deriving (Read, Show, Enum)

data Expression = Expression { field :: Field, op :: Op, val1 :: Int, val2 :: Maybe Int }
    deriving (Read, Show)
    
data Clause = { op :: BoolOp, exp1 :: Expression, exp2 :: Expression }
    deriving (Read, Show)

--exp :: Expression
exp1 = Expression "coligada" Equal 1
exp2 = Expression "filial" Equal 55

clause = Clause Or exp1 exp2

main = putStrLn "hello world" 
