# Neovim Cheat Sheet

Mnemonic-first reference for this config. `<space>` is the leader key.

## Config shortcuts

| Use | Command | Semantic meaning | What it does |
|---|---|---|---|
| Project files | `<space>pf` | **p**roject **f**iles | Find files in the project |
| Project search | `<space>ps` | **p**roject **s**earch | Search text across the project |
| Git files | `Ctrl-p` | project/file picker | Find Git-tracked files |
| Help tags | `<space>vh` | **v**iew **h**elp | Search Neovim help |
| Harpoon add | `<space>a` | **a**dd | Add current file to Harpoon |
| Harpoon menu | `Ctrl-e` | quick file menu | Open Harpoon list |
| Harpoon file 1-4 | `Alt-1` ... `Alt-4` | slot 1-4 | Jump directly to Harpoon slot |
| Git status | `<space>gs` | **g**it **s**tatus | Open Fugitive |
| Git choose left | `gu` | **g**et/choose ours | Fugitive diffget `//2` |
| Git choose right | `gh` | **g**et/choose theirs | Fugitive diffget `//3` |
| Undo tree | `<space>u` | **u**ndo | Toggle undo history |
| Trouble | `<space>tt` | **t**rouble **t**oggle | Toggle diagnostics list |
| Next Trouble item | `]t` | next **t**rouble | Next Trouble item |
| Previous Trouble item | `[t` | previous **t**rouble | Previous Trouble item |
| Format | `<space>f` | **f**ormat | Format current buffer |
| Definition | `gd` | **g**o **d**efinition | Jump to symbol definition |
| Hover docs | `K` | inspect symbol | Show LSP hover documentation |
| Workspace symbols | `<space>vws` | **v**iew **w**orkspace **s**ymbols | Search workspace symbols |
| Diagnostics | `<space>vd` | **v**iew **d**iagnostics | Show diagnostic at cursor |
| Code action | `<space>vca` | **v**iew **c**ode **a**ction | Show LSP code actions |
| References | `<space>vrr` | **v**iew **r**eferences | Find symbol references |
| Rename | `<space>vrn` | **r**e**n**ame | Rename symbol |
| Signature help | `Ctrl-h` (Insert) | signature **h**elp | Show function signature |
| Restart LSP | `<space>lsp` | **LSP** | Restart LSP |
| Zen | `<space>zz` | **z**en | Enter Zen Mode |
| Zen wide | `<space>zZ` | **Z**en variant | Enter alternate/wider Zen layout |
| Snippet expand | `Ctrl-s e` | snippet **e**xpand | Expand snippet |
| Snippet next | `Ctrl-s ;` | snippet next | Jump to next snippet field |
| Snippet previous | `Ctrl-s ,` | snippet previous | Jump to previous snippet field |
| Snippet choice | `Ctrl-e` | choice action | Cycle/select snippet choice |
| Debug start/continue | `F5` | run/continue | Start or continue debugger |
| Debug breakpoint | `F9` | breakpoint | Toggle breakpoint |
| Debug step over | `F10` | step over | Execute current line without entering call |
| Debug step into | `F11` | step into | Enter called function |
| Debug step out | `F12` | step out | Finish current function |
| Debug UI | `<space>du` | **d**ebug **u**I | Toggle DAP UI |
| Debug evaluate | `<space>de` | **d**ebug **e**valuate | Evaluate expression/selection |
| Debug terminate | `<space>dt` | **d**ebug **t**erminate | Stop debug session |
| Explorer | `<space>pv` | **p**roject **v**iew | Open built-in file explorer |
| Yank clipboard | `<space>y` | **y**ank | Copy selection/text to system clipboard |
| Yank line clipboard | `<space>Y` | **Y**ank line | Copy line to system clipboard |
| Delete without yank | `<space>d` | **d**elete | Delete to black-hole register |
| Paste without replacing register | `<space>p` (Visual) | **p**aste | Paste over selection without losing copied text |
| Make executable | `<space>x` | e**x**ecutable | `chmod +x` current file |
| Substitute word | `<space>s` | **s**ubstitute | Replace current word throughout buffer |
| Quickfix next | `Ctrl-k` | next quickfix | Move through quickfix results |
| Quickfix previous | `Ctrl-j` | previous quickfix | Move backward through quickfix results |
| Location next | `<space>k` | next location | Move through location list |
| Location previous | `<space>j` | previous location | Move backward through location list |
| Insert -> Normal | `Ctrl-c` | cancel insert | Leave Insert mode |
| Disable Ex mode | `Q` | disabled | Prevent accidental Ex mode |
| Recenter down | `Ctrl-d` | half-page **d**own | Scroll down and keep cursor centered |
| Recenter up | `Ctrl-u` | half-page **u**p | Scroll up and keep cursor centered |
| Next search | `n` | **n**ext | Next match, recentered |
| Previous search | `N` | **n**ext backward | Previous match, recentered |
| Move selected lines down | `J` (Visual) | move down | Move selection down |
| Move selected lines up | `K` (Visual) | move up | Move selection up |
| Reindent paragraph | `=ap` | **=** format **a** **p**aragraph | Reindent paragraph |
| Test current file | `<space>tf` | **t**est **f**ile | Run Plenary test file |

