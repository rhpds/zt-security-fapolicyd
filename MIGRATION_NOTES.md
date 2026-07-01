# Migration Notes: zt-security-fapolicyd

## Overview
This lab was migrated from https://github.com/rhpds/zt-file-access-policy to follow the ZeroTouch lab template standards defined in the claude-zt-helper repository.

The lab has been renamed to `zt-security-fapolicyd` to follow a more descriptive naming convention that indicates this is a security-focused lab about the fapolicyd daemon.

## Changes Made

### 1. Directory Structure
- Created new lab at: `generated/zt-security-fapolicyd/`
- Based on template: `zt-rhel-tmm-template/`

### 2. Content Files (Module Naming)
**Changed from:**
- `01-install.adoc`
- `02-verify.adoc`
- `03-update.adoc`
- `04-explore.adoc`
- `05-integritycontrols.adoc`

**To:**
- `module-01.adoc`
- `module-02.adoc`
- `module-03.adoc`
- `module-04.adoc`
- `module-05.adoc`

### 3. Runtime Automation Directories
**Changed from:**
- `runtime-automation/01-install/`
- `runtime-automation/02-verify/`
- etc.

**To:**
- `runtime-automation/module-01/`
- `runtime-automation/module-02/`
- etc.

### 4. Script Naming
**Changed:**
- `validate-rhel.sh` → `validation-rhel.sh` (all modules)

### 5. Configuration Files
- **instances.yaml**: Updated to include `fapolicyd` package
- **ui-config.yml**: Updated module names to `module-01` through `module-05`
- **site.yml**: Updated title to "Security: File Access Policy (fapolicyd)"

### 6. Setup Automation
Updated `setup-automation/setup-rhel.sh` to:
- Download cowsay tarball to `/home/rhel/`
- Set correct ownership
- Add fapolicyd rule for ansible runtime automation

## Verification Checklist

✅ All content files use `module-##.adoc` naming
✅ All runtime directories use `module-##/` naming
✅ All validation scripts use `validation-rhel.sh` (not `validate-rhel.sh`)
✅ All scripts use `#!/bin/sh` shebang
✅ All scripts are executable
✅ ui-config.yml references correct module names
✅ site.yml has correct title and start_page
✅ Config files (instances, networks, firewall) migrated
✅ Setup script includes lab-specific provisioning
✅ All 5 modules have setup, solve, and validation scripts

## Next Steps

1. Test the lab by building it locally with utilities/lab-build
2. Verify all modules load correctly
3. Test automation scripts
4. Review content for any needed updates
5. Push to git repository when ready

## Notes

- Original source maintained module content and automation logic
- This migration focused on structural compliance with template standards
- Content quality and accuracy preserved from original
