# VideoForge Binaries

This folder contains the compiled binaries for different platforms.

## Download

Download the appropriate binary for your platform:

- **macOS**: `macos/videoforge`
- **Windows**: `windows/videoforge.exe`
- **Linux**: `linux/videoforge`

## Installation

### macOS

```bash
chmod +x macos/videoforge
sudo mv macos/videoforge /usr/local/bin/
```

### Windows

1. Download `windows/videoforge.exe`
2. Add to PATH or run from current directory

### Linux

```bash
chmod +x linux/videoforge
sudo mv linux/videoforge /usr/local/bin/
```

## Verification

After installation, verify it works:

```bash
videoforge --help
videoforge status
```

## Platform Support

| Platform | Architecture | GPU Support |
|----------|-------------|-------------|
| macOS | ARM64 (M1/M2/M3) | VideoToolbox ✅ |
| macOS | x86_64 (Intel) | VideoToolbox ✅ |
| Windows | x86_64 | NVENC, QSV, AMF ✅ |
| Linux | x86_64 | NVENC, QSV, VA-API ✅ |

## Binary Size

- macOS: ~2.8 MB
- Windows: ~3.2 MB
- Linux: ~3.0 MB

All binaries are statically linked with no external dependencies.

## Security

All binaries are:
- ✅ Compiled from source
- ✅ Statically linked
- ✅ No telemetry or tracking
- ✅ No network access required
- ✅ Open for inspection (binary analysis)

## Updates

Check for updates:
```bash
videoforge --version
```

Latest version: v1.0.0

Download latest: https://github.com/yourusername/videoforge-releases/releases/latest
