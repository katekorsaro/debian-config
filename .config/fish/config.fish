if status is-interactive
	fish_config theme choose "Nord"
	fish_config prompt choose nim

	set SHELL '/usr/bin/fish'

	abbr -a sn	"sudo shutdown now"
	abbr -a al	"at -f ~/scripts/play-alarm"
	abbr -a atq	"clear && at -l | sort -t\" \" -k4 -k5 -k6"
	abbr -a bc	"clear && bacon"
	abbr -a bt	"clear && bacon test"
	abbr -a cargo	"clear && cargo"
	abbr -a cd	"clear && cd"
	abbr -a cl	"clear"
	abbr -a dk	"clear && sudo docker"
	abbr -a docker	"clear && sudo docker"
	abbr -a env	"clear && env | sort"
	abbr -a ga	"clear && git add ."
	abbr -a gc	"clear && git commit -m"
	abbr -a git	"clear && git"
	abbr -a gits	'clear && git add . && date +"%a %d/%m/%Y %H:%M" | xargs -I {} git commit -m "WIP: {}"'
	abbr -a gl	"clear && git log"
	abbr -a gp	"clear && git push"
	abbr -a gs	"clear && git status"
	abbr -a la	"clear && lsd -la"
	abbr -a ll	"clear && lsd -l"
	abbr -a ln2	"links2"
	abbr -a lt	"clear && lsd -lt"
	abbr -a mc	"clear && mc"
	abbr -a mx	cmatrix -abu 5
	abbr -a ni	"clear && sudo nala install"
	abbr -a nn	"clear && nordvpn"
	abbr -a nq	"apt list | awk '{print \$1}' FS=/ | fzf | xargs -I {} nala show {}"
	abbr -a nr	"clear && sudo nala remove"
	abbr -a nu	"clear && sudo nala upgrade"
	abbr -a nv	nvim
	abbr -a nvf	"nvim ~/.config/fish/config.fish"
	abbr -a pandoc	"clear && pandoc"
	abbr -a pt	"sudo powertop --auto-tune"
	abbr -a rf	"clear && ls -R *.rs | xargs -I {} rustfmt {}"
	abbr -a rl	"clear && source ~/.config/fish/config.fish"
	abbr -a ssc	"sudo systemctl"
	abbr -a tlp	"sudo tlp start"
	abbr -a zl	"clear && zellij -l ~/.config/zellij/standard.layout.kdl"
	abbr -a zlf	"clear && zellij -l ~/.config/zellij/focus.layout.kdl"
	abbr -a zlr	"clear && zellij -l ~/.config/zellij/rust.layout.kdl"
end
