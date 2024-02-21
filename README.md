# Compose

Compose is a tiny command-line utility for X11 or Wayland that helps
you edit your
[Compose](https://www.x.org/releases/current/doc/man/man5/Compose.5.xhtml)
file to add multi-key sequences.

It uses [`uni`](https://github.com/arp242/uni) behind the scenes to
let you search for Unicode codepoints by name. For each match, it
scaffolds a blank Compose line for you. You can then paste the line
into your Compose file as a starting point to add the multi-key
sequence.

For example:

```shell
$ compose hundred points
: "💯"   U1f4af # HUNDRED POINTS SYMBOL
```

Paste the output into your `~/.XCompose` file, then add a multi-key
sequence:

```plain
<Multi_key> <1> <0> <0> : "💯"   U1f4af # HUNDRED POINTS SYMBOL
```

Now you can type <kbd>Multi</kbd> <kbd>1</kbd> <kbd>0</kbd> <kbd>0</kbd>
to produce the 💯 emoji.

## Why?

This utility is for people who write and edit their own Compose
files. If you don’t know what a Compose file is, this tool is
probably not for you.

## Prerequisites

To run this program, you need the following programs installed:

- `bash`
- [`jq`](https://github.com/jqlang/jq)
- [`uni`](https://github.com/arp242/uni) by @arp242

You’ll also need an X server or a Wayland compositor that supports
Compose files.

## Installation

### Installing manually

Clone this repository to any directory you like.

### Installing from the AUR

Direct your favorite
[AUR helper](https://wiki.archlinux.org/title/AUR_helpers) to the
`compose` package.

## Contributing to Compose

See [`CONTRIBUTING.md`](https://github.com/claui/compose/blob/main/CONTRIBUTING.md).

## License

Copyright (c) 2024 Claudia Pellegrino

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
For a copy of the License, see [LICENSE](LICENSE).
