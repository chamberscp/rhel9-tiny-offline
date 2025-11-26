![Air-gapped Ready](https://img.shields.io/badge/Air--gapped-Ready-brightgreen) ![No Subscription](https://img.shields.io/badge/No_RedHat_Subscription-blue) ![DoD Ready](https://img.shields.io/badge/DoD-SIPR Automation-Ready-red)

# RHEL 9 Tiny Offline Mirror  
### ansible-navigator 24.2.0 + ansible-core + podman  
**100 % offline • No internet • No Red Hat subscription required**

Tested and working on RHEL 9.4 – 9.7 (November 2025)

## What this gives you
- Full `ansible-navigator` 24.2.0 (with EE support)
- `ansible-core` (2.14.x)
- `podman` + `tree` + `pipx`
- All 160+ RPMs and Python wheels included

Works anywhere with zero network.

##  Installation (copy-paste these exact lines)

```bash
# 1. Copy this entire folder to the offline RHEL 9 machine
# 2. Open terminal and cd into it
cd /path/to/rhel9-tiny-offline

# 3. Make installer executable
chmod +x offline-install.sh

# 4. Run it (requires sudo)
sudo ./offline-install.sh
