# New System
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [New System](#new-system)
	- [Download Needed Scripts](#download-needed-scripts)
	- [Enable Umlaut Typing](#enable-umlaut-typing)
	- [Installing Base-System](#installing-base-system)
	- [Compile NeoVIM with YouCompleteMe](#compile-neovim-with-youcompleteme)

<!-- /TOC -->

## Download Needed Scripts
Download and unpack folder

```
$ wget https://github.com/nils-gg/new_system/archive/master.zip
```

```
$ unzip master.zip
```

## Enable Umlaut Typing
This information is taken from the article [Linux and Umlaut Typing](http://idolinux.blogspot.se/2009/02/linux-and-umlaut-typing.html?view=classic) by Gavin Burris, posted Feb. 2009.


> Here is how to type German umlauts, those accent dots above the vowels, in Linux. I did this with a US keyboard on Fedora 10, but it may also work on Redhat or CentOS.

> for the Gnome Desktop:

>   * go to System -> Preferences -> Hardware -> Keyboard on the Gnome menu
>   * select the Layouts tab
>   * click the Layout Options... button
>   * expand Compose key position
>   * check the box Right Ctrl is Compose or Right Win-key is Compose

> for the K Desktop:

>   * go to Control Center on the KDE menu
>   * select Regional & Accessibility
>   * check Keyboard Layouts
>   * choose model Generic 104-key PC
>   * choose layout U.S. English
>   * choose variant basic
>   * go to the Switching Options tab
>   * choose switching policy global
>   * go to the Xkb Options tab
>   * check Enable xkb options
>   * check Compose Key Position
>   * set Right Ctrl or Right Win-key as your Compose Key

> The Right Ctrl or the Right Win key are now a "compose key". With it you can compose symbols by combining two characters. The double-quote then the letter "a" equals an umlaut-a (ä). Tap the compose key, then tap shift+quote for a double-quote, then tap the a-key.

>   * ä is compose, then ", then a
>   * ö is compose, then ", then o
>   * ü is compose, then ", then u
>   * ß is compose, then s, then s

* å is compose, then o, then a

> There are plenty of symbols and accent marks for other languages as well, like grave/acute ticks (à á), circumflex (â), and many other symbols (æ þ µ ® € ¥ ₨ ½ ² ± ° ¿¡). So international!


## Installing Base-System
Programms that are going to be installed:

* **aria2** - Download manager
* **keepassx** - Password manager
* **texmaker** - TEX text-editor
* **calibre** - Bookcollection manager
* **chromium** - Webbrowser
* **MozillaFirefox** - Webbrowser
* **libreoffice** - Microsoft Office clone
* **git** - Version control
* **discount** - Markdown text to HTML converter

* **picins.sty** - TEX-library needed by my mail templates

```
$ ./build_new_system.sh
```

## Compile NeoVIM with YouCompleteMe
Be sure to change $LLVM and $LLVM2 to the latest clang+llvm version in the beginning of the script ([llvm.org](http://llvm.org/releases/)).

```
$ ./build_neovim.sh
```

I tend to also use this script to update NeoVim and YouCompleteMe.
