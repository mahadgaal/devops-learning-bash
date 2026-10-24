# DevOps Learning: Scripting with Bash

My scripts and learning outcomes while working through a series of Bash scripting challenges as part of my Linux and DevOps learning.

## Goals

- Practise writing Bash scripts that automate everyday command-line tasks.
- Build familiarity with variables, loops, conditionals, file operations and script arguments.
- Combine these basics into a single script that solves a multi-step task.
- Record what each script does and explain the concepts behind it.

## Repository structure

- `scripts/` contains one script per level
- `README.md` is this overview

| Level | Topic | Mission | Key concepts | Script |
|:-:|-------|---------|--------------|--------|
| 1 | The Basics | Create an `Arena` directory with three files inside and list its contents | `mkdir -p`, `touch`, `ls`, variables | [Level_1_The_Basics.sh](scripts/Level_1_The_Basics.sh) |
| 2 | Variables and Loops | Print the numbers 1 to 10, one per line | C-style `for` loop, `echo` | [Level_2_Variables_and_Loops.sh](scripts/Level_2_Variables_and_Loops.sh) |
| 3 | Conditional Statements | Check whether `Arena/hero.txt` exists and print a message | `if` / `else`, `[[ -f ]]` file test | [Level_3_Conditional_Statements.sh](scripts/Level_3_Conditional_Statements.sh) |
| 4 | File Manipulation | Copy all `.txt` files from `Arena` into a `Backup` directory | `cp`, wildcards (`*.txt`) | [Level_4_File_Manipulation.sh](scripts/Level_4_File_Manipulation.sh) |
| 5 | The Boss Battle | Create `Battlefield`, add three files, move `knight.txt` to `Archive`, list both | Combining `mkdir`, `touch`, `cd`, `if`, `mv`, `ls -l` | [Level_5_The_Boss_Battle.sh](scripts/Level_5_The_Boss_Battle.sh) |
| 6 | Argument Parsing | Take a filename as an argument and print its line count, or report that no file was given | `$1`, `[[ -z ]]`, `wc -l`, input redirection | [Level_6_Argument_Parsing.sh](scripts/Level_6_Argument_Parsing.sh) |

## How I document each level

1. Read the mission for the level.
2. Write the script myself.
3. Run it and check the output matches the mission.
4. Add comments explaining the commands and why they work.

## Running a script

```bash
bash scripts/Level_2_Variables_and_Loops.sh
```

Level 6 needs a filename argument:

```bash
bash scripts/Level_6_Argument_Parsing.sh notes.txt
```

## Key takeaways

- `mkdir -p` is safe to re-run because it doesn't fail if the directory already exists.
- `[[ -f "$path" ]]` tests whether a regular file exists, which is the basis for most "check before you act" logic.
- `$1` is the first argument passed to a script, and `-z` catches the case where it's empty.
- Using `wc -l < file` instead of `wc -l file` prints only the number, without the filename.