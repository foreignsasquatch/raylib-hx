#!/bin/sh

# This project includes a script based on the glfw-generate-wayland.sh script from the raylib-go project.
# Original source: https://github.com/gen2brain/raylib-go
# Credits to the contributors of raylib-go for the original implementation.

TMPDIR="/tmp"
GLGLFW_PATH="$(dirname "$0")/../lib/raylib/src/external/glfw/src"

# Log the paths
echo "Temporary directory: $TMPDIR"
echo "GLFW path: $GLGLFW_PATH"

# Check if GLFW path exists
if [ ! -d "$GLGLFW_PATH" ]; then
    echo "Error: GLFW path does not exist: $GLGLFW_PATH"
    exit 1
fi

cd $TMPDIR || exit
echo "Cloning Wayland repository..."
git clone --depth 1 https://gitlab.freedesktop.org/wayland/wayland.git
git clone --depth 1 https://gitlab.freedesktop.org/wayland/wayland-protocols.git

cd wayland || exit

# Remove old files if they exist
echo "Removing old Wayland protocol files..."
rm -f "$GLGLFW_PATH"/wayland-client-protocol.h
rm -f "$GLGLFW_PATH"/wayland-client-protocol-code.h

echo "Generating Wayland client protocol..."
wayland-scanner private-code ./protocol/wayland.xml "$GLGLFW_PATH"/wayland-client-protocol-code.h
wayland-scanner client-header ./protocol/wayland.xml "$GLGLFW_PATH"/wayland-client-protocol.h

cd $TMPDIR || exit
cd wayland-protocols || exit

# Remove old files if they exist
echo "Removing old Wayland protocols..."
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

# Generate protocols
echo "Generating xdg-shell protocol..."
wayland-scanner private-code ./stable/xdg-shell/xdg-shell.xml "$GLGLFW_PATH"/xdg-shell-client-protocol-code.h
wayland-scanner client-header ./stable/xdg-shell/xdg-shell.xml "$GLGLFW_PATH"/xdg-shell-client-protocol.h

echo "Generating fractional-scale protocol..."
wayland-scanner private-code ./staging/fractional-scale/fractional-scale-v1.xml "$GLGLFW_PATH"/fractional-scale-v1-client-protocol-code.h
wayland-scanner client-header ./staging/fractional-scale/fractional-scale-v1.xml "$GLGLFW_PATH"/fractional-scale-v1-client-protocol.h

echo "Generating xdg-activation protocol..."
wayland-scanner private-code ./staging/xdg-activation/xdg-activation-v1.xml "$GLGLFW_PATH"/xdg-activation-v1-client-protocol-code.h
wayland-scanner client-header ./staging/xdg-activation/xdg-activation-v1.xml "$GLGLFW_PATH"/xdg-activation-v1-client-protocol.h

echo "Generating xdg-decoration protocol..."
wayland-scanner private-code ./unstable/xdg-decoration/xdg-decoration-unstable-v1.xml "$GLGLFW_PATH"/xdg-decoration-unstable-v1-client-protocol-code.h
wayland-scanner client-header ./unstable/xdg-decoration/xdg-decoration-unstable-v1.xml "$GLGLFW_PATH"/xdg-decoration-unstable-v1-client-protocol.h

echo "Generating viewports protocol..."
wayland-scanner private-code ./stable/viewporter/viewporter.xml "$GLGLFW_PATH"/viewporter-client-protocol-code.h
wayland-scanner client-header ./stable/viewporter/viewporter.xml "$GLGLFW_PATH"/viewporter-client-protocol.h

echo "Generating relative-pointer protocol..."
wayland-scanner private-code ./unstable/relative-pointer/relative-pointer-unstable-v1.xml "$GLGLFW_PATH"/relative-pointer-unstable-v1-client-protocol-code.h
wayland-scanner client-header ./unstable/relative-pointer/relative-pointer-unstable-v1.xml "$GLGLFW_PATH"/relative-pointer-unstable-v1-client-protocol.h

echo "Generating pointer-constraints protocol..."
wayland-scanner private-code ./unstable/pointer-constraints/pointer-constraints-unstable-v1.xml "$GLGLFW_PATH"/pointer-constraints-unstable-v1-client-protocol-code.h
wayland-scanner client-header ./unstable/pointer-constraints/pointer-constraints-unstable-v1.xml "$GLGLFW_PATH"/pointer-constraints-unstable-v1-client-protocol.h

echo "Generating idle-inhibit protocol..."
wayland-scanner private-code ./unstable/idle-inhibit/idle-inhibit-unstable-v1.xml "$GLGLFW_PATH"/idle-inhibit-unstable-v1-client-protocol-code.h
wayland-scanner client-header ./unstable/idle-inhibit/idle-inhibit-unstable-v1.xml "$GLGLFW_PATH"/idle-inhibit-unstable-v1-client-protocol.h

# Go back to original directory
cd - || exit
