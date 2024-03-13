if status is-interactive
    # Commands to run in interactive sessions can go here
end

echo -n Setting abbreviations...

abbr aoc 'cd /mnt/win2/Code/AOC/'
abbr ls 'exa --icons -G'
abbr lsa 'exa -l'

echo 'Done'
zoxide init fish | source
