function fzf_select_emoji -d "fzf source to select emoji"
    emoji_codes | fzf | read emoji

    if test -n "$emoji"
        set -l keyword :(echo $emoji | awk '{ print $2 }'):
        commandline -i $keyword
    end
end
