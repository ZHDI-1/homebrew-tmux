# tmux io256 Homebrew tap

This tap tracks the published releases of the [tmux io256 fork](https://github.com/ZHDI-1/tmux).
Its formula installs the native build for Intel or Apple Silicon on macOS 15
or later.

If Homebrew already has stock tmux installed, uninstall it first with
`brew uninstall tmux`. Then install the fork and launch it with `tmux`.

    brew install ZHDI-1/tmux/tmux
    tmux

The workflow checks the published checksum and refreshes the formula every
hour. It also supports manual dispatch.
