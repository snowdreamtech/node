# Docker Image Tags Reference

This document describes the Docker image tagging strategy for the Node project.

## Tag Naming Convention

All images use the format: `snowdreamtech/node:TAG`

Where `TAG` follows these patterns:

- **Variant-specific tags**: `TAG-variant` (e.g., `nightly-alpine`, `24.22.1-alpine`)
- **Default tags** (Debian only): `TAG` (e.g., `nightly`, `latest`, `20.19.2`)

## Supported Registries

All tags are pushed to two registries:

- **DockerHub**: `snowdreamtech/node:TAG`
- **GitHub Container Registry**: `ghcr.io/snowdreamtech/node:TAG`

## Tag Scenarios

### 1. Branch Builds (dev/main)

#### Push to `dev` branch

```bash
git push origin dev
```

**Generated tags:**

```
snowdreamtech/node:dev-alpine
snowdreamtech/node:dev-debian
snowdreamtech/node:dev              # ← Debian (default)
snowdreamtech/node:dev-rocky
```

#### Push to `main` branch

```bash
git push origin main
```

**Generated tags:**

```
snowdreamtech/node:main-alpine
snowdreamtech/node:latest-alpine
snowdreamtech/node:main-debian
snowdreamtech/node:latest-debian
snowdreamtech/node:main             # ← Debian (default)
snowdreamtech/node:latest           # ← Debian (default)
snowdreamtech/node:main-rocky
snowdreamtech/node:latest-rocky
```

---

### 2. Release Tags (Semantic Versioning)

#### Alpine Release

```bash
git tag alpine-v24.22.1
git push origin alpine-v24.22.1
```

**Generated tags:**

```
snowdreamtech/node:24.22.1-alpine
snowdreamtech/node:latest-alpine
```

#### Debian Release

```bash
git tag debian-v20.19.2
git push origin debian-v20.19.2
```

**Generated tags:**

```
snowdreamtech/node:20.19.2-debian
snowdreamtech/node:latest-debian
snowdreamtech/node:20.19.2           # ← Debian (default)
snowdreamtech/node:latest           # ← Debian (default)
```

#### Rocky Release

```bash
git tag rocky-v22.23.2
git push origin rocky-v22.23.2
```

**Generated tags:**

```
snowdreamtech/node:22.23.2-rocky
snowdreamtech/node:latest-rocky
```

---

### 3. Nightly Builds (Scheduled)

**Trigger:** Automatically every day at 17:00 UTC

**Generated tags:**

```
# Alpine
snowdreamtech/node:nightly-alpine
snowdreamtech/node:20260427-alpine

# Debian (with default tags)
snowdreamtech/node:nightly-debian
snowdreamtech/node:20260427-debian
snowdreamtech/node:nightly          # ← Debian (default)
snowdreamtech/node:20260427         # ← Debian (default)

# Rocky
snowdreamtech/node:nightly-rocky
snowdreamtech/node:20260427-rocky
```

---

## Tag Priority

Tags are generated with the following priority (higher number = higher priority):

| Priority | Type | Example Tags | Trigger |
|----------|------|--------------|---------|
| 1000 | Nightly | `nightly`, `nightly-alpine` | Schedule |
| 900 | Date | `20260427`, `20260427-alpine` | Schedule |
| 800 | Version | `24.22.1-alpine`, `20.19.2` | Tag push |
| 600 | Branch | `dev-alpine`, `main-debian` | Branch push |
| 200 | Latest | `latest`, `latest-alpine` | Main/Tag |

---

## Default Variant (Debian)

Debian is designated as the **default variant** (`is_latest: true`), which means:

✅ **Debian gets BOTH suffixed AND unsuffixed tags:**

```
snowdreamtech/node:nightly-debian   # Variant-specific
snowdreamtech/node:nightly          # Default (no suffix)

snowdreamtech/node:20.19.2-debian    # Variant-specific
snowdreamtech/node:20.19.2           # Default (no suffix)

snowdreamtech/node:latest-debian    # Variant-specific
snowdreamtech/node:latest           # Default (no suffix)
```

❌ **Alpine and Rocky get ONLY suffixed tags:**

```
snowdreamtech/node:nightly-alpine   # Variant-specific only
snowdreamtech/node:nightly-rocky    # Variant-specific only
```

---

## Usage Examples

### Pull the latest Debian image (default)

```bash
docker pull snowdreamtech/node:latest
# or
docker pull snowdreamtech/node:latest-debian
```

### Pull the latest Alpine image

```bash
docker pull snowdreamtech/node:latest-alpine
```

### Pull the latest Rocky image

```bash
docker pull snowdreamtech/node:latest-rocky
```

### Pull a specific version

```bash
# Alpine 24.22.1
docker pull snowdreamtech/node:24.22.1-alpine

# Debian 20.19.2 (two ways)
docker pull snowdreamtech/node:20.19.2-debian
docker pull snowdreamtech/node:20.19.2

# Rocky 22.23.2
docker pull snowdreamtech/node:22.23.2-rocky
```

### Pull nightly builds

```bash
# Alpine nightly
docker pull snowdreamtech/node:nightly-alpine

# Debian nightly (two ways)
docker pull snowdreamtech/node:nightly-debian
docker pull snowdreamtech/node:nightly

# Rocky nightly
docker pull snowdreamtech/node:nightly-rocky
```

---

## Tag Lifecycle

### Development Flow

```
1. Push to dev → node:dev-alpine, node:dev-debian, node:dev, node:dev-rocky
2. Push to main → node:main-alpine, node:latest-alpine, node:main-debian, node:latest-debian, node:main, node:latest, node:main-rocky, node:latest-rocky
3. Create tag → node:VERSION-variant, node:latest-variant (+ unsuffixed for Debian)
```

### Release Flow (with Release Please)

```
1. Merge PR to main → Release Please creates release PR
2. Merge release PR → Release Please creates tags (alpine-vX.Y.Z, debian-vX.Y.Z, rocky-vX.Y.Z)
3. Tag push triggers build → Images published with version tags
```

---

## Matrix Configuration

The workflow uses a matrix strategy with three variants:

```yaml
matrix:
  include:
    - variant: alpine
      version: "24.22.1"
      is_latest: false

    - variant: debian
      version: "20.19.2"
      is_latest: true    # ← Default variant

    - variant: rocky
      version: "22.23.2"
      is_latest: false
```

Only the variant with `is_latest: true` receives unsuffixed tags.

---

## Metadata Action Configuration

The key configuration that enables this tagging strategy:

```yaml
images: |
  name=ghcr.io/snowdreamtech/node,enable=true
  name=snowdreamtech/node,enable=true
flavor: |
  latest=false
  prefix=
  suffix=-${{ matrix.variant }}  # ← Adds variant suffix to all tags
```

For Debian (is_latest), additional rules generate unsuffixed tags:

```yaml
type=raw,enable=${{ matrix.is_latest }},priority=1000,prefix=,suffix=,pattern=nightly
```

This creates both `nightly-debian` (from flavor suffix) and `nightly` (from this rule).
