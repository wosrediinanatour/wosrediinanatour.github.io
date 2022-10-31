---
layout: post
usemathjax: false
lang: en
title: How to upgrade Fedora Silverblue
---

# How to upgrade Fedora Silverblue: rpm-ostree, Flatpak, and Toolbox

Upgrading Fedora Silverblue consists of three parts:
1. Ostree 
2. Toolbox (Fedora container)
3. Flatpak

# Preperation

In you current toolbox, type `dnf history`, to see, which RPM packages you have installed by `dnf install`.
You can the use the ID for more information: `dnf history info <ID>` and a complete list of packages.
Once starting the upgraded toolbox, you will have to use this list for installation of the wanted tools.

# Upgrade Ostree (kernel, basic system)

```bash
ostree remote refs fedora | grep silverblue
rpm-ostree rebase fedora:fedora/36/x86_64/silverblue
```

For more info see [Fedora's page](https://docs.fedoraproject.org/en-US/fedora-silverblue/updates-upgrades-rollbacks/).

# Upgrade flatpak apps

```bash
flatpak upgrade
flatpak uninstall --unused
```

# Use new toolbox

Create a toolbox of the Fedora's latest version:
```bash
toolbox create
```

You can specify, which container you want to enter by (here release 36):
```bash
toolbox enter --distro fedora --release f36 # Enter container (shell)
toolbox run --release f36 bash # Run specific command in a specific container
```

If you want to have VIM as default editor, the perform the following:

```bash
sudo dnf remove nano-default-editor
sudo dnf install -y vim-default-editor
```

Install all RPM packages you have got in the Preperation section.
