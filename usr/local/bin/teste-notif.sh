#!/bin/bash


# https://www.lorenzobettini.it/2023/11/hyprland-and-notifications-with-mako/

# Com essa configuração de exemplo, podemos emitir algumas notificações com diferentes 
# "urgências", e ver as diferentes cores e posições das caixas:


# ----------------------------------------------------------------------------------------

# Comando notify-send  não funciona no FluxBox

# cat ~/.fluxbox/startup

# Inicia o D-Bus, se necessário
# eval $(dbus-launch --sh-syntax)

# Inicia o daemon de notificações
# dunst &

# Inicia o Fluxbox com dbus-launch para garantir o suporte a D-Bus
# exec dbus-launch fluxbox


# Desativar ícones nas notificações (opcional)

# Se você não quiser usar ícones, pode desativá-los no arquivo de configuração do dunst:

# Edite:

# ~/.config/dunst/dunstrc

# E adicione ou altere:

# [global]
# icon_position = off

# O dunst não suporta ícones em SVG por padrão — ele precisa de ícones em PNG.

# $ find /usr/share/icons/Adwaita -name 'dialog-information*'
# /usr/share/icons/Adwaita/symbolic/status/dialog-information-symbolic.svg

# Ou simplesmente evite usá-los nas suas chamadas notify-send (não use a opção -i).


# Converter o SVG para PNG usando convert

# convert -background none -density 192 \
#  /usr/share/icons/Adwaita/symbolic/status/dialog-information-symbolic.svg \
#  ~/.icons/dialog-information.png

# $ notify-send -i ~/.icons/dialog-information.png  "Ícone PNG" "Convertido via ImageMagick"


# ----------------------------------------------------------------------------------------


clear

# Esse comando notify-send é usado em sistemas Linux para enviar notificações do tipo 
# "pop-up" para o ambiente gráfico, geralmente em desktops com suporte a notificações como 
# GNOME, KDE, etc.

# Exemplo:

#  -u low: Define a urgência da notificação como baixa.

#  -u normal: Define uma urgência normal, que é o padrão.

#  -u critical: Define a notificação como crítica, o que geralmente causa destaque visual 
# ou até sons de alerta, dependendo das configurações do sistema.


notify-send -u low    "Olá mundo!" "Esta é uma mensagem de baixa urgência"

notify-send -u normal "Olá mundo!" "Esta é uma mensagem normal"

notify-send -u critical \
"Esta é uma mensagem crítica!" \
"OK, isso foi apenas uma demonstração ;)"


exit 0

