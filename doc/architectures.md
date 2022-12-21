# bass Architectures
Most compilers can compile code to every target platform by using different backends. bass is no exception to this, but it offers the possibility to write an custom backend in minutes and by just using an text editor.

> **Note:**<br/>
> The term 'architecture file' usually refers to a string file used by the Table-Architecture-Backend.

Over the past few years many complaints about the 'assembly syntax' had reached us. Fact is that almost every CPU in the world do have more then one assembly language for it. In other words: We cannot make it right. The Author of each file had to make a decission, and we are always open for suggestions. At the end of the day an assembly syntax is always also 'just' a flavor. And there is no reasons to not have different versions side by side.

## Where to find and put Architecture Files?
bass will look at this locations and in this order for architecture files:

- `{home directory}`/bass/architectures/
- `{bass binary}`/architectures/

This is also the place to look up for installed architectures.

## Using and writing Architecture Tables
Architecture files are plain text files with one instruction in each line. This could be an command, a comment, or a token pair. 
Of this, the token pair requires the most exploration. The syntax is simple:

The left hand side (LHS) represents the contents (syntax) of the assembly file, and the right hand side (RHS) represents the binary output. 

```cpp
<LHS>    ;<RHS>
// WDC6502
nop      ;$ea
```
> Keep in mind to always use **lower** case for the left hand side assembly syntax.

This example is straight forward: `nop` is translated to the value `0xEA` and will be put into the current position of the output binary.

### LHS Tokens
bass always tries restrict architecture files as little as possible. The LHS syntax only knows two reserved states:

* The first character is a `#`, because this indicates defines or command calls
* `*` indicate parameters and how many bits are used.

```cpp
#endian lsb

// WDC6502
nop            ;$ea
cmp #*08       ;$c9 =a
cmp (*08,x)    ;$c1 =a
cmp (*08),y    ;$d1 =a
cmp *16,y      ;$d9 =a
cmp *08,x      ;$d5 =a
cmp *16,x      ;$dd =a
cmp *08        ;$c5 =a
cmp *16        ;$cd =a
```

While these compares show different syntax flavors, this example only denotes different `08` and `16` bit parameters.

Bass is always working from top to bottom. During the assembly Stage, scanning is conducted from top to bottom until the first match is found. Everything after this match is ignored. 


### RHS Tokens
The right side holds the construction rule. This rule contains constants, parameters and instruction tokens which instruct the compiler. See for example:

```cpp
// WDC6502
nop            ;$ea
cmp *08,x      ;$d5 =a
cmp *16,x      ;$dd =a
cmp *08        ;$c5 =a
cmp *16        ;$cd =a
```
`nop` -> constant value `0xEA`.

`cmp *16,x` -> constant value `0xDD` followed by the two bytes of the first parameter. Parameters will always have increasing letters starting at `a` from the left to the right. `=` indicates the *strong* expectation of `a` being a 16-Bit value. If this is not the case, this line will not result in a match.

`cmp *08,x` -> constant value `0xD5` followed by one byte of the first parameter. Again we expect a *strong* match in terms of the used bits.

Since the scanner works from top to bottom of the file the importance of using exact `!`, strong `=` or weak `~` fitting values is highly relevant. This example shows an architecture which would never reach the second line: 

```cpp
cmp *16        ;$cd =a
cmp *08        ;$c5 =a
```
Because an 8-bit value would always fit into a 16-bit-or-less parameter indicated here.

> **Note:**<br>
> The following list is under construction.

