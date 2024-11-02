#!/bin/bash

install_on_fedora() {
    sudo dnf install -y ansible
}

install_on_ubuntu() {
    sudo apt-get update
    sudo apt-get install -y ansible
}

install_on_debian() {
    sudo apt-get update
    sudo apt-get install -y ansible
}

install_on_mac() {
    brew install ansible
}

detect_os() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case "$ID" in
            fedora)
                install_on_fedora
                ;;
            ubuntu)
                install_on_ubuntu
                ;;
            debian)
                install_on_debian
                ;;
            *)
                echo "Unsupported Linux distribution: $ID"
                exit 1
                ;;
        esac
    else
        echo "Unable to detect operating system."
        exit 1
    fi
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        detect_os
        ;;
    Darwin*)
        install_on_mac
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

# Run the Ansible playbook
ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."
