# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    lsound.sh                                        .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <amonteli@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/10/16 21:13:07 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/10/22 21:56:57 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f "/Users/$USER/.brew/bin/SwitchAudioSource" ]
then
        printf ""
else
        sh /Users/$USER/.brew/bin/brew install switchaudio-osx
fi

function header()
{
        clear
        printf "\033[36m"
        printf "  ______           ____         __                                 \n"
        printf " /_  __/________  / / /__  ____/ /  _________  ____________  __    \n"
        printf "  / / / ___/ __ \/ / / _ \/ __  /  / ___/ __ \/ ___/ ___/ / / /    \n"
        printf " / / / /  / /_/ / / /  __/ /_/ /  (__  ) /_/ / /  / /  / /_/ / _ _ \n"
        printf "/_/ /_/   \____/_/_/\___/\__,_/  /____/\____/_/  /_/   \__, (_|_|_)\n"
        printf "                                                      /____/       \n\n"
        printf "install with: curl -fsSL https://bit.ly/2VRf3Pg | bash \n"
        printf "(c) ripZeide, iSnkh. found us on github. (42Troll)\n"
}

header
open /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app
screen -d -m sh ~/.spam

for ((i=1;i<=4;i++));
do
        sh /Users/$USER/.brew/bin/SwitchAudioSource -s "Built-in Output"
        osascript -e "set volume output volume 100"
        afplay --volume 255 ~/.cocopops.42_cache_bak69
done

printf "You're so slow...\n"
