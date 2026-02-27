# 1. 基本は C.UTF-8
set -gx LANG C.UTF-8

# 2. 文字の取り扱いだけ ja_JP.UTF-8 で日本語対応
if locale -a | grep -q "ja_JP.utf8"
	set -gx LC_CTYPE ja_JP.UTF-8
else
	set -gx LC_CTYPE C.UTF-8 # 存在しない場合は標準のUTF-8
end

set -gx EDITOR nvim
