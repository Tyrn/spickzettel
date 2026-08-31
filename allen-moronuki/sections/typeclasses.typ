#import "../utils.typ": *

= Typeclasses
== Value-Level Structures (Kind Type)

_Kind_ is the type of a type. Speaking of typeclasses:
- \* works out of context
- \* -> \* type constructor takes one parameter
- \* -> \* -> \* type constructor takes two parameters

=== Semigroup (Appending)

#sourcecode[```haskell
type Semigroup :: * -> Constraint
class Semigroup a where
  (<>) :: a -> a -> a  -- append
  sconcat :: GHC.Internal.Base.NonEmpty a -> a
  stimes :: Integral b => b -> a -> a
```]

*Equational laws*:
(1) _associativity_;
#sourcecode[```haskell
(a <> a) <> a = a <> (a <> a)
```]

*Examples*:

#sourcecode[```haskell
Sum 1 <> Sum 2
Product 3 <> Product 4
```]

=== Monoid

#sourcecode[```haskell
type Monoid :: * -> Constraint
class Semigroup a => Monoid a where
  mempty :: a
  mappend :: a -> a -> a  -- (<>)
  mconcat :: [a] -> a
  mconcat = foldr mappend mempty
```]

*Equational laws*:
(1) _left identity_; (2) _right identity_;
#sourcecode[```haskell
mempty <> x = x
x <> mempty = x
```]

*Examples*:
(1, 2)
#sourcecode[```haskell
[] <> ["Alfa"]  -- ["Alfa"]
"Alfa" <> ""    -- "Alfa"
```]

Semiuseless historical `mconcat`:

#sourcecode[```haskell
mconcat ["Hello", ", ", "World"]
mconcat [[1, 2], [3, 4]]
mconcat [[1, 2], [[3], 4]]  -- error: [GHC-39999]
```]

== Context Structures (Kind Type -> Type)

Among other things, Functor, Applicative, and
Monad contexts serve side effects.

=== Functor (Reaching Inside)

#sourcecode[```haskell
type Functor :: (* -> *) -> Constraint
class Functor f where
  fmap :: (a -> b) -> f a -> f b
  (<$) :: a -> f b -> f a  -- replace
  (<$>) = fmap
```]

*Equational laws*:
(1) _identity_; (2) _composition_;
#sourcecode[```haskell
fmap id = id
fmap (g . h) = fmap g . fmap h
```]

=== Applicative (Independent Contexts)

#sourcecode[```haskell
type Applicative :: (* -> *) -> Constraint
class Functor f => Applicative f where
  id :: a -> a
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b  -- ap, apply
  liftA2 :: (a -> b -> c) -> f a -> f b -> f c
  (*>) :: f a -> f b -> f b          -- sequence east, (>>)
  (<*) :: f a -> f b -> f a          -- sequence west
```]

*Equational laws*:\
(1) _identity_; (2) _homomorphism_;
(3) _interchange_; (4) _composition_;
#sourcecode[```haskell
pure id <*> x = x
pure (g x) = pure g <*> pure x
x <*> pure y = pure (\g -> g y) <*> x
x <*> (y <*> z) = (pure (.) <*> x <*> y) <*> z
```]

*Extra laws*, _monadic agreement_:

#sourcecode[```haskell
pure = return
mf <*> mx  =  mf >>= (\f -> mx >>= (\x -> pure (f x)))
-- or
(<*>) mf mx = do f <- mf; x <-mx; pure (f x)
```]

*Examples*:\
(1) _identity_: doesn't add hidden behavior.
#sourcecode[```haskell
pure id <*> Just 5  -- Just 5
```]

(2) _homomorphism_: function application won't change.
#sourcecode[```haskell
pure (+3) <*> pure 7  -- 10
pure ((+3) 7)         -- 10
```]

(3) _interchange_: pure values commute through `(<*>)`
without changing the result.
#sourcecode[```haskell
Just (+10) <*> pure 5      -- Just 15
pure ($ 5) <*> Just (+10)  -- Just 15
```]

(4) _composition_:
#sourcecode[```haskell
pure (.) <*> Just (+1) <*> Just (*2) <*> Just 5  -- Just 11
Just (+1) <*> (Just (*2) <*> Just 5)             -- Just 11
```]

Lifting, or the invisible IO box:
#sourcecode[```haskell
liftA2 (+) (pure 5) (pure 7)  -- 12
liftA2 (+) (Just 5) (Just 7)  -- Just 12
(+) <$> pure 5 <*> pure 7     -- 12
(+) <$> Just 5 <*> Just 7     -- Just 12
(+) <$> pure 5 <*> pure 7 :: IO Int        -- 12
(+) <$> pure 5 <*> pure 7 :: Maybe Int     -- Just 12
(,) <$> Just 1 <*> Just 2     -- Just (1,2)
```]

Cartesian product:
#sourcecode[```haskell
[(+1), (*2)] <*> [2, 4]  -- [3,5,4,8]
```]

=== Monad (Dependent Contexts)

#sourcecode[```haskell
type Monad :: (* -> *) -> Constraint
class Applicative m => Monad m where
  (>>=) :: m a -> (a -> m b) -> m b  -- bind
  (>>) :: m a -> m b -> m b          -- sequence
  return :: a -> m a
  -- About flattening:
  join :: Monad m => m (m a) -> m a
  join m = m >>= id
  m >>= f = join (fmap f m)
```]

*Equational laws*:\
(1) _left identity_; (2) _right identity_;
(3) _associativity_;
#sourcecode[```haskell
return a >>= f = f a
m >>= return = m
(m >>= f) >>= g = m >>= (\x -> f x >>= g)
```]

*Examples*:\
(1) _left identity_: a monadic value bound to a function
is the same as simple function application; note the monadic result.
#sourcecode[```haskell
return 3 >>= \x -> Just (x + 1)  -- Just 4
(\x -> Just (x + 1)) 3           -- Just 4
```]

(2) _right identity_: a monadic value bound to return
stays the original monadic value.
#sourcecode[```haskell
Just 5 >>= return   -- Just 5
Nothing >>= return  -- Nothing
```]

(3) _associativity_: a chain of binds is insensitive to grouping.
stays the original monadic value.
#sourcecode[```haskell
-- Left-associative:
(Just 2 >>= \x -> Just (x * 3)) >>= \y -> Just (y + 1)    -- Just 7
-- Right-associative (using lambda to flatten):
Just 2 >>= (\x -> (Just (x * 3) >>= \y -> Just (y + 1)))  -- Just 7
```]

Make the unwelcome result disappear:
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
