![bass](bass.svg)

# bass Core Features
bass includes a strong macro language that offers a lot of comfort compared to most classic assemblers. Macros are 'smart copy scripts' that move around code to ease the programmers work. They automate copying and inserting sections of code. They do not include any understanding of the copied sections of code - they are a meta language not aimed at extending the functionality of the assembler. It is important not to confuse them with the actual program.

>**Note:**<br/>
>bass works using an multi-pass approach. On the first pass, all macro functions are resolved. On the second pass, the binary output is generated.

## Data Types
### Names
Macros, functions, definitions, variables and constants must follow this format:

```regex
[_A-Za-z][_A-Za-z0-9.]*
```

### Numbers
Valid numbers must follow one of these formats:

```regex
[0-9]+       decimal
0b[01]+      binary
0o[0-7]+     octal
0x[0-9a-f]+  hex
%[01]+       binary
$[0-9a-f]+   hex
```

Numbers may have either - or + as a prefix if desired.

Numbers may also use ' as a separator between digits. For example:

```regex
123'456'789   //same as 123456789
0b1001'0110   //same as 0b10010110
```

### Strings
Strings are encompassed by double-quotes. The following escape sequences for strings are supported:

```regex
\\ = backslash (\)
\' = single-quote (')
\" = double-quote (")
\n = new line
\t = tab
```

Strings may also be concatenated using the ~ operator. This can be used for string construction using definitions:

```regex
"foo" ~ "bar"  //equivalent to "foobar"
```

### Characters
Characters are encompassed by single-quotes. Integer values used inside of expression are evaluated. Characters support the same escape sequences as strings.

> **Note** that characters are not escaped for block tokenization. That means '\b' must be used instead of ';' to avoid splitting the character into two separate statements.

## Syntax:
In bass, the semicolon acts as a statement separator (and not as a statement terminator). This means that a semicolon is not required at the end of each line.

### Variables and Constants
Variables and constants fulfil the same function as in common programming languages. Both are constructs inside of the macro engine. By default they are not present in the target system but only in the compilers virtual machine.

```as
// v15-18
constant a = 12
variable a = 0
a = (12 + 2) * 2

print a, "\n"   // prints "28\n"
```

Variables and constants do not share the same namespace. This means that he `constant a` is not the same as the `variable a`. If both are present **variables** will be used first. More about this behaviour can be found at the *Scopes* Section.

## if, else, while
bass supports traditional conditional expressions.

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
All expressions use an parentheses syntax like `{x}`. This separates them from any variables and constants. However, they can be mixed.

### Definitions
Definitions (using the command sequence define) store content without any interpretation. Since it is possible to use definitions in combination with parameters as a construction rule, the impression that they can be used like macros and functions can arise. This is not the case: While they do return a result, this result is only a constructed string without any interpretation. More about constructing definitions can be read in the Macros Section of this Document.

```as
// v15-18
define a = "Hello world"
define b = 5.1
define c = (4+3)

print "{a}{b}{c}\n"   // prints "Hello"World5.1(4+3)\n
```

Definitions are evaluated in order from right to left. An expression such as `{x{y}`} will first expand `{y}`, and then the result of that expression, `{x...}`. In case of an unknown definition (in terms of scope) no error will be thrown. The definition will be passed unresolved to allow manual evaluation.

Definitions are not constant and can be redefined. It is possible to test if a definition has been declared by using the following syntax:: `{defined <name>}`

```as
// v15-18
print "{value}\n"   // prints {value}

if !{defined value} {
  define value = 42
}

print "{value}\n"   // prints 42
```


### Evaluate
The evaluation feature offers the ability to generate (some) macro code during compilation. For example:

```as
// v15-18
define x = 1 + 2 + a
constant a = 3
print "{x}\n"      //prints "1 + 2 + a\n"
evaluate x = {x}   //evaluates x = 1 + 2 + (a=3)
print "{x}\n"      //prints "6\n"
```

The parentheses `{x}` is defined right from the start while the variable `a` is unknown. However, during evaluation the variable `a` is known.

In this special case the following example would also be evaluated:
```as
// v15-18
constant a = 2
define x = 1 + a
print {x}, "\n"        //also prints "3\n"
```

This is due to `print` taking each argument as evaluating parameter. More on this topic is in the section on 'Macros and Functions'.


## Labels
Like in every other assembler it is possible to 'label' a certain point within the code and use this address within the program.

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

A label can be set using `<name>:` . Valid names are the same as for constants (In fact, labels *are* constants).

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

Its also possible to use labels without names by using `-` and `+`.
```as
-; beq +; lsr; dex; bne -; +

-; bra ++  //A: go to D
-; bra +   //B: go to C
+; bra -   //C: go to B
+; bra --  //D: go to A
```

The previous `-` label can be referenced with `-`. The next `+` label can be referenced with `+`. The label before the `-` label can be referenced with `--`. The label after the `+` label can be referenced with `++`.

Deeper scoping is not supported. Named labels have to be used to address additional scopes.

## Namespaces
Macros, definitions, expressions, variables, arrays and constants have a scope. This allows reuse of common names like loop and finish inside of scopes without causing declaration collisions.

**Note:**<br/>
> In bass this also means that these elements do not share the *same* scope. Macros, definitions, expressions, variables, arrays and constants **DO NOT** share the same namespace. Instances of all these elements with the same name are possible without collision .<br/>
> Note: This is considered dangerous behaviour of bass and might change soon.

```as
variable offset = 16

namespace information {
  variable length = 32

  print "+", offset, ", "
  print "+", length, ", "
}

print "-", offset, ", "
print "-", information.length, "\n"
// +16, +32, -16, -32
```

Each namespace can contain the same elements as the root namespace could. All scopes get parsed and progressed together with the code itself.

