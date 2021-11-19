# bash_menu
Add custom commands to a menu with short nick. Options to run, create new or quit. Good f.ex ssh targets.

![menu1](https://user-images.githubusercontent.com/73587747/142691557-5edf422c-623c-4919-803f-b88ecedd989b.png)
![menu2](https://user-images.githubusercontent.com/73587747/142691571-1540b87a-21a5-4407-9e06-ef7b32cb8068.png)


You can manually remove menu item files from the script folder.




You can add this script to aliases like:
```bash
cd
git clone https://github.com/paloj/bash_menu.git
touch .bash_aliases
echo "alias menu='~/bash_menu/.bashmenu.sh'" >> .bash_aliases
```
Then relogin and run:
```bash
menu
```
