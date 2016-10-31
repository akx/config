bind \eD backward-kill-word
eval (envfile2fish)
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH
set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_showcolorhints 1
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
#[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
