# Bass

Bass is an table based, multi architecture and cross platform, macro assembler written by Near until version 17. This tool targets at developers or hackers interested into old videogame systems such as NES, SNES, MegaDrive and others.

The original documentation can be found at `/bass/doc/bass.html` inside of each source-package. 

**This is for you if:**
  * you want or need to work low level 
  * dependencies are something that you want to avoid
  * the system is so obscure that you cant find any other compiler but dont want to write your own
  * you like to have strong macro features that allow you to work as if you almost have a higher programming language
  * something dont work, you want to be able to fix it

**This is not for you if:**
  * you look for a higher 'real' programming language
  * you expect an complete toolchain that takes care about all of your needs

You need an higher language compiler for platform *x* that takes care about everything? Then Bass is not for you. But maybe part of an toolchain that you will use.


>**Note:**<br/> 
>Bass works using an multi-pass approach. On the first time it will solve all macro functions, on the second pass it will generate the binary output.

## Basic's
`TODO` speak about the compiling pipeline and stages

### Data Types
`TODO`

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

### if, else, while
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

### Arrays
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

### Expressions
All expressions use an parentheses syntax like `{x}`, this seperate them clean from any variables and constants. However, they can be mixed. 

#### Defines
Defines store content without any interpretation. Since it's possible to use defines in combination with parameters as construction rule, they might give the impression that they can be used like macros and functions. But this is not the case. While they do return a result, it's still just a constructed string without any interpretation. More about constructing defines can be read in the Macros Section of this Document.

```as
// v15-18
define a = "Hello world"
define b = 5.1
define c = (4+3)

print "{a}{b}{c}\n"   // prints "Hello"World5.1(4+3)\n
```

Defines are evaluated from right-to-left order, meaning that expressions such as `{x{y}`} will first expand `{y}`, and then the result of that expression, `{x...}`. In case of an define that is unknown (in it's scope) no error will be trown. It will be passed unresolved to allow manuall evaluation.

Defines are not constant and can be redefined. It is possible to test if a define has been declared or not by using the special syntax: `{defined <name>}`

```as
// v15-18
print "{value}\n"   // prints {value}

if !{defined value} {
  define value = 42
}

print "{value}\n"   // prints 42
```


#### Evaluate
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
Why? Because `print <evaluation n, ...>` takes each argument as evaluating parameter. More about them on 'Macros and Functions'. 



### Labels and Scopes
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

### Macros and Function
Write here about parameters in general

#### Defines


The syntax to use an defined value is to surround it with braches `{<name>}`. Many users tend to use defines equal with constants.



#### Macros
#### Functions


### Built in Functions

### Architecture
The main difference between Bass and most other assemblers is, that it does not target to an single architecture or system. Thanks to its table driven approach it's possible (and yet necessary) to choose the target architecture. 

It is possible (but not recomended) to switch back and forth between multiple architectures at any time.

Syntax:
```
architecture <name>
```
 * `<name>` - Switch to this target architecture by looking for the file `architectures/<name>.arch`. First it will look in `~/bass/`, then relative to the location of itself.