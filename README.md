This repository contains a Haskell program that highlights a subtle issue related to flexible instances and type inference.  The `bug.hs` file demonstrates a compile-time error that arises when trying to apply the `foo` function to a String. The `bugSolution.hs` file presents a solution using type annotations to guide the compiler towards the correct instance.