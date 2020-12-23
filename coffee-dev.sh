tmux new-session -d 
tmux rename 'coffeeshot'
tmux renamew 'vpn'
tmux new-window -n 'backend' -c ~/go/src/coffeeshot -d
tmux new-window -n 'frontend' -c ~/dev/ -d
tmux new-window -n 'other' -c ~/dev/scripts -d
