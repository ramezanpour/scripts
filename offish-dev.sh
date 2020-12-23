tmux new-session -d 
tmux rename 'offish'
tmux renamew 'vpn'
tmux new-window -n 'backend' -c ~/go/src/gitlab.com/mmramezanpour/offish -d
tmux split-window -h -t 2. -c ~/go/src/gitlab.com/mmramezanpour/offish
tmux new-window -n 'frontend' -c ~/dev/offish-frontend -d
tmux new-window -n 'other' -c ~/dev/scripts -d
tmux attach -t offish
