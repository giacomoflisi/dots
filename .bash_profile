#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# opam configuration
test -r /home/jack/.opam/opam-init/init.sh && . /home/jack/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/jack/.lmstudio/bin"
# End of LM Studio CLI section

