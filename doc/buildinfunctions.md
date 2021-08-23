# Base Functions

## assert()
Syntax:
```html
assert(<expression>)
```
Produces an error if the expression evaluates to zero.


## base()
Syntax:
```html
base()
```
Returns the current base adress.

## origin()
Syntax:
```html
origin()
```
Returns the current origin.

## pc()
Syntax:
```html
pc()
```
Returns the current programm counter (origin + base).



# Arrays

## array.size()
Syntax:
```html
array.exists(<name>)
```
Returns the number of elements in an array, or produces an error if the array is not defined.

## array.sort()
Syntax:
```html
array.exists(<name>)
```
Sorts the specified array in ascending order.


# File IO

## file.exists()
Syntax:
```html
file.exists(<filename>)
```
Returns 1 if `<filename>` exists, or 0 if not.

## file.size()
Syntax:
```html
file.size(<filename>)
```
Returns the size of `<filename>` on disk, or produces an error if the file is not found.


## read()
Syntax:
```html
read(<adress>)
```
Reads a byte from the currently open output file, or produces an error if there is no file currently open. The address provided is the origin, or literal file address. The base offset is not factored in when this function is used.

>**Note:**<br/> 
> The resulting values read from a target file are only valid during the write phase of assembly! If you rely on the value read back during a previous pass to control outputting code, bass may assemble the source code incorrectly. Use this function with caution. It is mostly intended for when bass is used in patching mode.
