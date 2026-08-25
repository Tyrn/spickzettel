#import "../utils.typ": *

= Introduction

*Sources*: Christopher Allen, Julie Moronuki, _Haskell Programming from First Principles_ (A&M); Miscellaneous\

= Typeclasses
== Value-Level Structures (Kind Type)
=== Semigroup (The Power of Appending)

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

== Container/Context Structures (Kind Type -> Type)
=== Functor (The Power of Reaching Inside)

#sourcecode[```haskell
type Functor :: (* -> *) -> Constraint
class Functor f where
  fmap :: (a -> b) -> f a -> f b
  (<$) :: a -> f b -> f a
```]

=== Applicative (The Power of Independent Contexts)

#sourcecode[```haskell
type Applicative :: (* -> *) -> Constraint
class Functor f => Applicative f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b
  liftA2 :: (a -> b -> c) -> f a -> f b -> f c
  (*>) :: f a -> f b -> f b
  (<*) :: f a -> f b -> f a
```]

#sourcecode[```haskell
λ> [(+1), (*2)] <*> [2, 4]
[3,5,4,8]
```]

=== Monad (The Power of Dependent Contexts)

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
