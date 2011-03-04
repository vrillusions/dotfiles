# TODO: Optimize this
__bzr_prompt() {
	local bzrcmd="$(which bzr)"
	if [ -x "$bzrcmd" ]; then
		local versioninfo="$(bzr version-info -q --check-clean)"
		if [ "$versioninfo" != "" ]; then
			bzr_branch=$(echo "$versioninfo" | sed -e '/^branch-nick/!d' -e 's/^branch-nick: //')
			bzr_revno=$(echo "$versioninfo" | sed -e '/^revno/!d' -e 's/^revno: //')
			if [[ $(echo "$versioninfo" | sed -e '/^clean/!d' -e 's/^clean: //') ]]; then
				bzr_dirty="!"
			else
				bzr_dirty=""
			fi
			echo "(${bzr_branch}@${bzr_revno}${bzr_dirty})"
		fi
	fi
}
