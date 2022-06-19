export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export DENO_INSTALL="$XDG_DATA_HOME/deno"
export CARGO_HOME="$XDG_CACHE_HOME/cargo"
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin:$CARGO_HOME/bin:$DENO_INSTALL/bin"
export PATH="$PATH:/usr/local/go/bin"

. "$CARGO_HOME/env"
