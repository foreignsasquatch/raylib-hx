#!/bin/sh

# This project includes a script based on the glfw-generate-wayland.sh script from the raylib-go project.
# Original source: https://github.com/gen2brain/raylib-go
# Credits to the contributors of raylib-go for the original implementation.

# Save the current directory
ORIGINAL_DIR="$(pwd)"
TMPDIR="/tmp"
GLGLFW_PATH="$(cd "$(dirname "$0")/../lib/raylib/src/external/glfw/src" && pwd)"

# Change to the temporary directory
cd $TMPDIR

# Clone the Wayland repositories
git clone --depth 1 https://gitlab.freedesktop.org/wayland/wayland.git
git clone --depth 1 https://gitlab.freedesktop.org/wayland/wayland-protocols.git

# Process the Wayland protocol files
cd wayland

rm -f "$GLGLFW_PATH/wayland-client-protocol.h"
rm -f "$GLGLFW_PATH/wayland-client-protocol-code.h"

wayland-scanner private-code ./protocol/wayland.xml "$GLGLFW_PATH/wayland-client-protocol-code.h"
wayland-scanner client-header ./protocol/wayland.xml "$GLGLFW_PATH/wayland-client-protocol.h"

cd "$TMPDIR/wayland-protocols"

# Remove old headers
rm -f "$GLGLFW_PATH"/xdg-shell-client-protocol.h
rm -f "$GLGLFW_PATH"/xdg-shell-client-protocol-code.h
rm -f "$GLGLFW_PATH"/fractional-scale-v1-client-protocol.h
rm -f "$GLGLFW_PATH"/fractional-scale-v1-client-protocol-code.h
rm -f "$GLGLFW_PATH"/xdg-activation-v1-client-protocol.h
rm -f "$GLGLFW_PATH"/xdg-activation-v1-client-protocol-code.h
rm -f "$GLGLFW_PATH"/xdg-decoration-client-protocol.h
rm -f "$GLGLFW_PATH"/xdg-decoration-client-protocol-code.h
rm -f "$GLGLFW_PATH"/viewporter-client-protocol.h
rm -f "$GLGLFW_PATH"/viewporter-client-protocol-code.h
rm -f "$GLGLFW_PATH"/relative-pointer-unstable-v1-client-protocol.h
rm -f "$GLGLFW_PATH"/relative-pointer-unstable-v1-client-protocol-code.h
rm -f "$GLGLFW_PATH"/pointer-constraints-unstable-v1-client-protocol.h
rm -f "$GLGLFW_PATH"/pointer-constraints-unstable-v1-client-protocol-code.h
rm -f "$GLGLFW_PATH"/idle-inhibit-unstable-v1-client-protocol.h
rm -f "$GLGLFW_PATH"/idle-inhibit-unstable-v1-client-protocol-code.h

# Generate new protocol headers
wayland-scanner private-code ./stable/xdg-shell/xdg-shell.xml "$GLGLFW_PATH/xdg-shell-client-protocol-code.h"
wayland-scanner client-header ./stable/xdg-shell/xdg-shell.xml "$GLGLFW_PATH/xdg-shell-client-protocol.h"

wayland-scanner private-code ./staging/fractional-scale/fractional-scale-v1.xml "$GLGLFW_PATH/fractional-scale-v1-client-protocol-code.h"
wayland-scanner client-header ./staging/fractional-scale/fractional-scale-v1.xml "$GLGLFW_PATH/fractional-scale-v1-client-protocol.h"

wayland-scanner private-code ./staging/xdg-activation/xdg-activation-v1.xml "$GLGLFW_PATH/xdg-activation-v1-client-protocol-code.h"
wayland-scanner client-header ./staging/xdg-activation/xdg-activation-v1.xml "$GLGLFW_PATH/xdg-activation-v1-client-protocol.h"

wayland-scanner private-code ./unstable/xdg-decoration/xdg-decoration-unstable-v1.xml "$GLGLFW_PATH/xdg-decoration-unstable-v1-client-protocol-code.h"
wayland-scanner client-header ./unstable/xdg-decoration/xdg-decoration-unstable-v1.xml "$GLGLFW_PATH/xdg-decoration-unstable-v1-client-protocol.h"

wayland-scanner private-code ./stable/viewporter/viewporter.xml "$GLGLFW_PATH/viewporter-client-protocol-code.h"
wayland-scanner client-header ./stable/viewporter/viewporter.xml "$GLGLFW_PATH/viewporter-client-protocol.h"

wayland-scanner private-code ./unstable/relative-pointer/relative-pointer-unstable-v1.xml "$GLGLFW_PATH/relative-pointer-unstable-v1-client-protocol-code.h"
wayland-scanner client-header ./unstable/relative-pointer/relative-pointer-unstable-v1.xml "$GLGLFW_PATH/relative-pointer-unstable-v1-client-protocol.h"

wayland-scanner private-code ./unstable/pointer-constraints/pointer-constraints-unstable-v1.xml "$GLGLFW_PATH/pointer-constraints-unstable-v1-client-protocol-code.h"
wayland-scanner client-header ./unstable/pointer-constraints/pointer-constraints-unstable-v1.xml "$GLGLFW_PATH/pointer-constraints-unstable-v1-client-protocol.h"

wayland-scanner private-code ./unstable/idle-inhibit/idle-inhibit-unstable-v1.xml "$GLGLFW_PATH/idle-inhibit-unstable-v1-client-protocol-code.h"
wayland-scanner client-header ./unstable/idle-inhibit/idle-inhibit-unstable-v1.xml "$GLGLFW_PATH/idle-inhibit-unstable-v1-client-protocol.h"

# Return to the original directory
cd "$ORIGINAL_DIR"
