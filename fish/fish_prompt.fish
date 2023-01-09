function fish_prompt
    set -l __last_command_exit_status $status

    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l green (set_color -o green)
    set -l blue (set_color -o blue)
    set -l normal (set_color normal)

    set -l prompt_char_color
    if test $__last_command_exit_status = 0;
        set prompt_char_color "$green"
    else
        set prompt_char_color "$red"
    end    
    echo -n -s $cyan (prompt_pwd) ' ' $prompt_char_color '$' ' ' $normal
end
