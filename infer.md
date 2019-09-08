# Inference

- __`EVAR`__: a read expression variable (actually appears in code)

- __A/TVAR__: a free type variable
- __A*/SVAR__: a (to-be) bound type variable from some scheme

- __Assumption/Env__: a map of (evar => tvar/svar)

- __S constraint__: declaring an svar to be of a type and in a context
    - `(:S A* A ENV)`
- __I constraint__: declaring a to-be instantiation of a scheme variable
    - `(:I A* ty)`
- __E constraint__: declaring two monotypes to be unified
    - `(A . A)`

__IMPORTANT__: the order of the s-constraints generated is significant

## Types

- `(:tvar tn)`
- `(:svar tn)`
- `(:builtin bn)`
- `(:tfun (aty) rty)`
