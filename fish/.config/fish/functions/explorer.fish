function explorer --description "Open current directory in Windows Explorer"
	# 変数 target に対象のパスを格納
	set -l target $argv[1]
	test -z "$target"; and set target $PWD

	# 入力された引数の判定 
	if not test -d $target
		echo "explorer: path does not exist: $target" >&2
		return 1
	end

	# explorer.exe は正常動作で 1 を返すため 0 に変換
	/mnt/c/Windows/explorer.exe (wslpath -w $target)
	or test $status -eq 1
end
