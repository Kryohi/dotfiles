
# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.


export EDITOR=/usr/bin/kate     # especially useful to open as root with sudoedit, default editor becomes kate

test -s ~/.alias && . ~/.alias || true


## Profiles or config files editing
alias bashrc="kate ~/.bashrc &"
alias zshrc="kate ~/.zshrc &"
alias profile="kate ~/.profile &"
alias mpv-settings="kate /home/kryohi/.config/mpv/mpv.conf &"
alias cinemagraph="kate /home/kryohi/.local/share/plasma/wallpapers/org.kde.Cinemagraph/contents/ui/main.qml"
alias pulseconfig="kate /home/kryohi/.config/pulse/default.pa &"
alias eqconfig="kate /home/kryohi/.config/ladspa_dsp/config &"


## Programming
alias juliamaster="/home/kryohi/Git/julia/julia -O3"
alias julia="julia -O3"
alias julianotebook="mkfifo pipe && julia -O3 -i < pipe && using IJulia; notebook(detached=true)"
alias gcc="gcc -Wall -lm -march=native"
alias clang="clang -Wall -lm -march=native"
alias mpicc="mpicc -Wall -lm -march=native"
alias memorygrind="valgrind -v"
alias memorygrindorigins="valgrind --track-origins=yes -v"
alias callgrind="valgrind --tool=callgrind --cache-sim=yes --dump-instr=yes"
alias python="python3"
alias pip="pip3"


## Miscellaneous shit
alias sss="sudo systemctl suspend"
alias please='sudo $(history -p \!\!)' # run previous command as super user
alias pls='please'
alias pingg='ping -c 3 google.com'
alias pingflood='sudo ping -i 0 -n -s 4088 -t 2 www.google.com'
alias restartnm='sudo systemctl restart NetworkManager'
alias susp='sudo systemctl suspend'
alias l="ls -lash --group-directories-first" # view as list, view all, show symbolic links, show sizes as human readable
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias mkdir="mkdir -p"
alias cp="cp -iv"
alias mv="mv -iv"
alias eqload="pacmd load-module module-ladspa-sink sink_name=dsp master=alsa_output.pci-0000_00_1b.0.analog-stereo plugin=ladspa_dsp label=ladspa_dsp"
alias arrr!='echo http://uj3wazyk5u4hnvtk.onion/   www.tntvillage.scambioetico.org/?releaselist   gen.lib.rus.ec'
alias zopflipng='/home/kryohi/Git/zopfli/zopflipng/zopflipng'
alias compresspng='zopflipng --prefix --iterations=24 --filters=01234mepb '
alias compresspngs='ls *.png | parallel -j 4 compresspng'


## A e s t h e t i c s & memes
alias ayy='echo lmao'
alias omaewamoushindeiru='figlet "NANI???" | lolcat'
alias nani='figlet "NANI???" | lolcat'


## Distro-dependent or deprecated crap
alias upgrade='sudo zypper dup'
alias matlabj="MATLAB_JAVA=/usr/lib64/jvm/java-1.7.0-openjdk/jre matlab -r -nosplash &"
alias megamount="rclone mount Mega: /home/kryohi/Video/Mega --cache-db-path=/home/kryohi/.cache/rclonedb --cache-chunk-path=/home/kryohi/.cache --vfs-cache-mode writes --cache-dir=/home/kryohi/.cache/rclonecache  --read-only --allow-non-empty --no-checksum --buffer-size 700M --stats 1s --max-read-ahead 128k"


# PATH configuration is done in ~/.profile

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/mpi/gcc/openmpi/lib64
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/kryohi/Uni/Computational\ Physics/sharedlibs,/home/kryohi/C/libs
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/kryohi/Git/lammps/build/plumed_build-prefix/lib64
DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/home/kryohi/Git/lammps/build/plumed_build-prefix/lib64
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/kryohi/Git/lammps/build/plumed_build-prefix/lib64/pkgconfig

export LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH
export PKG_CONFIG_PATH


export JULIA_NUM_THREADS=4
PLUMED_KERNEL=/home/kryohi/Git/lammps/build/plumed_build-prefix/lib64/libplumedKernel.so

