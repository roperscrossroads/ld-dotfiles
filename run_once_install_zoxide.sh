#!/bin/bash
set -e

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh; then
            echo "zoxide installation complete."
        else
            echo "zoxide installation failed."
            exit 1
        fi
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac
