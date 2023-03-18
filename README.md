This is a simple gtk4 app that opens a filechoosernative.

You need crystal & libyaml-dev

- `make`
- `make flatpak`
- `make snap`

# Flatpak

- Run `flatpak run dev.geopjr.xdgportaltest`
- Open a file by clicking the button in the app
- Notice the path shown in the terminal (it should be `/run/user/XXXX/doc/$FILENAME`)

# Snap

- Run `snap install ./*.snap --dangerous` to install it
- Run `xdgportaltest`
- Open a file by clicking the button in the app
- Notice that you can't see any files
