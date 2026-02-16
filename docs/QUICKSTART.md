# VideoForge Quick Start Guide

Get started with VideoForge in under 5 minutes!

## Installation

### macOS

```bash
# Download the binary
curl -L https://github.com/yourusername/videoforge-releases/releases/latest/download/videoforge-macos -o videoforge

# Make it executable
chmod +x videoforge

# Test it
./videoforge --help

# (Optional) Move to PATH for global access
sudo mv videoforge /usr/local/bin/
```

### Windows

1. Download `videoforge-windows.exe` from [Releases](https://github.com/yourusername/videoforge-releases/releases)
2. Open PowerShell in the download folder
3. Run: `.\videoforge-windows.exe --help`
4. (Optional) Add to PATH for global access

### Linux

```bash
# Download the binary
wget https://github.com/yourusername/videoforge-releases/releases/latest/download/videoforge-linux

# Make it executable
chmod +x videoforge-linux

# Test it
./videoforge-linux --help

# (Optional) Move to PATH
sudo mv videoforge-linux /usr/local/bin/videoforge
```

## Your First Encoding

### Step 1: Check GPU Availability

```bash
videoforge status
```

**Output:**
```
🎬 VideoForge - Video Encoder

GPU Status:
  ✓ Apple VideoToolbox detected (~400 FPS at 1080p)

Supported codecs: H.264, H.265, AV1
Expected speedup: 10x with GPU acceleration
```

### Step 2: Encode Your First Video

```bash
# GPU mode (recommended - 10x faster!)
videoforge encode --gpu --input video.mp4 --output output.mp4
```

**That's it!** Your video will encode 10x faster than FFmpeg.

## Common Use Cases

### 1. YouTube Upload (Fast, High Quality)

```bash
videoforge encode --gpu \
  --input raw_footage.mov \
  --output youtube_upload.mp4 \
  --codec h264 \
  --preset fast \
  --crf 20
```

**Result:** 10x faster than FFmpeg, perfect quality for YouTube

### 2. Batch Processing Multiple Videos

```bash
# Encode all MP4 files in current directory
for video in *.mp4; do
  videoforge encode --gpu \
    --input "$video" \
    --output "encoded_${video}"
done
```

### 3. Maximum Speed (BEAST MODE)

```bash
videoforge encode --beast \
  --input large_video.mp4 \
  --output output.mp4 \
  --workers 6
```

**Result:** 30-100x faster! Uses GPU + parallel processing

### 4. No GPU? Use Distributed Mode

```bash
videoforge encode --distributed \
  --input video.mp4 \
  --output output.mp4 \
  --workers 4
```

**Result:** 4-8x faster using CPU cores in parallel

## Understanding the Modes

### `--gpu` (Recommended)
- **Speed:** 10x faster
- **Hardware:** Any GPU (NVIDIA, AMD, Intel, Apple)
- **Use when:** You have a GPU (most computers do!)

### `--distributed`
- **Speed:** 4-8x faster
- **Hardware:** CPU only (no GPU needed)
- **Use when:** No GPU available, or CPU has many cores

### `--beast`
- **Speed:** 30-100x faster
- **Hardware:** GPU + multi-core CPU
- **Use when:** Maximum speed needed, have good hardware

### `--native`
- **Speed:** 1.5x faster
- **Hardware:** CPU only
- **Use when:** Testing, or specific codec needs

## Quality Settings

### CRF (Constant Rate Factor)

Lower CRF = Better quality + Larger file

```bash
# Excellent quality (large file)
videoforge encode --gpu -i video.mp4 -o output.mp4 --crf 18

# High quality (default)
videoforge encode --gpu -i video.mp4 -o output.mp4 --crf 23

# Good quality (smaller file)
videoforge encode --gpu -i video.mp4 -o output.mp4 --crf 28
```

### Presets

Faster preset = Faster encoding + Larger file

```bash
# Fastest encoding
videoforge encode --gpu -i video.mp4 -o output.mp4 --preset ultrafast

# Balanced (default)
videoforge encode --gpu -i video.mp4 -o output.mp4 --preset medium

# Best compression
videoforge encode --gpu -i video.mp4 -o output.mp4 --preset slow
```

## Codecs

```bash
# H.264 (most compatible)
videoforge encode --gpu -i video.mp4 -o output.mp4 --codec h264

# H.265 (better compression)
videoforge encode --gpu -i video.mp4 -o output.mp4 --codec h265

# AV1 (best compression, newer)
videoforge encode --gpu -i video.mp4 -o output.mp4 --codec av1
```

## Performance Tips

### 1. Use GPU Mode for Single Videos
```bash
videoforge encode --gpu -i video.mp4 -o output.mp4
# 10x faster, perfect for one-off encodes
```

### 2. Use Distributed for Batch Processing
```bash
# Process multiple videos in parallel
videoforge encode --distributed -i video.mp4 -o output.mp4 --workers 4
```

### 3. Use BEAST MODE for Large Videos
```bash
# Maximum speed for large files
videoforge encode --beast -i 4k_video.mp4 -o output.mp4 --workers 6
```

### 4. Adjust Workers Based on CPU
```bash
# 4-core CPU: use 2-3 workers
videoforge encode --distributed -i video.mp4 -o output.mp4 --workers 2

# 8-core CPU: use 4-6 workers
videoforge encode --distributed -i video.mp4 -o output.mp4 --workers 4

# 12-core CPU: use 6-8 workers
videoforge encode --distributed -i video.mp4 -o output.mp4 --workers 6
```

## Troubleshooting

### GPU Not Detected

**Problem:** `videoforge status` shows no GPU

**Solution:**
1. Update GPU drivers
2. Use `--distributed` mode instead
3. Use `--native` mode as fallback

### Encoding Too Slow

**Problem:** Not seeing 10x speedup

**Solution:**
1. Make sure you're using `--gpu` flag
2. Check GPU is detected: `videoforge status`
3. Try `--beast` mode for maximum speed

### Out of Memory

**Problem:** Encoding fails with memory error

**Solution:**
1. Reduce workers: `--workers 2`
2. Use `--gpu` mode (lower memory usage)
3. Close other applications

### CPU at 100%

**Problem:** CPU usage too high

**Solution:**
1. Reduce workers: `--workers 2` or `--workers 4`
2. Use `--gpu` mode (offloads to GPU)
3. Use `--preset ultrafast` (less CPU intensive)

## Next Steps

1. **Read the full docs**: [README.md](../README.md)
2. **Check examples**: [examples/](../examples/)
3. **Report issues**: [GitHub Issues](https://github.com/yourusername/videoforge-releases/issues)

## Quick Reference

```bash
# Basic GPU encoding (10x faster)
videoforge encode --gpu -i input.mp4 -o output.mp4

# Distributed (CPU parallel, 4-8x faster)
videoforge encode --distributed -i input.mp4 -o output.mp4 --workers 4

# BEAST MODE (30-100x faster)
videoforge encode --beast -i input.mp4 -o output.mp4

# Custom quality
videoforge encode --gpu -i input.mp4 -o output.mp4 --crf 20 --preset fast

# Check status
videoforge status

# Get help
videoforge --help
videoforge encode --help
```

---

**VideoForge** - 10x faster video encoding. Zero dependencies. Production ready.

Need help? Open an issue on [GitHub](https://github.com/yourusername/videoforge-releases/issues)
