#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version=20

_generate_env_file() {
    # We must use chrome sandbox for kernels 5.x, 6.x doesn't need it anymore
    kernel_release=$(uname -r)
    if [[ $kernel_release == 5.* ]]; then
        bypass_sandbox="TRUE"
        if [ $install_chromium -eq 1 ]; then
            ynh_print_warn "Using non sandboxed chromium as kernel release is less than 6.x"
        fi
    else
        bypass_sandbox="FALSE"
    fi

    ynh_config_add --template=".env" --destination="$install_dir/.env"
    #chmod 400 "$install_dir/.env"
    #chown $app:$app "$install_dir/.env"
}

_install_restart_script_and_sudoers() {
    # Enable restarting of services from ssh
    ynh_config_add --template="restart-proxy.sh" --destination="$install_dir/restart-proxy.sh"
    chown "$app:$app" "$install_dir/restart-proxy.sh"
    chmod o-rwx,gu=rwx "$install_dir/restart-proxy.sh"

    # Add sudoers file for this specific command
    ynh_config_add --template="cac-proxy-sudoers" --destination="/etc/sudoers.d/$app-sudoers"
    chown root:root "/etc/sudoers.d/$app-sudoers"
    chmod o-rwx,gu=r "/etc/sudoers.d/$app-sudoers"
}

_remove_restart_script_and_sudoers() {
    if [ -f "/etc/sudoers.d/$app-sudoers" ]; then
        ynh_safe_rm "/etc/sudoers.d/$app-sudoers"
    fi
}
