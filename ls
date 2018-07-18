# Displays everything in the target directory
ls path/to/the/target/directory

# Displays everything including hidden files
ls -a

# Displays all files, along with the size (with unit suffixes) and timestamp
ls -lh

# Display files, sorted by size
ls -S

# sort by ctime
ls -lct

# some tips for filtering types
alias lad='ls -d .*(/)'                # only show dot-directories
alias lsa='ls -a .*(.,@)'                # only show dot-files and symlinks
alias lss='ls -l *(s,S,t)'             # only files with setgid/setuid/sticky flag
alias lsl='ls -l *(@)'                 # only symlinks
alias lsx='ls -l *(*)'                 # only executables
alias lsw='ls -ld *(R,W,X.^ND/)'       # world-{readable,writable,executable} files
alias lsbig="ls -flh *(.OL[1,10])"     # display the biggest files
alias lsd='ls -d *(/)'                 # only show directories
alias lse='ls -d *(/^F)'               # only show empty directories
alias lsnew="ls -rtlh *(D.om[1,10])"   # display the newest files
alias lsold="ls -rtlh *(D.Om[1,10])"   # display the oldest files
alias lssmall="ls -Srl *(.oL[1,10])"   # display the smallest files

# newest last, mtime or ctime
ls -rt
ls -rct