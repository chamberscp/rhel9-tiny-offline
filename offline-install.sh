#!/bin/bash
echo "=== Installing Ansible + Podman + ansible-navigator 100% OFFLINE ==="

echo "Installing RPMs directly (bypassing all repo metadata)..."
sudo dnf localinstall -y $(dirname $0)/packages/*.rpm --allowerasing

echo "Installing ansible-navigator + all deps via pipx (fully offline)..."
pipx uninstall ansible-navigator 2>/dev/null || true
pipx install --force --pip-args="--no-index --find-links=$(dirname $0)/wheels" \
  $(dirname $0)/wheels/ansible_navigator-*.whl

echo ""
echo "=== DONE — YOU ARE NOW 100% OFFLINE READY ==="
echo "Test it:"
echo "   ansible-navigator --version"
echo "   ansible --version | head -n1"
echo "   podman --version"
