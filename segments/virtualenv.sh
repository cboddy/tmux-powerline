source "${TMUX_POWERLINE_DIR_LIB}/tmux_adapter.sh"

venv_symbol=""
venv_colour="5"

run_segment() {
	tmux_path=$(get_tmux_cwd)
	cd "$tmux_path"
    venv_name=$(echo $VIRTUAL_ENV | sed "s/.*\///")
    echo -n "$VIRTUAL_ENV"
    if [ -n $venv_name ]; then
    	echo  -n "#[fg=colour${venv_colour}]$venv_symbol #[fg=colour${TMUX_POWERLINE_CUR_SEGMENT_FG}]$venv_name"
    fi
    return 0
}
