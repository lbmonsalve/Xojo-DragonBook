# Xojo-DragonBook
Front-end in Xojo. Taken from the Dragon Book

## The Language

The language is based on the fragments in Chapter 6: expressions, arrays,  
boolean expressions, statements, declarations, blocks:

```
program ->  block
block   -> '{' decls stmts '}'
decls   ->  decls decl
decl    ->  type ID ';'
type    ->  type '[' NUM ']' | BASIC
stmts   ->  stmts stmt
stmt    ->  loc '=' bool ';' 
         |  'if' '(' bool ')' stmt ';'
         |  'if' '(' bool ')' stmt 'else' stmt ';'
         |  'while' '(' bool ')' stmt ';'
         |  'do' stmt 'while' ( bool ) ';'
         |  'break' ';'
         |  block
loc     ->  loc '[' bool ']' | ID
bool    ->  bool '||' join | join
join    ->  join '&&' equality | equality
equality->  equality '==' rel | equality '!=' rel | rel
rel     ->  expr '<' expr | expr '<=' expr | expr '>=' expr | expr '>' expr | expr
expr    ->  expr '+' term | expr '-' term | term
term    ->  term '*' unary | term '/' unary | unary
unary   ->  '!' unary | '-' unary | factor
factor  ->  ( bool ) | loc | NUM | REAL | CHAR | 'true' | 'false'

BASIC   ->  'int' | 'float' | 'char' | 'bool'
ID      ->  [a-zA-Z0-9_]+
NUM     ->  DIGIT+
REAL    ->  DIGIT+ '.' DIGIT*
CHAR    ->  '"' (.)*? '"'
DIGIT   ->  [0-9]
```

module Dragonbook.Lexical  

class Tag. Tags distinguish tokens.  
class Token with subclasses Num, Real, Char and Word  
class Lexer, with procedure scan  

module Dragonbook.Symbols  

class Type.  Put types here.  
clas Env.  Linked symbol tables.  

module Dragonbook.Inter for intermediate code  

class Dragonbook.Lexer. lexer  
class Dragonbook.Parser. parser  
