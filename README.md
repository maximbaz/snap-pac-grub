# snap-pac-grub

This script is intended to be used as a Pacman hook for regenerating the GRUB config after updates, in systems using snapper and grub-btrfs.

## Configuration

Two optional environment variables control the behavior:

### `SNAP_PAC_SKIP`
Skip the script entirely. Use this to disable snapshot-related GRUB updates when not needed.

Values that cause it to skip:

* `y, yes, true, 1`

### `SNAP_PAC_GRUB_ASYNC`
By default, grub-mkconfig can take some time to complete. This script supports an asynchronous mode, allowing it to run in the background and send output to the system log. This makes Pacman operations faster, while still preserving a log of GRUB config generation in case you want to inspect it later.

You can then inspect the output using:
```bash
journalctl -t grub-mkconfig
```

Values that enable async mode:

* `y, yes, true, 1`



### Example `.bashrc` / `.zshrc` / ...

```bash
export SNAP_PAC_GRUB_ASYNC=1
```