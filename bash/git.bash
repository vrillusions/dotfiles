__git_prompt() {
	local gitcmd="$(which git)"
	if [ -x "$gitcmd" ]; then
		local dir="$(git rev-parse --git-dir 2>/dev/null)"
		if [ -n "$dir" ]; then
			if [[ $((git status 2> /dev/null) | tail -n1) != "nothing to commit"* ]]; then
				git_dirty="!"
			else
				git_dirty=""
			fi
			git_branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
			echo "(${git_branch}${git_dirty})"
		fi
	fi
}
	
