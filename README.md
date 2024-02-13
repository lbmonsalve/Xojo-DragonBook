# Xojo-DragonBook
Dragon Book front-end in Xoxo. Taken from the Dragon Book

## The Language

The language is based on the fragments in Chapter 6: expressions, arrays,
boolean expressions, statements, declarations, blocks:

```
program ->  block
block   -> { decls stmts }
decls   ->  decls decl | ϵ
decl    ->  type ID ;
type    ->  type [ NUM ] | basic
basic   ->  'int' | 'float' | 'char' | 'bool'
stmts   ->  stmts stmt | ϵ
stmt    ->  loc = bool ; 
            | 'if' '(' bool ')' stmt ;
            | 'if' '(' bool ')' stmt 'else' stmt ;
            | 'while' '(' bool ')' stmt ;
            | 'do' stmt 'while' ( bool ) ;
            | 'break' ; 
            | block | ϵ
loc     ->  loc [ bool ] | ID
bool    ->  bool || join | join
join    ->  join && equality | equality
equality->  equality == rel | equality != rel | rel
rel     ->  expr '<' expr | expr '<=' expr | expr '>=' expr | expr '>' expr | expr
expr    ->  expr '+' term | expr '-' term | term
term    ->  term '*' unary | term '/' unary | unary
unary   ->  '!' unary | '-' unary | factor
factor  ->  ( bool ) | loc | NUM | REAL | CHAR | 'true' | 'false'

ID      ->  [a-zA-Z0-9_]+
NUM     ->  DIGIT+
REAL    ->  DIGIT+ '.' DIGIT*
CHAR    ->  '"' (.)*? '"'
DIGIT   ->  [0-9]
```
