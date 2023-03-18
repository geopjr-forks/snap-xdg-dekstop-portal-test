all:
	shards install
	./bin/gi-crystal
	shards build

snap:
	snapcraft -v

flatpak:
	flatpak-builder ./build ./dev.geopjr.xdgportaltest.yaml --force-clean --install --user --install-deps-from=flathub