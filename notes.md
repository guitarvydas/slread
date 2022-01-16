# parsing expression
- terminal
- terminal range
- rule application
  - name
  - name<expr>
- repetition operators
  - *
  - +
  - ?
- sequence
  - expr1 expr2 ...
- alternation
  - expr1 | expr2 
- positive lookahead
  - & expr
- negative lookahead
  - ~ expr
- lexification
  - # expr

# Grammar
name { ... }
name <: name { ... }

# Rule Definition
- =
- += 
- :=

## Parameterization
name<name,...>

## Description
(...)

## inline
... -- name
