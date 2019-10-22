# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    spam.sh                                          .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <amonteli@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/10/22 21:55:34 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/10/22 21:56:02 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

for ((i=1;i<=1000000000;i++));
do
    sh /Users/$USER/.brew/bin/SwitchAudioSource -s "Built-in Output" &
    osascript -e "set volume output volume 100"
done
