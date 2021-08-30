# bass Architectures
Most compilers can compile code to every target platform by using different backends. bass is no exception to this, but it offers the possibility to write an custom backend in minutes and by just using an text editor.

> **Note:**<br/>
> Speaking of architecture-files usually refers to string files used by the Table-Architecture-Backend.

## Using and writing Architecture Tables
Architecture files are simply text files that have one instruction in each line. This could be an command, an comment, or an token pair. Let's be honest, we read this document because we want to know more about the token pair.

Our syntax is simple: The left side represents what you see in the assembly file, the right side is the result that you want to see as binary output.

```cpp
// <LHS> ;<RHS>
// WDC6502
nop        ;$ea
```
> Please keep in mind to always use **lower** case.

The example is straight forward: `nop` is translated to the value `0xEA` and will be put into the current position of the output binary.

### LHS Tokens
bass always tries restrict architecture files as little as possible. The LHS syntax only know two reserved states:

* The first character is an `#`, because this indicates defines or command calls
* `*` indicate parameters and how many bits are used.

```cpp
// WDC6502
nop            ;$ea
cmp #*08       ;$c9 =a
cmp (*08,x)    ;$c1 =a
cmp (*08),y    ;$d1 =a
cmp *16,y      ;$d9 =a
cmp *16,x      ;$dd =a
cmp *08,x      ;$d5 =a
cmp *16        ;$cd =a
cmp *08        ;$c5 =a
```

These compares come in a lot of syntax flavors, huh? But this is it. It's just a flavor. The only functional stuff on the left side indicates that we have `08` and `16` bit parameters. And that's already the whole syntax: a lot of fancy ASCII plus some pointers are all that we care about.

Remember that bass is always working top down. In the assembly stage we scan top down, until the first matching line. Everything beyond this line will be ignored.


### RHS Tokens
On the right side we find our construction rules. They contain constants, parameters and instruction tokens that tell our compiler what to do. Let's go back to our example.

```cpp
// WDC6502
nop            ;$ea
cmp *16,x      ;$dd =a
cmp *08,x      ;$d5 =a
cmp *16        ;$cd =a
cmp *08        ;$c5 =a
```
`nop` -> constant value `0xEA`.

`cmp *16,x` -> constant value `0xDD` followed by the two bytes of the first parameter. Parameters will always have increasing letters starting at `a` from the left to the right. `=` indicates that we *strongly* expect `a` to be an 16-bit value. If not, this line will not match.

`cmp *08,x` -> constant value `0xDD` followed by the byte of the first parameter. Again we expect the parameter to exactly match the declared width (8 bits, in this case).

Since the scanner works top down it is important to know when to demand exact `!`, strong `=` or weak `~` fitting values. On the following architecture we would never reach the second line:

```cpp
cmp *16        ;$cd ~a
cmp *08        ;$c5 =a
```
...because an 8-bit value would always fit into an 16-bit-or-less parameter as we indicate it here.

> **Note:**<br>
> The following list is under construction.

Code | Descr | Example
--- | --- | ---
`$` | hex constant | `nop ;$ea`
`%` | binary constant | `nop ;%1110 %1010`
`!` | exact value required | `cmp *16  ;$cd !a` needs exactly 16-bit param
`=` | strict value required | `cmp *16 ;$cd =a`
`~` | weak value required | `cmp *16 ;$cd ~a`
`+` | foo | `todo`
`-` | foo | `todo`
`*` | foo | `todo`
`>>` | foo | `todo`
`<<` | foo | `todo`
`+>>` | foo | `todo`
`N>>` | foo | `todo`
`N` | foo | `todo`



### Commands
Commands can and should be used to set the assembler into the right operation state.

Each architecture description that does not call `#endian` and `#directive` in the first few lines can be considered dangerous. Authors should never assume "default behaviour", so that users can mix and match architectures in the same project as they need to.

#### `#directive <name> <bytesize>`
Defines that the directive `name` will be exactly `<bytesize>` bytes.

Default values are:
```cpp
{"db", 1}, {"dw", 2}, {"dl", 3}, {"dd", 4}, {"dq", 8}
```
> **Note:**<br/>
> If you mix different architectures back and forth it might be that architecture B sets custom directives, but architecture A does not. This means that B changes the sizes, and A does not change them back. This can lead to very stupid errors that are hard to trace. Whenever you write a custom architecture, make sure to set all the directives!

#### `#endian msb` and `#endian lsb`
Set the current architecture to be big or little endian.

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
You may extend the constructor as much as you need, but there should be no reason to do so.

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


### Extend the table backend
`todo`
