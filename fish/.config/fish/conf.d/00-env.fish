set -gx LANG C.UTF-8

# Use ja_JP.UTF-8 for LC_CTYPE if availabel to handle Japanese characters correctly
if locale -a | grep -q "ja_JP.utf8"
	set -gx LC_CTYPE ja_JP.UTF-8
else
	set -gx LC_CTYPE C.UTF-8
end

# JAVA_HOME: Get the path fron javac's location dynamically
if type -q javac
	set -gx JAVA_HOME (readlink -f (which javac) | sed "s:/bin/javac::")
end

# Editor settings (Fron previous lesson)
if type -q nvim
	set -gx EDITOR nvim
else if type -q vim
	set -gx EDITOR vim
else
	set -gx EDITOR vi
end
