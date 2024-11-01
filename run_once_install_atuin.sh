#!/bin/bash
set -e

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh; then
            echo "Atuin installation complete."
        else
            echo "Atuin installation failed."
            exit 1
        fi
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac
