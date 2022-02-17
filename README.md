![bass](doc/bass.svg)


# bass

bass is a table-based, multi-architecture and cross-platform, macro assembler developed by Near up until version 17. It is targeted at developers and hackers interested in legacy video game consoles such as the NES, SNES, MegaDrive and others.

**bass is for you if:**
  * you want or need to work low level
  * you want to avoid dependencies
  * you target obscure systems that lack any other compiler
  * you want to build your own compiler
  * you want extensive macro features giving you the convenience of a higher-level programming language
  * you want the ability to do root level debugging
  * 
**This is not for you if:**
  * you look for a higher 'real' programming language
  * you expect an complete toolchain that takes care about all your needs

## Supported Systems

| Systems | Processor | State |
| --- | --- | --- |
| Commodore Amiga 500/600 | Motorola 68000 CPU | ![](doc/star.png)![](doc/star.png)![](doc/starless.png) |
| Famicon / NES | WDC6502 CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| Game Boy / Game Boy Color | Z80 CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| Game Gear | Z80 CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| Master System | Z80 CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| Mega Drive / Genesis | Motorola 68000 CPU <br> Z80 APU| ![](doc/star.png)![](doc/star.png)![](doc/starless.png) <br> ![](doc/star.png)![](doc/star.png)![](doc/star.png)|
| MSX1, MSX2, MSX2+, MSX Turbo-R|Z80 CPU |![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| Neo Geo | Motorola 68000 CPU <br> Z80 APU| ![](doc/star.png)![](doc/star.png)![](doc/starless.png) <br> ![](doc/star.png)![](doc/star.png)![](doc/star.png)|
| Nintendo 64 | MIPS VR4300 CPU<br>RDP<br>MIPS 4000 RSP | ![](doc/star.png)![](doc/star.png)![](doc/starless.png) <br>![](doc/star.png)![](doc/star.png)![](doc/starless.png)<br>![](doc/star.png)![](doc/star.png)![](doc/starless.png) |
| PC-Engine / TurboGrafx-16 | (via WDC6502) CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) | 
| SGI VICE | MIPS 4000 CPU+MSP | ![](doc/star.png)![](doc/star.png)![](doc/starless.png) |
| Super Famicon / SNES | WDC6502 CPU<br>Super FX GSU<br>SPC700 SMP | ![](doc/star.png)![](doc/star.png)![](doc/star.png) <br> ![](doc/star.png)![](doc/star.png)![](doc/star.png)<br> ![](doc/star.png)![](doc/star.png)![](doc/star.png)|
| ZX Spectrum 48K/128K+1/128K+2/128K+3|Z80 CPU |![](doc/star.png)![](doc/star.png)![](doc/star.png) |


**Also known:**
| Systems | Processor | State |
| --- | --- | --- |
| Atari Lynx | 65C02 CPU | ![](doc/star.png)![](doc/star.png)![](doc/star.png) |
| [Wonder Swan / Wonderswan Color](https://github.com/thar0x29a/basstess) | NEC V30 CPU | ![](doc/starless.png)![](doc/starless.png)![](doc/starless.png) |
| Pokémon Mini | "MINX" CPU | ![](doc/starless.png)![](doc/starless.png)![](doc/starless.png) |

**Legend:**
  - ![](doc/starless.png)![](doc/starless.png)![](doc/starless.png) incomplete architecture project
  - ![](doc/star.png)![](doc/starless.png)![](doc/starless.png) completed optcodes
  - ![](doc/star.png)![](doc/star.png)![](doc/starless.png) .. that also got covered with tests
  - ![](doc/star.png)![](doc/star.png)![](doc/star.png) .. and real life Example Code for this System



## Releases
Downloads can be found in the [Release Section](https://github.com/ARM9/bass/releases).

**v19** is our current release. It aims to support both, **v14** and newer syntax styles at once.

### Building
Bass requires make and coreutils (msys/cygwin on windows)
```
git clone https://github.com/ARM9/bass.git && cd bass/bass && make
```

## Documentation
  * Online [Handbook](doc/index.md)
