# dotfiles

<details>
<summary><b>conf web browser librewolf</b></summary>

conf perso librewolf<br />
vertical fox et custom color<br />
</details>

<details>
<summary><b>conf workstation bazzite</b></summary>

note pour bazzite<br />
zero maintenance et presque zero config<br />
</details>

------------------------------------- OBSOLÈTE --------------------------------------

<details>
<summary><b>vieille conf arch linux</b></summary>

Ancien setup pour ArchLinux renforce (avant de passer aux distro immutables)

Sécurité :

- kernel : linux-hardened en lockdown<br />
=>! revoir pour chercher la source d'upsstream et la KSPP
- Chiffrement : tous sous LUKS2, seule l'UKI est exposée mais verifier par secure-boot<br />
=>! revoir pour implémenter systemd-cryptenroll (dechiffrement LUKS non plus avec mot de passe mais clef FIDO2)
- MAC : AppArmor<br />
=>! revoir pour passer à SELinux<br />
- Firewall : Firewalld
- blacklisting de plusieurs modules de kernel et hardening de divers paramètres du kernel en plus
- Hardened malloc, appliqué pour l'ensemble du système

Eléments principaux :
  
- Gestionnaire de fenêtre: sway
- Bar de status: waybar (désactivable, on peut mettre les infos dans le terminal au niveau de powerlevel10k)
- Lanceur d'application: wofi
- Daemon de notification: mako
- Ecran de verouillage: swaylock-effect

=> [installation de a à z](./old%20arch/installation.txt)

=> [liste des commandes](./old%20arch/cheatsheet.txt)

![Screenshot 1](./old%20arch/Images/1.png)

![Screenshot 2](./old%20arch/Images/2.png)

![Screenshot 3](./old%20arch/Images/3.png)

![Screenshot 4](./old%20arch/Images/5.png)
</details>
