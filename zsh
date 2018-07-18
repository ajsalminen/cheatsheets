# glob: everything that does NOT end in .owp
ls ls -l ^*.owp
# To see (or use) what a key generates instead of the bind
Ctrl-v (key)
# redirecting same handle multiple times has tee-like behavior (same output to both)
ls > foo | cmd
ls > foo > bar
"echo {one,two}" outputs: one two

M-u M-e  _history-complete-older/newer word autocompletion from history

M-. = (smart-)insert-last-word (copy the last word from history)
M-, copy earlier word swap the argument from the history line

# turn on glob_subst temporarily so globbing works for command substitution
${~$(command)}

# last  9 audio files in current dir (zsh glob qualifiers)
scp ${~$(/home/anttis/projektit/mime-ext/filial.scm zsh audio)}(om[1,9]) linger.sytes.net:music/mp3/gaming/ost/althora