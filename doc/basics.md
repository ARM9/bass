# Bass Core Features
Bass brings a strong macro language that offers alot of comfort compared to most classic assemblers. Thats why it's important to never get confused about the macros, and the actual program to be written. 

Macros are 'smart copy scripts' to move code around for you. But they work on the base of copy and paste. They do not understand the data they handle. They dont extend the Syntax: of the assembly language itself and therefore they are not an extension or even an real 'programming Language'.


`TODO` speak about the compiling pipeline and stages

>**Note:**<br/> 
>Bass works using an multi-pass approach. On the first time it will solve all macro functions, on the second pass it will generate the binary output.

## Data Types
### Names
Macros, functions, defines, variables and constants must be in the following format:

```regex
[_A-Za-z][_A-Za-z0-9.]*
```

### Numbers
Valid numbers must be in one of the following formats:

```regex
[0-9]+       integer
0b[01]+      binary
0o[0-7]+     octal
0x[0-9a-f]+  hex
%[01]+       binary
$[0-9a-f]+   hex
```

Numbers may be prefixed with - or + if desired.

Numbers may also use ' as a digit separator. For example:

```regex
123'456'789  //same as 123456789
0b1001'0110   //same as 0b10010110
```

### Strings
Strings are surrounded by double-quotes. They support the following escape sequences:

```regex
\\ = backslash (\)
\' = single-quote (')
\" = double-quote (")
\n = new line
\t = tab
``` 

Strings may also be concatenated via the ~ operator, which is useful for string construction via defines:

```regex
"foo" ~ "bar"  //equivalent to "foobar"
```

### Characters
Characters are surrounded by single-quotes, and evaluate to integer values which can be used inside of expressions. They support the same escape sequences as strings.

> **Note** that characters are not escaped for block tokenization. That means you must use '\b' instead of ';' to avoid splitting the character into two separate statements.


## Syntax:
### Variables and Constants
Variables and constants are what you would expect them to be. Please keep in mind that both are constructs inside of the macro engine. They will (by default) not be present on the target system but only in the compilers virtual machine.

```as
// v15-18
constant a = 12
variable a = 0
a = (12 + 2) * 2

print a, "\n"   // prints "28\n"
```

Important to know is, that variables and constants are not sharing the same namespaces. In other words: the  `constant a` is not the same as the `variable a`. If both are present variables will be used first. More about that can be found at the *Scopes* Section.

Valid operators are `TODO`

## if, else, while
Bass supports traditional conditional expressions.

```as
// v15-18
variable x = 20

// prints 20a 19a 18a 17a 16b 15b 14b 13b 12b 11b 10b 9b 8c 7c 6c 5c 4c 3c 2c 1c
while x > 0 {
  if x > 16 {
    print x, "a "
  } else if x > 8 {
    print x, "b "
  } else {
    print x, "c "
  }

  x = x - 1
}
```

## Arrays
Arrays of variables can be created. The size of the array is fixed once it has been created, but the array can be redefined later on to another size if desired. Array elements not specified initially are initialized to zeroes.

````as
// v15-18
array[4] x = 1,2,4,8
array[2] y

y[1] = x[3]
print y[0], ",", y[1], "\n"   //prints 0,8

variable i = 0
while i < array.size(x) {   // see array.size build in function
    print x[i], ", "
    i = i + 1
}   // prints 1, 2, 4, 8
````

## Expressions
All expressions use an parentheses Syntax: like `{x}`, this seperate them clean from any variables and constants. However, they can be mixed. 

### Defines
Defines store content without any interpretation. Since it's possible to use defines in combination with parameters as construction rule, they might give the impression that they can be used like macros and functions. But this is not the case. While they do return a result, it's still just a constructed string without any interpretation. More about constructing defines can be read in the Macros Section of this Document.

```as
// v15-18
define a = "Hello world"
define b = 5.1
define c = (4+3)

print "{a}{b}{c}\n"   // prints "Hello"World5.1(4+3)\n
```

Defines are evaluated from right-to-left order, meaning that expressions such as `{x{y}`} will first expand `{y}`, and then the result of that expression, `{x...}`. In case of an define that is unknown (in it's scope) no error will be trown. It will be passed unresolved to allow manuall evaluation.

Defines are not constant and can be redefined. It is possible to test if a define has been declared or not by using the special Syntax:: `{defined <name>}`

```as
// v15-18
print "{value}\n"   // prints {value}

if !{defined value} {
  define value = 42
}

print "{value}\n"   // prints 42
```


### Evaluate
The evaluation feature offers the ability to generate (some) macro code at the compiling runtime. For Example

```as
// v15-18
define x = 1 + 2 + a
constant a = 3
print "{x}\n"      //prints "1 + 2 + a\n"
evaluate x = {x}   //evaluates x = 1 + 2 + (a=3)
print "{x}\n"      //prints "6\n"
```

The parentheses `{x}` is defined right from the start and on this time there is no variable `a` known. However, at the time of it's evaluation it is.


But be aware that in this special case the following example would also be evaluated:
```as
// v15-18
constant a = 2
define x = 1 + a
print {x}, "\n"        //also prints "3\n"
```
Why? Because `print` takes each argument as evaluating parameter. More about them on 'Macros and Functions'. 



## Labels and Scopes
Like in every other assembler its possible to 'label' an certain point in your code and use this adress inside of your program.

```as
architecture snes.cpu

start:
  constant x = $80
  lda x       // af 80 00 00
mid:
  lda #x      // a9 80 00
  jmp start   // 4c 00 00
  jmp mid     // 4c 04 00
```

An label can be set with `<name>:` valid names are the same, as for constants. In fact: Labels *are* constants.

```as
architecture snes.cpu

start:
  constant x = $80
  lda x       // af 80 00 00
mid:
  lda #x      // a9 80 00
  jmp start   // 4c 00 00
  jmp mid     // 4c 04 00

print hex:start, " - ", hex:mid, "\n" // 0 - 4

constant start = 12   // error: cannot be modified
```

`TODO: more`

## Macros and Function
Write here about parameters in general

### Defines


The Syntax: to use an defined value is to surround it with braches `{<name>}`. Many users tend to use defines equal with constants.



### Macros
`TODO: more`

### Functions
`TODO: more`

## Build in Functions and Commands
This is a list of all build in functions and commands. The difference between both groups is not only the Syntax, but also the fact, that commands are used to controll the way how bass is compiling your code. 
Build-in-Functions on the other hand works and act like hand written macros.

>**Note:**<br/> 
>Please note that the syntax for Commands and Build-in-Functions is somewhat simular. It is most likely that many commands will be removed and be replaced with an set of namespace scoped build-in-functions in the future.

- [Commands](./commands.md)
- [Build in Functions](./buildinfunctions.md)


## Final Words
Hopefully this has been informative. The best way to learn is through practice, so please do experiment and see what you can come up with!

Thank you for using bass!