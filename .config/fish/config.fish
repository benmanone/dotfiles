if status is-interactive
    #wal -R -n -e
    cat /home/void/.cache/wal/sequences
    set -gx EDITOR hx
end
