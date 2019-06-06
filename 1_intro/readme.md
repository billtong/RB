# Variables, nil, Methods, and Scope
irb to enter the ruby shell.  
`nill` - it is a special object that signifies null value but it isn't the primitive
```shell
> nill.class
=> NillClass
```
`.nill` - a method to check is a variable is nil  
```shell
> result = nil
> result.nil?
=>true
```
## marks as part of code
`?` - question mark after methods is a true/false test   
`!` -  exclamation mark is to do something unexpected or dangerous, i.e to modify the object in place instead of returning the modified copy.
`=` - equal mark usually use in virtual attributes
```shell
> a = "  bill  "
> a.strip
=>"bill"
> a
=>"  bill  "
>a.strip!
>a
=>"bill"
```