function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status --background=red white

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '$'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # Write pipestatus
    # If the status was carried over (e.g. after `set`), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    echo -n -s (prompt_login) ':' (set_color $color_cwd) (prompt_pwd) $normal $prompt_status $suffix " "
end

function fish_time_prompt -d "Print time in human readable format"
    set -l T (math round "$CMD_DURATION / 1000")
    switch (uname)
        case Darwin
            if test "$T" -gt 3600
                echo -n -s (date -u -r $T "+%-kh %-Mm %-Ss")
            else if test "$T" -gt 60
                echo -n -s (date -u -r $T "+%-Mm %-Ss")
            else if test "$T" -gt 5
                echo -n -s (date -u -r $T "+%-Ss")
            end
        case Linux
            if test "$T" -gt 3600
                echo -n -s (date -u -d @$T "+%-kh %-Mm %-Ss")
            else if test "$T" -gt 60
                echo -n -s (date -u -d @$T "+%-Mm %-Ss")
            else if test "$T" -gt 5
                echo -n -s (date -u -d @$T "+%-Ss")
            end
    end
end

function fish_right_prompt -d "Write out the right prompt"
    echo -n -s (set_color cyan) (fish_time_prompt) $normal (set_color yellow) (fish_vcs_prompt) $normal
end