## Macros, Generators and Functions
bass gives provides some options when it comes to write macros and "functions". The old fashioned definition of a function (in terms of programming languages) is "a callable block of program code that accepts input parameters and returns a result".

By this definition bass does *not* support functions. At least not now.

Currently, bass supports `define`s which take parameters and return a value. But due to their functional nature they do not contain a code block which could hold assembly instructions.

In addition, bass supports `macros` which take parameters and contain a block of assembly instructions, but these do not return a result.

But why can a define return an inline-result and macros can not? Let us follow this example:

```as
// point a
lda #x, foo(baa, x, 12)
// point b
```
A define can return a certain value without creating any cpu code on the target system. So everything is fine.

A macro most likely *will* create code on the target system. But where to put it?
  - At **point A** we would create strange side effects between the macro code and the 'global' code. There is no branch called. There is no routine that saves our registers to stack and pops them back when the macro body is ready. We cannot even be sure there *is* a stack on the unknown target system. In fact we know nothing about the target system. We are just an generic macro language.
  - At **point B** it's obviously too late.

So in conclusion the reason is simple: Because this is not a real programming language, and you are not using a compiler.

Defines and Macros are handy tools that allows you to wrap your 'dirty machine code' into a nice candy package. But at the end of the day, these limitations are by design.

### Generator Defines
We already spoke about defines. But there is a certain reason why we go back to them again: they can hold parameters and a production rule. If you call your define with that parameters you get a result, just like if you would call a function.

```as
define sum(x, y) = ({x} + {y})
lda #x, sum(1,1)
```

**Note:**<br>
> Even though it's not a bug, but more 'not a feature': You cannot nest definition calls. Not linearly, and of course not recursively. At the moment its not possible to call other generators

### Macros
Macros can take zero or more arguments, and name overloading with differing arity is possible. Recursion is supported, but requires conditionals in order to break infinite recursion. Macros must be declared before being used, and can be re-declared later on.

By default, macro parameters are simply the names of the values, and are passed in as defines. It is also possible to specify the type of the parameter, which will cause the invocation to pass the value in as the requested type. Supported types are: define, evaluate and variable.

```as
macro seek(offset) {
  origin {offset} & 0x3fffff
  base 0xc00000 | {offset}
}

seek(0xc08000)

macro test(define a, evaluate b, variable c, d) {
  //{d} has no type, so it defaults to "define d"
  print "{ a } = {a}, { b } = {b}, c = ", c, ", { d } = {d}\n",
}

test(1+2, 1+2, 1+2, 1+2)   //{ a } = 1+2, { b } = 3, c = 3, { d } = 1+2\n
```

So macros can be invoked with the syntax:
```html
macroName(<parameterA>, <parameterB>, ...)
```

If a macro is not matched, there is no error, the literal macroName(...) will be passed along to the assembly phase. Note that macros cannot appear inside expressions: the macro invocation must be the entire statement.

You can also use labels in macros. But because expanded macros are passed directly to the assembler, a macro with a label name cannot be expanded twice in the same scope, or the label name will be declared twice, resulting in an error. The special token `{#}` can be used in a label name, where it will be substituted with a numeric value that increments every time a macro is invoked.

Example:
```as
macro test() {
  foo{#}:
  print "{#} - Ah ah ah ah, staying alive\n",
}

test()  // _0_ - Ah ah ah ah, staying alive
test()  // _1_ - Ah ah ah ah, staying alive
```

In terms of scopes every macro create it's own stack frame just as namespaces do. More about stack frames can be found at *Scopes*.

## Scopes
Every time a macro is invoked, a new object stack frame is created, which will supercede all previous stack frames. All macro arguments, as well as any objects declared inside of said macro, are appended to the new frame. When the macro completes execution, said frame is destroyed, and said objects are lost. Note that this does not apply to constants, which must always be placed in the global frame to support forward-declarations.

### Global and Parent Scopes

It is however possible to access the global frame by prefixing object creation with the `global` keyword, for example:

```as
macro square(value) {
  global evaluate result = {value}*{value}
}

square(16)

print "{square.result}\n"  //prints 256
```

Further, it is also possible to reference the parent frame by prefixing object creation with the `parent` keyword, which is useful for recursive macros, or to represent macro return values. For example:

```as
macro factorial(variable n) {
  parent variable result = 1
  if n >= 1 {
    factorial(n - 1)
    result = n * factorial.result
  }
}

factorial(10)
print factorial.result, "\n"  //prints 3628800
```

### Nested Scopes

As you see the keywords `global` and `parent` you might ask 'Why?' since you may expect that they are not needed since you have nested scopes just as in other languages. But no, bass up to version 17 do **not** has nested scopes. You can access the global, and the parent frame. But this is all you got. Even thought you can open deeper namespaces than just this.

**Note:**<br/>
> bass v18 and above do support nested scopes.

### Inline macros
Macros can also be created without a stack frame by using the `inline` keyword, which will cause any objects created inside of them to appear in the same frame as the macro was invoked in. For example:

```as
inline square(variable value) {
  variable result = value * value
}

function main {
  square(16)
}

print main.result, "\n"  //prints 256
```

This is obviously not a good idea to use for recursive macros.

## Built-in Functions and Commands
This is a list of all built-in functions and commands. The difference between these groups is not only the syntax, but also that commands are used to control the way how bass compiles your code, while built-in functions act like hand written macros.

>**Note:**<br/>
>Please note that the syntax for commands and built-in functions is similar. It is most likely that many commands will be removed and be replaced with a set of namespace-scoped built-in functions in the future.

* [Commands](./commands.md)
* [Built-in functions](./built-in-functions.md)


## Final Words
Hopefully this has been informative. The best way to learn is through practice, so please do experiment and see what you can come up with!

Thank you for using bass!
