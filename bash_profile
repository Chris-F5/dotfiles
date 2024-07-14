# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

cal

# opam configuration
test -r /home/chris/.opam/opam-init/init.sh && . /home/chris/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
