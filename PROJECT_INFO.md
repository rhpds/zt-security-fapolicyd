# zt-security-fapolicyd

## Project Information

**Lab Name:** Security: File Access Policy (fapolicyd)  
**Project ID:** zt-security-fapolicyd  
**Source:** Migrated from rhpds/zt-file-access-policy  
**Maintainer:** Nate Lager (nlager@redhat.com)

## Description

This lab teaches users how to configure and use file access policy in Red Hat Enterprise Linux using the fapolicyd daemon. Application control is a security approach designed to protect against unauthorized process execution on systems and helps mitigate the risk of malicious code (malware), such as ransomware.

## Lab Modules

1. **module-01: Install** - Install and configure the File Access Policy Daemon
2. **module-02: Verify** - Verify fapolicyd is blocking unauthorized applications
3. **module-03: Update** - Update the trust database to allow trusted applications
4. **module-04: Explore** - Explore fapolicyd integrity checking capabilities
5. **module-05: Integrity Controls** - Configure SHA-256 integrity checking

## Learning Objectives

After completing this lab, users will be able to:
- Install File Access Policy Daemon (fapolicyd)
- Verify fapolicyd configuration and block unauthorized applications
- Create a file-based trust database to allow trusted applications
- Configure integrity checking for fapolicyd

## Technical Details

- **Time to Complete:** ~30 minutes
- **VM Configuration:** 1 RHEL 10 instance with 4GB RAM, 40GB disk
- **Required Packages:** fapolicyd (installed automatically)
- **Network:** Default egress to port 443

## Directory Structure

```
zt-security-fapolicyd/
├── config/                     # VM, network, and firewall configuration
├── content/                    # Lab content (AsciiDoc)
│   └── modules/ROOT/pages/     # Module files (module-01.adoc through module-05.adoc)
├── runtime-automation/         # Per-module automation
│   └── module-##/              # Each module has setup, solve, and validation scripts
├── setup-automation/           # Initial provisioning scripts
├── utilities/                  # Helper scripts for local development
├── README.adoc                 # Lab overview
├── site.yml                    # Antora site configuration
└── ui-config.yml               # UI tabs and module configuration
```

## Standards Compliance

This lab follows the ZeroTouch lab template standards:
- ✅ Module naming: `module-##.adoc` and `module-##/` directories
- ✅ Script naming: `validation-rhel.sh` (not `validate-rhel.sh`)
- ✅ All scripts use `#!/bin/sh` shebang
- ✅ All scripts are executable
- ✅ Correct UI bundle: `nookbag-bundle`
- ✅ Proper Antora configuration

## Local Development

Build and test the lab locally:

```bash
cd zt-security-fapolicyd
./utilities/lab-build    # Build the documentation
./utilities/lab-serve    # Serve locally for preview
./utilities/lab-stop     # Stop the server
./utilities/lab-clean    # Clean build artifacts
```

## Notes

- This lab was renamed from `zt-file-access-policy` to `zt-security-fapolicyd` to follow a more descriptive naming convention
- The original lab content and automation logic have been preserved
- The migration focused on structural compliance with ZeroTouch template standards
