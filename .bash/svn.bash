__svn_prompt() {
	local dir="$(git rev-parse --git-dir 2>/dev/null)"
	if [[ -d .svn ]]; then
		if [[ $(svn status | wc -l | sed -e 's/ //g') -gt 0 ]]; then
			svn_dirty="!"
		else
			svn_dirty=""
		fi
		svn_rev=$(svn info | grep Revision | awk '{print $2}')
		echo "(r${svn_rev}${svn_dirty})"
	fi
}