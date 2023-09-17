# Bash Menu

[![Issues Badge](https://img.shields.io/github/issues/paloj/bash_menu)](https://github.com/paloj/bash_menu/issues)
[![Pull Requests Badge](https://img.shields.io/github/issues-pr/paloj/bash_menu)](https://github.com/paloj/bash_menu/pulls)
[![Contributors Badge](https://img.shields.io/github/contributors/paloj/bash_menu)](https://github.com/paloj/bash_menu/graphs/contributors)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

Welcome to the **Bash Menu** codebase! This is a command-line menu system for Linux bash. It allows you to add custom commands to a menu with a short nickname. This is particularly useful for managing ssh targets or other command lists.

## Main Functionalities

- Add custom commands to a menu with a short nickname.
- Options to run, create new, or quit the menu.
- When a new menu item is added, a new file is created in the bash menu folder. The file name is the nickname and the contents are the script that will be run when the menu item is selected.
- Unwanted menu items can be manually removed from the script folder.

## Installation

Clone the repository:

```bash
cd
git clone https://github.com/paloj/bash_menu.git
```

Make the script executable:

```bash
sudo chmod +x ~/bash_menu/.bashmenu.sh
```

You can add this script to aliases as `menu` or whatever you want:

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

## Usage

After installation, you can run the menu by typing `menu` in your terminal. This will list all the files in the bash menu folder. You can select a file to run the command associated with it, create a new command, or quit the menu.

To add a new command, select "new" from the menu and follow the prompts to enter the command and nickname.

To remove an unwanted menu item, navigate to the bash menu folder and use the `rm` command:

```bash
cd ~/bash_menu
rm README.md
rm pi_local
```

## Contributing

We welcome contributions from the community! If you encounter a bug, please open an issue on our [GitHub issues page](https://github.com/paloj/bash_menu/issues). When submitting a pull request, please make sure your changes are well-documented and include a clear, detailed description of the problem and your proposed solution.

For support, please open an issue on our [GitHub issues page](https://github.com/paloj/bash_menu/issues). If you're interested in commercial support, please email the maintainer.

If you find this project useful and would like to make a donation, please email the maintainer.

## Authors and Maintainers

This project is maintained by [paloj](https://github.com/paloj).

## Contact

For any inquiries, please open an issue on our [GitHub issues page](https://github.com/paloj/bash_menu/issues).

Happy coding! :grinning: