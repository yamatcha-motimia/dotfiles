function fish_greeting
    # --- カラー定義 ---
    set -l blue1 (set_color -o 00d2ff)
    set -l blue2 (set_color -o 7ff0ff)
    set -l white (set_color -o ffffff)
    set -l highlight (set_color cyan) # アクセント
    set -l dim (set_color 666)        # 控えめなグレー
    set -l normal (set_color normal)

    # --- ASCIIアート ---
    echo "$blue1 _____ ___ _____ _____     _____ _____ _____ __    __    "
    echo "$blue1|   __|   |   __|  |  |   |   __|  |  |   __|  |  |  |   "
    echo "$blue2|   __|   |__   |     |   |__   |     |   __|  |__|  |__ "
    echo "$white|__|  |___|_____|__|__|   |_____|__|__|_____|_____|_____|"
    echo "$normal"

    # --- メッセージエリア ---
    set -l day  (date "+%Y/%m/%d (%a)")
    set -l time (date "+%H:%M")
    set -l host (hostname)

    echo "  $dim  Welcome back, $USER."
    echo "  $dim  Date: $day"
    echo "  $dim  Login at $time"
    echo "  ────────────────────────────────────────────"
    echo "  $highlight>$normal fish shell is ready to swim!"
end
