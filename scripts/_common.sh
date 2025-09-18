#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_generate_env_file() {
    # We must use chrome sandbox for kernels 5.x, 6.x doesn't need it anymore
    kernel_release=$(uname -r)
    if [[ $kernel_release == 5.* ]] || [[ $YNH_DEBIAN_VERSION == bullseye ]]; then
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

_install_or_upgrade_chrome() {
    chrome_exec=''
    if [ "$install_chromium" -eq 1 ]; then

        #install chrome dependencies as now chrome is 64bits and they are not installed by default
        ynh_apt_install_dependencies libgbm1 libpango-1.0-0 libpangocairo-1.0-0 libcairo2 libasound2 libdrm2 libatk-bridge2.0-0 libatk1.0-0 libnss3 libxkbcommon0 libxrandr2 libxfixes3 libxcomposite1 libxdamage1

        # instruct puppeteer to install chrome
        local puppeeterDir="$install_dir/.cache/puppeteer"
        if [[ -e "$puppeeterDir/chrome" ]] || [[ -L "$puppeeterDir/chrome" ]]; then
            # Remove old versions of chrome
            ynh_safe_rm "$puppeeterDir/chrome"
        else
            mkdir --parents $puppeeterDir
            chown "$app:$app" $puppeeterDir
            chmod o-rwx,gu=rwx $puppeeterDir
        fi

        pushd "$puppeeterDir"
            ynh_exec_as_app $nodejs_dir/npx --yes @puppeteer/browsers install chrome@stable > browsers.txt
            chrome_exec=$(awk '/\S/{ s=$NF; } END{ print(s); }' browsers.txt)
        popd

    fi

}

_configure_chrome_exec() {
    chrome_exec=''
    local puppeeterDir="$install_dir/.cache/puppeteer"
    pushd "$puppeeterDir"
        if [[ -e 'browsers.txt' ]]; then
            chrome_exec=$(awk '/\S/{ s=$NF; } END{ print(s); }' browsers.txt)
        fi
    popd

}
