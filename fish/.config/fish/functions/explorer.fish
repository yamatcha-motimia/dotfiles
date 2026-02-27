function explorer --description "Open current directory in Windows Explorer"
	/mnt/c/Windows/explorer.exe (wslpath -w (pwd))
end
