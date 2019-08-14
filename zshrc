# If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/kryohi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"



# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

plugins=(
  git
  chucknorris
  emoji
  suse
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR=/usr/bin/kate     # especially useful to open as root with sudoedit, default editor becomes kate

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


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
alias clang_assembly="clang -march=native -S -mllvm --x86-asm-syntax=intel"
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
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir="mkdir -p"
alias cp="cp -iv"
alias mv="mv -iv"
alias eqload="pacmd load-module module-ladspa-sink sink_name=dsp master=alsa_output.pci-0000_00_1b.0.analog-stereo plugin=ladspa_dsp label=ladspa_dsp"
alias arrr!='echo http://uj3wazyk5u4hnvtk.onion/   www.tntvillage.scambioetico.org/?releaselist   gen.lib.rus.ec'
alias zopflipng='/home/kryohi/Git/zopfli/zopflipng/zopflipng'
alias compresspng='zopflipng --prefix --iterations=16 --filters=01234mepb '
alias compresspngs='ls *.png | parallel -j 4 compresspng'
alias batteryinfo='upower -i /org/freedesktop/UPower/devices/battery_BAT1 && acpi -V'
alias startupinfo='systemd-analyze && systemd-analyze blame && systemd-analyze plot > output.svg'

## A e s t h e t i c s & memes
alias ayy='echo lmao'
alias omaewamoushindeiru='figlet "NANI???" | lolcat'
alias nani='figlet "NANI???" | lolcat'


## Distro-dependent or deprecated crap
alias upgrade='sudo zypper dup'
alias matlabj="MATLAB_JAVA=/usr/lib64/jvm/java-1.7.0-openjdk/jre matlab -r -nosplash &"
alias megamount="rclone mount Mega: /home/kryohi/Video/Mega --cache-db-path=/home/kryohi/.cache/rclonedb --cache-chunk-path=/home/kryohi/.cache --vfs-cache-mode writes --cache-dir=/home/kryohi/.cache/rclonecache  --read-only --allow-non-empty --no-checksum --buffer-size 700M --stats 1s --max-read-ahead 128k"

