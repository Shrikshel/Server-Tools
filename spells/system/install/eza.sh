#!/usr/bin/env bash

log_info_zap "🚧 Executing Command 'st system install eza'"

if ! command -v eza &>/dev/null; then
    log_info "🔧 Installing eza..."
    sudo apt-get update -qq
    sudo apt-get install -y eza
    log_success "eza Installed Successfully"
else
    log_info "eza is already installed."
fi

log_info_box "To uninstall eza, run 'st system uninstall eza'."
