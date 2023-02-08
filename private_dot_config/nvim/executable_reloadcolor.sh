#!/bin/sh
for server in "$XDG_RUNTIME_DIR"/nvim.*.0; do
	nvim --server "$server" --remote-expr "execute('source ~/.config/nvim/lua/tombl/color.lua | source ~/.config/nvim/lua/tombl/statusline.lua')"
done
