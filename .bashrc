
# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

export EDITOR=/usr/bin/kate     # especially useful to open as root with sudoedit, default editor becomes kate

test -s ~/.alias && . ~/.alias || true

alias bashrc="kate ~/.bashrc &"
alias profile="kate ~/.profile &"
alias please='sudo $(history -p \!\!)' # run previous command as super user
alias pls='please'
alias pingg='ping -c 3 google.com'
alias pingflood='sudo ping -i 0 -n -s 4088 -t 2 www.google.com'
alias upgrade='sudo zypper dup'
alias restartnm='sudo systemctl restart NetworkManager'
alias mpv-settings="kate /home/kryohi/.config/mpv/mpv.conf &"
alias cinemagraph="kate /home/kryohi/.local/share/plasma/wallpapers/org.kde.Cinemagraph/contents/ui/main.qml"
alias matlabj="MATLAB_JAVA=/usr/lib64/jvm/java-1.7.0-openjdk/jre matlab -r -nosplash &"
alias python="python3"
alias pulseconfig="kate /home/kryohi/.config/pulse/default.pa &"
alias eqconfig="kate /home/kryohi/.config/ladspa_dsp/config &"
alias eqload="pacmd load-module module-ladspa-sink sink_name=dsp master=alsa_output.pci-0000_00_1b.0.analog-stereo plugin=ladspa_dsp label=ladspa_dsp"
alias megamount="rclone mount Mega: /home/kryohi/Video/Mega --cache-db-path=/home/kryohi/.cache/rclonedb --cache-chunk-path=/home/kryohi/.cache --vfs-cache-mode writes --cache-dir=/home/kryohi/.cache/rclonecache  --read-only --allow-non-empty --no-checksum --buffer-size 700M --stats 1s --max-read-ahead 128k"
alias juliamaster="/home/kryohi/Git/julia/julia -O3"
alias julia="julia -O3"
alias gcc="gcc -Wall -lm"
alias arrr!='echo http://uj3wazyk5u4hnvtk.onion/   www.tntvillage.scambioetico.org/?releaselist   gen.lib.rus.ec'
alias l="ls -lash --group-directories-first" # view as list, view all, show symbolic links, show sizes as human readable
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias mkdir="mkdir -p"
alias cp="cp -iv"
alias mv="mv -iv"
alias ayy='echo lmao'
alias omaewamoushindeiru='figlet "NANI???" | lolcat'
alias nani='figlet "NANI???" | lolcat'
alias adamas='mpv --start=46:16 --loop-file=3 --ab-loop-a=46:16 /mnt/data/Video/Animu/[Koten_Gars]\ Sword\ Art\ Online\ -\ 50\ [FUNi-DL][h.264][1080p][AAC]\ [0374D754].mkv'


PATH=$PATH:/home/kryohi/bin/
PATH=$PATH:/home/kryohi/Programmi/Matlab2018b/bin/
PATH=$PATH:/home/kryohi/Programmi/processing-3.3.6/
PATH=$PATH:/usr/lib64/mpi/gcc/openmpi/bin

export PATH

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/mpi/gcc/openmpi/lib64
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/kryohi/Uni/Computational\ Physics/sharedlibs,/home/kryohi/C/libs
#export PKG_CONFIG_PATH=/home/kryohi/Programmi/zimg/lib
export LD_LIBRARY_PATH

export JULIA_NUM_THREADS=4
