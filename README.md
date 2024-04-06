# dotfiles

Setup de laptop pour ArchLinux.  
Minimaliste, renforcé et moderne. 

Sécurité :

- kernel : linux-hardened en lockdown
- Chiffrement : Sous partition LUKS2
- MAC : AppArmor
- Firewall : Firewalld
- blacklisting de plusieurs modules de kernel et hardening de divers paramètres du kernel en plus
- malloc renforcé, appliqué pour l'ensemble du système

Eléments principaux :
  
- Gestionnaire de fenêtre: sway
- Bar de status: waybar (désactivable, on peut mettre les infos dans le terminal au niveau de powerlevel10k)
- Lanceur d'application: wofi
- Daemon de notification: mako
- Ecran de verouillage: swaylock-effect

=> [installation de a à z](installation.txt)

=> [liste des commandes](cheatsheet.txt)

![Screenshot 1](./Images/1.png)

![Screenshot 2](./Images/2.png)

![Screenshot 3](./Images/3.png)

![Screenshot 4](./Images/5.png)
