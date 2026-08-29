#import "../utils.typ": *

= Typeclasses
== Value-Level Structures (Kind Type)
=== Semigroup (Appending)

*Provides*: associative binary operator `(<>)`

#sourcecode[```haskell
type Semigroup :: * -> Constraint
class Semigroup a where
  (<>) :: a -> a -> a
  sconcat :: GHC.Internal.Base.NonEmpty a -> a
  stimes :: Integral b => b -> a -> a
```]

=== Monoid

#sourcecode[```haskell
type Monoid :: * -> Constraint
class Semigroup a => Monoid a where
  mempty :: a
  mappend :: a -> a -> a
  mconcat :: [a] -> a
  mconcat = foldr mappend mempty
```]

== Context Structures (Kind Type -> Type)
=== Functor (Reaching Inside)

#sourcecode[```haskell
type Functor :: (* -> *) -> Constraint
class Functor f where
  fmap :: (a -> b) -> f a -> f b
  (<$) :: a -> f b -> f a
```]
*Equational laws*:

#sourcecode[```haskell
fmap id = id
fmap (g . h) = fmap g . fmap h
```]

=== Applicative (Independent Contexts)

#sourcecode[```haskell
type Applicative :: (* -> *) -> Constraint
class Functor f => Applicative f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b
  liftA2 :: (a -> b -> c) -> f a -> f b -> f c
  (*>) :: f a -> f b -> f b
  (<*) :: f a -> f b -> f a
```]

*Equational laws*:\
(1) hs-id; (2) homomorphism;
(3) interchange; (4) composition;
#sourcecode[```haskell
pure id <*> x = x
pure (g x) = pure g <*> pure x
x <*> pure y = pure (\g -> g y) <*> x
x <*> (y <*> z) = (pure (.) <*> x <*> y) <*> z
```]
*Examples*:\

(1)
#sourcecode[```haskell
  -- Boo
```]

#sourcecode[```haskell
  -- Boo
```]

#sourcecode[```haskell
  -- Boo
```]

#sourcecode[```haskell
λ> [(+1), (*2)] <*> [2, 4]
[3,5,4,8]
```]

=== Monad (Dependent Contexts)

#sourcecode[```haskell
type Monad :: (* -> *) -> Constraint
class Applicative m => Monad m where
  (>>=) :: m a -> (a -> m b) -> m b
  (>>) :: m a -> m b -> m b
  return :: a -> m a
```]

#sourcecode[```haskell
-- Find all pairs of numbers (x, y) from two lists that sum to exactly 5
findPairs :: [(Int, Int)]
findPairs = do
  x <- [1, 2, 3, 4]    -- Step 1: Pick an x
  y <- [1, 2, 3, 4]    -- Step 2: Pick a y
  if x + y == 5
    then return (x, y) -- Step 3: Keep the pair if it fits the rule
    else []            -- Step 4: Collapse this timeline if it fails!
-- Output: [(1,4),(2,3),(3,2),(4,1)]
```]