## Vim grammar

Think of many Vim commands as:

`operator + text object / motion`

Examples: `d` = delete, `c` = change, `y` = yank, `v` = visual; `i` = inside, `a` = around; `w` = word.

| Use | Command | Semantic meaning | What it does |
|---|---|---|---|
| Delete word | `dw` | **d**elete **w**ord | Delete to the next word boundary |
| Delete around word | `daw` | **d**elete **a**round **w**ord | Delete word + surrounding whitespace |
| Delete inside word | `diw` | **d**elete **i**nside **w**ord | Delete the whole word only |
| Change word | `cw` | **c**hange **w**ord | Change to next word boundary |
| Change inside word | `ciw` | **c**hange **i**nside **w**ord | Replace the whole word |
| Change inside quotes | `ci"` | **c**hange **i**nside `"` | Replace text inside quotes |
| Change inside `{}` | `ci{` | **c**hange **i**nside `{` | Replace contents inside braces |
| Change around `{}` | `ca{` | **c**hange **a**round `{` | Replace braces and their contents |
| Delete inside `()` | `di(` | **d**elete **i**nside `(` | Delete contents inside parentheses |
| Yank inside `()` | `yi(` | **y**ank **i**nside `(` | Copy contents inside parentheses |
| Select inside `{}` | `vi{` | **v**isual **i**nside `{` | Select contents inside braces |
| Delete line | `dd` | **d**elete line | Delete current line |
| Change line | `cc` | **c**hange line | Replace current line |
| Yank line | `yy` | **y**ank line | Copy current line |
| Delete to end | `D` | **D**elete rest | Delete from cursor to line end |
| Change to end | `C` | **C**hange rest | Change from cursor to line end |
| Paste after | `p` | **p**aste | Paste after cursor |
| Paste before | `P` | **P**aste before | Paste before cursor |
| Undo | `u` | **u**ndo | Undo last change |
| Redo | `Ctrl-r` | **r**edo | Redo undone change |
| Next word | `w` | **w**ord | Jump to next word |
| Previous word | `b` | **b**ack | Jump to previous word |
| Word end | `e` | **e**nd | Jump to end of word |
| Line start | `0` | column **0** | Jump to first column |
| First non-blank | `^` | line start | Jump to first non-whitespace character |
| Line end | `$` | line **end** | Jump to end of line |
| File top | `gg` | **g**o top | Jump to first line |
| File bottom | `G` | **G**o bottom | Jump to last line |
| Matching bracket | `%` | match pair | Jump between matching brackets |
| Find char forward | `f<char>` | **f**ind | Jump to next character on line |
| Till char forward | `t<char>` | **t**ill | Jump just before character |
| Repeat find | `;` | repeat | Repeat `f`/`t` |
| Reverse find | `,` | reverse | Repeat `f`/`t` backwards |
| Search | `/text` | search | Search forward |
| Next match | `n` | **n**ext | Next search result |
| Previous match | `N` | **n**ext backward | Previous search result |
| Join lines | `J` | **j**oin | Join current line with next |
| Repeat change | `.` | repeat | Repeat last change |

## Completion

| Use | Command | Semantic meaning | What it does |
|---|---|---|---|
| Completion next | `Ctrl-n` | **n**ext | Select next completion |
| Completion previous | `Ctrl-p` | **p**revious | Select previous completion |
| Accept completion | `Ctrl-y` | **y**es | Confirm completion |
| Open completion | `Ctrl-Space` | completion | Trigger completion manually |

## Mental model

Do not memorize `daw` as an arbitrary shortcut.

Read it:

- `d` -> delete
- `a` -> around
- `w` -> word

Likewise:

- `ci{` -> change inside `{`
- `yi"` -> yank inside quotes
- `va(` -> visual around parentheses

That grammar is the part worth memorizing.
