# <img src="https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg" height="32px" alt="US Flag"> <img src="https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg" height="32px" alt="UK Flag">

This repository include a variety of AHK (AutoHotKey) scripts, mostly used to improve typing:
- [`arrows.ahk`](#arrowsahk): Allows to type a variety of arrows (▼, ↑, ↗, ⤷, ⇒, ⇔, …)
- [`quote.ahk`](#quoteahk): Allows to type better quotation marks (“”, «  », ‘’…).
- [`characters.ahk`](#charactersahk): Offers access to some special characters (·, •, ×, æ, …), and extends the capabilities of the French QWERTZ layout for an ANSI keyboard.

## How to use

### Running those scripts

Download and install [AutoHotKey (AHK) v2.0](https://www.autohotkey.com/).

Download the AHK scripts you want to use or copy their content in one or several `.ahk` file, and run those `.ahk` files. That's it!
Read the doc below to see what those script do.

### Running the scripts when Windows starts

You might want those files to be run when Windows starts. To do so:
1. Open the Startup folder:
	1. Press the <kbd>Win</kbd> key,
	2. Type `run` then <kbd>Enter</kbd>. It should open the *“Run”* application.
	3. In the text box, type `shell:startup`, then press <kbd>Enter</kbd>.
2. In the startup folder, place the script files you want to use, or shortcuts to said files.

### Customizing

You can change those scripts as you wish to fit your needs. Just open it with an editor (Notepad, VS Code, …).

You can refer to the [AHK Documentation](https://www.autohotkey.com/docs/v2/). If you use VS Code, I recommend the AHK++ extension from Mark Wiemer.

… You can also ask me if you want something.


## What the scripts do…

### `arrows.ahk`

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

### `quote.ahk`

`arrows.ahk` allows to easily type quotation marks: “…”, « … », ‘…’.

Those quotation marks are typed using:
- <kbd>Alt</kbd>+<kbd>2</kbd> for opening quotation marks,
- <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>2</kbd> for closing quotation marks.

The available types of quotation are looped through by pressing <kbd>2</kbd> again, without releasing <kbd>Alt</kbd>.

For example, the opening double quote `“` is typed with a simple <kbd>Alt</kbd>+<kbd>2</kbd>, while the closing single quote `’` is type by pressing <kbd>2</kbd> three times in a row while maintaining <kbd>Alt</kbd>+<kbd>Shift</kbd>.

### `characters.ahk`

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


# <img src="https://upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg" height="32px" alt="Drapeau Français">

Cette archive contient des scripts AHK (AutoHotKey), servant à améliorer l'écriture au clavier :
- [`arrows.ahk`](#flèches-arrowsahk): Permet d'écrire diverses flèches (▼, ↑, ↗, ⤷, ⇒, ⇔, …)
- [`quote.ahk`](#guillemets-quoteahk): Permet d'écrire des guillemets (“”, «  », ‘’…).
- [`characters.ahk`](#autres-caractères-spéciaux-charactersahk): Apporte un accès simplifié à certains caractères spéciaux (·, •, ×, æ, …), et complète les capacités d'un clavier ANSI utilisé en QWERTZ.

## Utilisation

### Lancer les scripts

1. Télécharger et installer [AutoHotKey (AHK) v2.0](https://www.autohotkey.com/).
2. Télécharger les scripts AHK à employer, ou copier leur contenu dans un ou plusieurs fichiers `.ahk`, et lancer ces fichiers `.ahk`. Ça y est ! Lisez la doc ci-dessous pour savoir ce que ces scripts font.

### Lancer les scripts au démarrage de Windows

Pour que Windows lance automatiquement ces scripts au démarrage :
1. Ouvrez le dossier de démarrage :
	1. Appuyez sur la touche <kbd>Win</kbd>,
	2. Tapez `run` puis <kbd>Entrer</kbd>. Ça devrait lancer l'application *“Run”*.
	3. Dans la boîte textuelle, tapez `shell:startup`, puis appuyez sur <kbd>Entrer</kbd> (ou cliquez “OK”).
2. Dans le dossier de démarrage ainsi ouvert, mettez les scripts `.ahk` que vous désirez utiliser, ou des raccourcis vers ces fichiers.

### Personnalisation

Vous pouvez éditer ces scripts comme vous le souhaitez pour les adapter à vos besoins et usages. Il suffit de les ouvrir avec un éditeur (Notepad, VS Code, …).

Vous pouvez vous référer à la [Documentation de AHK](https://www.autohotkey.com/docs/v2/). Si vous utilisez VS Code, je recommande l'extension AHK++ de Mark Wiemer.

… Vous pouvez aussi me demander.

## Ce que ces scripts font exactement

### Flèches : `arrows.ahk`

`arrows.ahk` permet d'écrire aisément des flèches en utilisant <kbd>Alt</kbd>+<kbd>A</kbd> puis une série de directions :
1. Appuyez sur <kbd>Alt</kbd>+<kbd>A</kbd>, et maintenez la touche <kbd>Alt</kbd>.
2. Entrez les directions correspondant à la flèche désirée (voir tableaux ci-dessous).
3. Relâchez la touche <kbd>Alt</kbd>.

| Flèches | Directions à entrer | | Flèches | Directions à entrer | | Flèches | Directions à entrer |
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

Pour s'adapter à une large gamme de clavier, différentes touches peuvent être utilisées pour entrer ces directions :
| Direction | Touches utilisables                                                               |
|:---------:|:----------------------------------------------------------------------------------|
| `←`       | <kbd>←</kbd> / Numpad <kbd>4</kbd> / Numpad <kbd>←</kbd>                          |
| `→`       | <kbd>→</kbd> / Numpad <kbd>6</kbd> / Numpad <kbd>→</kbd>                          |
| `↑`       | <kbd>↑</kbd> / Numpad <kbd>8</kbd> / Numpad <kbd>↑</kbd>                          |
| `↓`       | <kbd>↓</kbd> / Numpad <kbd>2</kbd> / Numpad <kbd>↓</kbd>                          |
| `↗`       | <kbd>PgUp</kbd> / Numpad <kbd>9</kbd> / Numpad <kbd>PgUp</kbd>                    |
| `↘`       | <kbd>PgDn</kbd> / Numpad <kbd>3</kbd> / Numpad <kbd>PgDn</kbd>                    |
| `↙`       | <kbd>End</kbd> / <kbd>RShift</kbd> / Numpad <kbd>1</kbd> / Numpad <kbd>End</kbd>  |
| `↖`       | <kbd>Home</kbd> / <kbd>Enter</kbd> / Numpad <kbd>7</kbd> / Numpad <kbd>Home</kbd> |

### Guillemets : `quote.ahk`

`arrows.ahk` permet d'écrire aisément les guillemets : “…”, « … », ‘…’.

Pour cela, on utilise :
- <kbd>Alt</kbd>+<kbd>2</kbd> pour ouvrir les guillemets,
- <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>2</kbd> pour fermer les guillemets.

On boucle parmi les guillemets disponibles en maintenant la touche <kbd>Alt</kbd> et en appuyant encore sur la touche <kbd>2</kbd>.

Par exemple, on ouvre des guillemets anglais `“` avec un simple <kbd>Alt</kbd>+<kbd>2</kbd>, et on ferme des chevrons ` »` en tapant la touche <kbd>2</kbd> deux fois de suite tout en maintenant <kbd>Alt</kbd>+<kbd>Shift</kbd>.

### Autres caractères spéciaux : `characters.ahk`

`characters.ahk` sert deux buts :
- Rendre certains caractères spéciaux très accessibles,
- Contourner les manques de touches sur un clavier ANSI quand on l'utilise en QWERTZ.

Raccourcis généralement utiles :
| Caractère                   | Raccourci                                                   |
|-----------------------------|-------------------------------------------------------------|
| `·`                         | <kbd>Alt</kbd>+<kbd>.</kbd> / <kbd>AltGr</kbd>+<kbd>.</kbd> |
| `•`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>.</kbd>                |
| ` ` (espace fine insécable) | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd>           |
| `×`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>3</kbd>                |

Raccourcis dédiés au QWERTZ :
| Caractère                   | Raccourci                                                   |
|-----------------------------|-------------------------------------------------------------------------------------|
| `<`                         | <kbd>Alt</kbd>+<kbd>y</kbd>                                                         |
| `>`                         | <kbd>Alt</kbd>+<kbd>x</kbd>                                                         |
| `É`                         | <kbd>Shift</kbd>+<kbd>é</kbd>                                                       |
| `È`                         | <kbd>Shift</kbd>+<kbd>è</kbd>                                                       |
| `À`                         | <kbd>Shift</kbd>+<kbd>à</kbd>                                                       |
| `Ç`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>4</kbd>                                        |
| `\`                         | <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>7</kbd> / <kbd>Alt</kbd>+<kbd>/</kbd> (Numpad) |

En plus de cela, les remplacement suivants sont automatiquement opéré lorsque l'on tape :
| Tapé   | Remplacé par                                                                       |
|--------|------------------------------------------------------------------------------------|
| `,ae` / `.Ae`  | æ / Æ                                                                      |
| `,oe` / `.Oe`  | œ / Œ                                                                      |
| `...`* | … &nbsp;&nbsp;&nbsp;&nbsp;(en un seul caractère)                                   |
| `,...` | ... &nbsp;&nbsp;&nbsp;&nbsp;(avec trois points, évitant le remplacement précédent) |
| `--`   | – &nbsp;&nbsp;&nbsp;&nbsp;(tiret moyen)                                            |
| `---`  | — &nbsp;&nbsp;&nbsp;&nbsp;(tiret long)                                             |
| `,--`  | -- &nbsp;&nbsp;&nbsp;&nbsp;(désactive les remplacements précédents**)              |

\* Le remplacement de `...` en un seul caractère `…` n'est opéré que lorsque suivi d'un caractère n'étant pas une lettre (espace, ponctuation, passage à la ligne…).<br>
\** Quand on utilise `,--` pour désactiver le replacement des tirets, cette désactivation est maintenue tant que l'on tape des `-` (et uniquement des `-`), au plus 1 seconde après le `-` précédent.
