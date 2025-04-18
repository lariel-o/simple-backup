# A simple backup script
The simplest way I found to make my backups

## The file "LIST"
You must put the absolute path of the files/directories you want to copy in the file named "LIST". That way, the script will track what you want and check if you typed the path name correctly. e.g:
```
/home/user/Desktop
/home/user/.config/nvim
/home/user/.config/fish
/opt/builded/
```

## Running script
Give execution permision to the script and execute it
```bash
sudo chmod ug+x exec.sh
./exec.sh
```
Or execute it using bash
```bash
bash exec.sh
```
