#!/bin/bash
set -e

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        # Install zoxide
        if curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh; then
            echo "zoxide installation complete."
        else
            echo "zoxide installation failed."
            exit 1
        fi

        # Install fzf
        if git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; then
            ~/.fzf/install
            echo "fzf installation complete."
        else
            echo "fzf installation failed."
            exit 1
        fi
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac
