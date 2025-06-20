#!/usr/bin/env bash

log_info_zap "🚧 Executing Command 'st system install duf'"

if ! command -v duf &>/dev/null; then
    log_info "🔧 Installing duf..."
    sudo apt-get update -qq
    sudo apt-get install -y duf
    log_success "duf Installed Successfully"
else
    log_info "✅ duf is already installed."
fi

log_info_box "To uninstall duf, run 'st system uninstall duf'."
