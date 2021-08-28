# Base Commands

## architecture, arch
The main difference between Bass and most other assemblers is, that it does not target to an single architecture or system. Thanks to its table driven approach it's possible (and yet necessary) to choose the target architecture. 

It is possible (but not recomended) to switch back and forth between multiple architectures at any time.

Syntax:
```html
architecture <name>
```
 * `<name>` - Switch to this target architecture by looking for the file `architectures/<name>.arch`. First it will look in `~/bass/`, then relative to the location of itself.

>**Note:**<br/> 
> `arch` is deprecated and might be removed soon.

## base
Syntax:
```html
base <offset>
```
This command creates a signed displacement against the origin value, which is used when computing the pc (program counter) value for labels. This command allows mapping file address space into a virtual memory address space. It could be used for subsystems or bank switching.

## db, dw, dl, dd, dq, ...
Inserts binary data directly into the target file. 

Syntax:
```html
db ("<string>" | <variable> | <const>) [, ...]
```

Sizes:
command | size
--- | --- 
`db` | 1 Byte
`dw` | 2 Byte
`dl` | 3 Byte
`dd` | 4 Byte
`dq` | 8 Byte
 
>**Note:**<br/> 
> Like `Integer` in other languages the length of this commands depends on the architecture. Besides of `db` all sizes may change from architecture to architecture. Whenever you activate one.

## delete
Syntax:
```html
delete "<filename>"
```
This command deletes a file from disk. Useful for removing temporary work files needed by a project being assembled.

## ds
Syntax:
```html
ds <offset>
```
Seeks forward or backward from the current output file write address. The value can be positive (to seek forward) or negative (to seek backward.) This is useful for skipping bytes when in file modification mode.

## endian
Syntax:
```html
endian <lsb | msb>
```
This command controls whether multi-byte values (eg from dw and dd) are output in little-endian (lsb) or big-endian (msb) format. Default is lsb.

>**Note:**<br/> 
> Most architectures (should) call this command when they get activated. This may lead to confusion, so keep it in mind.

## copy
Syntax:
```html
copy <source_adress>, <target_adress>, <length>
```
This command copies a block from the currently open file to another location within the file. It does this by reading the entire block in first, and then writing said block out, so be careful with overlapping addresses.

## fill
Syntax:
```html
fill <length> [, <with>]
```
Inserts <length> number of bytes into the target file. The default fill byte is `0x00`, but can be specified via <with>.

## include
Syntax:
```html
include "<filename>"
```
Includes another source file in place of this command.

>**Note:**<br/> 
> This command is parsed in the very first phase, and is only noted here for  completeness. At the time when include get applied no other commands had been progressed. So do not attempt conditional recursion on the same source file, as this will result in an infinite loop which will eventually exhaust all memory. 

## insert
Syntax:
```html
insert [<name>, ] "<filename>" [, <offset>] [, <length>]
```
This command inserts a binary file into the target file. You can optionally specify a name, offset and length. If you specify a name, it will create a label by the given name, which contains the address where the data begins, and it will also create name.size, which contains the size of the included data. If you specify an offset, it will seek that far into the referenced filename before copying the data. If you want to specify a length, you must specify an offset first, and the length will determine the maximum number of bytes to copy from the referenced filename.

### map
Syntax:
```html
map <char> [, <value>] [, <length>]
```
Modifies the mappings for strings passed to db, dw, etc. This can be used to map strings to custom tilemaps that do not follow traditional ASCII values.

`<char>` is the first value to modify, `<value>` is the value to map said char to, and `<length>` can be used for contiguous entries. 

For instance, if A-Z appear sequentially, give a value of 26 for the length, to avoid having to declare 26 separate assignments. 

```cpp
map 'a', 0x01, 26
```
Each step of length increments both the char and value by exactly one, so the characters must be contiguous with both ASCII and your custom map for this to work.

If you wish to restore the table to its default ASCII values, use the following command:
```cpp
map 0, 0, 256
```

## origin
Syntax:
```html
origin <offset>
```
This command seeks the output file write cursor to the specified location.

## output
Syntax:
```html
output "<filename>" [, <create>]
```
This command can be used in place of the `-o filename [-create]` command-line argument, or in addition to it, and can open multiple files sequentially for output (only one output file can be open at a time.) The `<create>` parameter, if specified, states to overwrite the target file if it already exists. Otherwise, the file is opened in modification mode.

## print (notice, warning, error)
Prints information to the terminal. Useful for debugging. Using `error` aborts assembly, all other functions will not.

Print is the swiss army knife of all commands. It allows you to print multiple parameters to the screen. Strings, Characters, Numbers, Variables, Constants and Defines works.

Syntax:
```html
print <something> [, <something>]
```

The print directive also supports formatting prefixes for variable or constant expressions. These are: `binary`, `hex`, and `char`.

Example:
```h
print "%", binary:15     //prints %1111
print "$", hex:65536     //prints $10000
print "'", char:65, "'"  //prints 'A'
```

>**Note:**<br/> 
> Defined parameters will be evaluated as single parameter, but just be referenced when used inside of a string.<br/>
> Example:
> ```as
> // v15-18
> constant a = 2
> define x = 1 + a
> print {x}, ", {x}\n"        // prints "3, 1 + a\n"
> ```
> This may lead to wrong assumptions about the strings content if you debug using print commands. 

## Queues
The queue feature works like a smal stack for certan system states `<state>` such as `origin`, `base` and `pc`. It works in a 'last in first out' manner.

>**Note:**<br/> 
> Right now all values share one queue! In other words you should be very carefull about the order if you 'store' and 'reload' many values at once. <br/>
> We consider this as dangerous. The feature will redesigned in the near future.

### dequeue
Syntax:
```html
dequeue <state>, ...
```
Restores the given state(s) from the queue.

### dequeue
Syntax:
```html
enqueue <state>, ...
```
Puts the given state(s) into the queue.
