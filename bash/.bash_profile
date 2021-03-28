# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

ll=$(last -1 -R  $USER | head -1 | cut -c 20-)
echo "Last login time [$ll]" 

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you donÃ¢ÂÂt want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


export LINGO_17_HOME="/home/asefshahriar/lingo17"

export PATH="/home/asefshahriar/lingo17:$PATH"

export LINGO_18_HOME="/home/asefshahriar/lingo18"

export PATH="/home/asefshahriar/lingo18:$PATH"
