This repository include a variety of AHK scripts, mostly used to improve typing:
- [`arrows.ahk`](#arrowsahk): Allows to type a variety of arrows (▶, ↑, ↗, ⤷, ⇒, ⇔, …)
- [`quote.ahk`](#quoteahk): Allows to type better quotation marks (“”, «  », ‘’…).
- [`characters.ahk`](#charactersahk): Offers access to some special characters (·, •, ×, æ, …), and extends the capabilities of the French QWERTZ layout for an ANSI keyboard.

## What the script do…

### arrows.ahk

`arrows.ahk` allows to type a variety of arrows by using <kbd>Alt</kbd>+<kbd>A</kbd> and a set of directions:
1. Press <kbd>Alt</kbd>+<kbd>A</kbd>, do not release the <kbd>Alt</kbd> key.
2. Press the directions corresponding to the desired arrow (see below).
3. Release the <kbd>Alt</kbd> key.

| Arrow | Directions to type | | Arrow | Directions to type | | Arrow | Directions to type |
|:-----:|:-------------------|-|:-----:|:-------------------|-|:-----:|:-------------------|
| `◀`   | `←`                | | `←`   | `← ←`              | | `⇐`   | `← ← ←`            |
| `▶`   | `→`                | | `→`   | `→ →`              | | `⇒`   | `→ → →`            |
| `▲`   | `↑`                | | `↑`   | `↑ ↑`              | | `⇑`   | `↑ ↑ ↑`            |
| `▼`   | `↓`                | | `↓`   | `↓ ↓`              | | `⇓`   | `↓ ↓ ↓`            |
|       |                    | | `↗`   | `↗` or `↗ ↗`       | | `⇗`   | `↗ ↗ ↗`            |
|       |                    | | `↘`   | `↘` or `↘ ↘`       | | `⇘`   | `↘ ↘ ↘`            |
|       |                    | | `↙`   | `↙` or `↙ ↙`       | | `⇙`   | `↙ ↙ ↙`            |
|       |                    | | `↖`   | `↖` or `↖ ↖`       | | `⇖`   | `↖ ↖ ↖`            |
|       |                    | | `↔`   | `← →` or `→ ←`     | | `⇔`   | `← → ←` or `→ ← →` |
|       |                    | | `↕`   | `↑ ↓` or `↓ ↑`     | | `⇕`   | `↑ ↓ ↑` or `↓ ↑ ↓` |
|       |                    | | `↰`   | `↑ ←`              | |       |                    |
|       |                    | | `↱`   | `↑ →`              | |       |                    |
|       |                    | | `⤶`   | `↓ ←`              | |       |                    |
|       |                    | | `⤷`   | `↓ →`              | |       |                    |
|       |                    | | `⤴`   | `→ ↑`              | |       |                    |
|       |                    | | `⤵`   | `→ ↓`              | |       |                    |

In order to cover a wide range of keyboards, different keys can be used for said directions:
| Direction | Key that can be used                                                              |
|:---------:|:----------------------------------------------------------------------------------|
| `←`       | <kbd>←</kbd> / Numpad <kbd>4</kbd> / Numpad <kbd>←</kbd>                          |
| `→`       | <kbd>→</kbd> / Numpad <kbd>6</kbd> / Numpad <kbd>→</kbd>                          |
| `↑`       | <kbd>↑</kbd> / Numpad <kbd>8</kbd> / Numpad <kbd>↑</kbd>                          |
| `↓`       | <kbd>↓</kbd> / Numpad <kbd>2</kbd> / Numpad <kbd>↓</kbd>                          |
| `↗`       | <kbd>PgUp</kbd> / Numpad <kbd>9</kbd> / Numpad <kbd>PgUp</kbd>                    |
| `↘`       | <kbd>PgDn</kbd> / Numpad <kbd>3</kbd> / Numpad <kbd>PgDn</kbd>                    |
| `↙`       | <kbd>End</kbd> / <kbd>RShift</kbd> / Numpad <kbd>1</kbd> / Numpad <kbd>End</kbd>  |
| `↖`       | <kbd>Home</kbd> / <kbd>Enter</kbd> / Numpad <kbd>7</kbd> / Numpad <kbd>Home</kbd> |

### quote.ahk

`arrows.ahk` allows to easily type quotation marks: “…”, « … », ‘…’.

Those quotation marks are typed using:
- <kbd>Alt</kbd>+<kbd>2</kbd> for opening quotation marks,
- <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>2</kbd> for closing quotation marks.

The available types of quotation are looped through by pressing <kbd>2</kbd> again, without releasing <kbd>Alt</kbd>.

For example, the opening double quote `“` is typed with a simple <kbd>Alt</kbd>+<kbd>2</kbd>, while the closing single quote `’` is type by pressing <kbd>2</kbd> three times in a row while maintaining <kbd>Alt</kbd>+<kbd>Shift</kbd>.

### characters.ahk

`characters.ahk` serves two purposes:
- Offering easy access to some special characters,
- Compensating for the lack of keys on an ANSI keyboard when using a QWERTZ layout.

Globally useful shortcuts:
| Character                   | Shortcut                                                    |
|-----------------------------|-------------------------------------------------------------|
| `·`                         | <kbd>Alt</kbd>+<kbd>.</kbd> / <kbd>AltGr</kbd>+<kbd>.</kbd> |
| `•`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>.</kbd>                |
| ` ` (narrow no-break space) | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd>           |
| `×`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>3</kbd>                |

Shortcuts relative to the QWERTZ keyboard layout:
| Character                   | Shortcut                                                                            |
|-----------------------------|-------------------------------------------------------------------------------------|
| `<`                         | <kbd>Alt</kbd>+<kbd>y</kbd>                                                         |
| `>`                         | <kbd>Alt</kbd>+<kbd>x</kbd>                                                         |
| `É`                         | <kbd>Shift</kbd>+<kbd>é</kbd>                                                       |
| `È`                         | <kbd>Shift</kbd>+<kbd>è</kbd>                                                       |
| `À`                         | <kbd>Shift</kbd>+<kbd>à</kbd>                                                       |
| `Ç`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>4</kbd>                                        |
| `\`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>7</kbd> / <kbd>Alt</kbd>+<kbd>/</kbd> (Numpad) |

In addition, the following replacement are done when typing:
| Typed  | Replaced by                                                                    |
|--------|--------------------------------------------------------------------------------|
| `,ae`  | æ &nbsp;&nbsp;&nbsp;&nbsp;(with same capitalization)                           |
| `,oe`  | œ &nbsp;&nbsp;&nbsp;&nbsp;(with same capitalization)                           |
| `...`* | … &nbsp;&nbsp;&nbsp;&nbsp;(as a single character)                              |
| `,...` | ... &nbsp;&nbsp;&nbsp;&nbsp;(as three dots, avoiding the previous replacement) |
| `--`   | – &nbsp;&nbsp;&nbsp;&nbsp;(en dash)                                            |
| `---`  | — &nbsp;&nbsp;&nbsp;&nbsp;(em dash)                                            |
| `,--`  | -- &nbsp;&nbsp;&nbsp;&nbsp;(deactivates the previous replacement**)            |

\* The replacement of `...` into a single character `…` is done only when followed by a non-letter character (space, punctuation, new line…).<br>
\** When using `,--` to deactivate the replacement into dashes, such deactivation is maintained as long as `-` (and only `-`) are typed, within 1 second of the previous one.

## How to use

### Using the provided .exe

Just download and run the `.exe` files you want to use.

You might want those files to be run when Windows starts up. To do:
1. Open the Startup folder:
	1. Press the <kbd>Win</kbd> key,
	2. Type `run` then <kbd>Enter</kbd>. It should open the *“Run”* application.
	3. In the text box, type `shell:startup`, then press <kbd>Enter</kbd>.
2. In the startup folder, place the executable files you want to use, or shortcuts to said files.

### Customizing

Download and install [AutoHotKey (AHK) v2.0](https://www.autohotkey.com/).
You can then use that to write you own script (a `.ahk` file), and either run it directly or compile it into a `.exe`.

If you use VS Code, I recommend the AHK++ extension from Mark Wiemer.

… Or just ask me.
