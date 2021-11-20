# bash_menu
Add custom commands to a menu with short nick. Options to run, create new or quit. Good for example ssh targets or other command lists.

![menu1](https://user-images.githubusercontent.com/73587747/142691557-5edf422c-623c-4919-803f-b88ecedd989b.png)
![menu2](https://user-images.githubusercontent.com/73587747/142691571-1540b87a-21a5-4407-9e06-ef7b32cb8068.png)

Clone the repo:
```bash
cd
git clone https://github.com/paloj/bash_menu.git
```

Make the script executable:
```bash
sudo chmod +x ~/bash_menu/.bashmenu.sh
```

You can add this script to aliases:
```bash
touch .bash_aliases
echo "alias menu='~/bash_menu/.bashmenu.sh'" >> .bash_aliases
```
For nordic keyboard: if you want even shorter command for menu use the ½§ key above tab:
```bash
echo "alias §='~/bash_menu/.bashmenu.sh'" >> .bash_aliases
```

Then relogin and run:
```bash
menu
```

You can manually remove unwanted menu item files from the script folder with <code>rm</code>
```bash
cd ~/bash_menu
rm README.md
rm pi_local
```