Code | Descr | Example
--- | --- | ---
`$` | hex constant | `nop ;$ea`
`%` | binary constant | `nop ;%1110 %1010`
`!` | exact value required | `cmp *16  ;$cd !a` needs exactly 16-bit param
`=` | strong value required | `cmp *16 ;$cd =a` needs 16-bit or less param
`~` | weak value required | `cmp *16 ;$cd ~a` needs any bit length param
`+` | relative | `bra *08 ;$80 +2a` data-pc+2
`-` | relative | `bra *08 ;$80 -2a` data-pc-2
`*` | repeat | `asl #*08 ;*a:$0a` a times: data repeated
`>>` | shift right | `shr *16 ;$cd >>01a` data >> 1
`<<` | shift left | `shl *16 ;$cd <<01a` data << 1
`+>>` | relative shift right | `bra *24 ;$cd +4>>02a` data-pc+4 >> 2
`N` | negative | `neg *16 ;$cd Na` -data
`N>>` | negative shift right | `neg *16 ;$cd N>>01a` -data >> 1
`C` | compliment | `bic *16 ;$cd Ca` ~data
`C>>` | compliment shift right | `bic *16 ;$cd C>>01a` ~data >> 1
`D` | decrement | `dec *16 ;$cd Da` --data
`D>>` | decrement shift right | `dec *16 ;$cd D>>01a` --data >> 1
`I` | increment | `inc *16 ;$cd Ia` ++data
`I>>` | increment shift right | `inc *16 ;$cd I>>01a` ++data >> 1
`+=` | addition | `add *16 ;$cd +=02a` data += 2
`-=` | subtraction | `add *16 ;$cd -=02a` data -= 2



### Commands
Commands can and should be used to set the assembler into the right operation state.

Each architecture description that does not call `#endian` and `#directive` in the first few lines can be considered dangerous. Authors should never assume "default behaviour", so that users can mix and match architectures in the same project as they need to.

#### `#directive <name> <bytesize>`
Defines that the directive `name` will be exactly `<bytesize>` bytes.

Default values are:
```cpp
#directive db 1 // Direct Byte
#directive dw 2 // Direct Word
#directive dl 3 // Direct Long
#directive dd 4 // Direct Double
#directive dq 8 // Direct Quad
```
> **Note:**<br/>
> If you mix different architectures back and forth it might be that architecture B sets custom directives, but architecture A does not. This means that B changes the sizes, and A does not change them back. This can lead to very stupid errors that are hard to trace. Whenever you write a custom architecture, make sure to set all the directives!

#### `#endian msb` and `#endian lsb`
Set the current architecture to be big or little endian.

Default value is:
```cpp
#endian lsb // Little Endian
```
#### `#include <path/name>`
Includes the full content of `<path/name>.arch` file into the current one

## Custom Backends
Tables have two big flaws

* They are not as fast as real code since a lot of string compares are used for each instruction. Compiling huge projects can and will be slow
* They are dumb. Complex architectures and nested register features result to large architecture files, since there is no way to handle them in a smarter way.

But there is a solution for both: Extend the bass source code and handle some or all of the assembling using custom C++ routines.

### The architecture interface
`todo`

### Add a hardcoded backend
Given your new Architecture is called `foo` and you want to add it into bass just follow these steps:

**1.** Create a the new subfolder for your Architecture like `bass/architecture/foo/`

**2.** Create `foo.hpp` in your new folder and fill it with an minimalistic struct like
```cpp
struct Foo : Architecture {
  Foo(Bass& self);

  // called on each assemply line:
  auto assemble(const string& statement) -> bool override;
};
```
The constructor might be extended as needed. However, usually there is no need to do this. 

**3.** Now create the `foo.cpp` besides of the header and also fill it with some minimalistic implementation details:
```cpp
Foo::Foo(Bass& self) : Architecture(self) { }

auto Foo::assemble(const string& statement) -> bool {
  print(statement, "\n");
  return true;
}
```
The `assemble` command will be called for each assembly line that needs a binary output. These lines already represent the static output after macro features and everything else have completed.

`TODO: more?`


**4.** Include `foo.hpp` in the main `bass.hpp`, and `foo.cpp` at the `bass.cpp`

**5.** Add the usage of your code inside of the `assemble.cpp` file, somewhere around line 90.
```cpp
if(s == "none") architecture = new Architecture{*this};
  // <--- here!
else {
  architecture = new Table{*this, readArchitecture(s)};
}
```

**6.** Notice that implementing an full assembler from scratch is too much work, and use the 'extend' approach instead.


### Extend the Table Backend
`todo` As above. But extend the original `table` class and pass everything though it that is not of your concern.
