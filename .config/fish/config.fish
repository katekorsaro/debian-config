if status is-interactive
    fish_config theme choose "Nord"

    set SHELL '/usr/bin/fish'

    abbr -a al    "at -f ~/scripts/play-alarm"
    abbr -a atq    "clear && at -l | sort -t\" \" -k4 -k5 -k6"
    abbr -a bc    "clear && bacon"
    abbr -a bt    "clear && bacon test"
    abbr -a cargo    "clear && cargo"
    abbr -a cd    "clear && cd"
    abbr -a cl    "clear"
    abbr -a conn    "clear && sudo ifdown wlp0s20f3 && sudo ifup wlp0s20f3"
    abbr -a dk    "clear && sudo docker"
    abbr -a docker    "clear && sudo docker"
    abbr -a env    "clear && env | sort"
    abbr -a ga    "clear && git add"
    abbr -a gc    "clear && git commit -m"
    abbr -a gd    "clear && git diff"
    abbr -a git    "clear && git"
    abbr -a gits    'clear && git add . && date +"%a %d/%m/%Y %H:%M" | xargs -I {} git commit -m "WIP: {}"'
    abbr -a gl    "clear && git log"
    abbr -a gp    "clear && git push"
    abbr -a gr    "clear && git reset"
    abbr -a gs    "clear && git status"
    abbr -a ip     "clear && ip -c"
    abbr -a la    "clear && lsd -la"
    abbr -a ll    "clear && lsd -l"
    abbr -a ln2    "links2"
    abbr -a lt    "clear && lsd -lt"
    abbr -a mc    "clear && mc"
    abbr -a mx    cmatrix -abu 5
    abbr -a nb  "clear && newsboat"
    abbr -a nbr  "newsboat -x reload &"
    abbr -a nf  "clear && sudo nala fetch"
    abbr -a ni    "clear && sudo nala install"
    abbr -a nn    "clear && nordvpn"
    abbr -a np "sudo nala purge"
    abbr -a nq    "apt list | awk '{print \$1}' FS=/ | fzf | xargs -I {} nala show {}"
    abbr -a nr    "clear && sudo nala remove"
    abbr -a ns  "clear && nala search"
    abbr -a nu    "clear && sudo nala upgrade"
    abbr -a nv    nvim
    abbr -a nvf    "nvim ~/.config/fish/config.fish"
    abbr -a pandoc    "clear && pandoc"
    abbr -a pt    "sudo powertop --auto-tune"
    abbr -a rf    "clear && ls -R *.rs | xargs -I {} rustfmt {}"
    abbr -a rl    "clear && source ~/.config/fish/config.fish"
    abbr -a sn    "sudo shutdown now"
    abbr -a ssc    "sudo systemctl"
    abbr -a tlp    "sudo tlp start"
    abbr -a zl    "clear && zellij -l ~/.config/zellij/standard.layout.kdl"
    abbr -a zlf    "clear && zellij -l ~/.config/zellij/focus.layout.kdl"
    abbr -a zlr    "clear && zellij -l ~/.config/zellij/rust.layout.kdl"

    abbr -a r24 "cvlc http://shoutcast.radio24.it:8000/listen.pls"
    abbr -a rai1    "cvlc http://icestreaming.rai.it/1.mp3"
    abbr -a rai2    "cvlc http://icestreaming.rai.it/2.mp3"
    abbr -a rai3    "cvlc http://icestreaming.rai.it/3.mp3"

end

function fish_prompt
    string join '' -- (set_color brpurple) '' (set_color brcyan) '' (set_color brgreen) ' '
end

function fish_right_prompt
    echo (set_color -o brgreen) $PWD
end
