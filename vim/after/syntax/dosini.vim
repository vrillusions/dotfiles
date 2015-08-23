" dosini syntax to enable folding
syn region dosiniSection start="^\[" end="\(\n\+\[\)\@=" contains=dosiniLabel,dosiniHeader,dosiniComment keepend fold
