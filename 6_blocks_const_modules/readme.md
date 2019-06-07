## Blocks
- block is a piece of code between `do`...`end` keywords for multi-line block or curly braces (`{}`) for single line block
- some method can take block as a special kind of argument
- these method can pass arguments to the block when executes them by `| |` at the start of the block
## Block Local Variables
- Block arguments shadow same name variables in outer scope
- Variables defined in block body don't shadow outer scope
- Block local variables solve this problem
## Blocks Are CLosures
- scope issures when return method is called
- memory problem
## Other Uses for Blocks
- time measurement
- transaction - AOP programing
## Block Limitations
- Can only pass one block into a method
- Blocks can't be passed around between methods
- Passing the same block to serveral mehtods isn't DRY
## From Block to Proc
- create proc
    - Proc.new { }
    - proc{ }
    - user `&` in the method params
- call proc
    - p.call "param"
    - p.yield "param"
    - p.("param)
    - p.["hello"]
## Lambdas
- lmd = lambda {|params| dosomething }
- also_lmd = ->(params) { dosomething }
## Diff between Procs and Lambdas
- Procs are like blocks; Lambdas are like anonymous methods
- Lambdas are strict about their arguments
    - lambdas: too many or too few arguments cause an exceptio
    - Procs: extra argumetns discard, missing argumetns set to `nil`
- `return` and `break` behave differently in procs and lambdas
    - Procs: return is executed in the scope where the block was defined; `break` isn't allowed outside loop
    - Lambdas: `break` and `return` both return control to the caller
- However, `next` behaves the same  
## Trick: Symbol to Proc Conversion
## Constants
- class name are constance
## Module
- can wrap method, class, module
- access by class and module like constants
## Mixins
