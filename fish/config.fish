if status is-interactive
    # Commands to run in interactive sessions can go here
    # Try to source .profile
    if test -f ~/.profile
        bass source ~/.profile
    end

    # Try to source .bash_aliases
    if test -f ~/.bash_aliases
        bass source ~/.bash_aliases
    end

    # Try to source .bash_aliases_work
    if test -f ~/.bash_aliases_work
        bass source ~/.bash_aliases_work
    end
end
