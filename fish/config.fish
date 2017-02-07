bind \eD backward-kill-word
eval (envfile2fish)
set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_showcolorhints 1
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
#[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
set -x CUDA_HOME /usr/local/cuda
set -x DYLD_LIBRARY_PATH "$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
set -x PATH "$CUDA_HOME/bin" $PATH
set -g fish_user_paths "$HOME/.cargo/bin" "/usr/local/bin" $fish_user_paths
