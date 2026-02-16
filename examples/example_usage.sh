#!/bin/bash
# VideoForge Example Usage Scripts

echo "🎬 VideoForge Example Usage"
echo "============================"
echo ""

# Example 1: Basic GPU encoding
echo "Example 1: Basic GPU Encoding (10x faster)"
echo "-------------------------------------------"
echo "videoforge encode --gpu --input video.mp4 --output output.mp4"
echo ""

# Example 2: High quality YouTube upload
echo "Example 2: High Quality YouTube Upload"
echo "--------------------------------------"
echo "videoforge encode --gpu \\"
echo "  --input raw_footage.mov \\"
echo "  --output youtube_upload.mp4 \\"
echo "  --codec h264 \\"
echo "  --preset fast \\"
echo "  --crf 20"
echo ""

# Example 3: Batch processing
echo "Example 3: Batch Processing Multiple Videos"
echo "-------------------------------------------"
echo "for video in *.mp4; do"
echo "  videoforge encode --gpu \\"
echo "    --input \"\$video\" \\"
echo "    --output \"encoded_\${video}\""
echo "done"
echo ""

# Example 4: BEAST MODE
echo "Example 4: BEAST MODE (Maximum Speed)"
echo "-------------------------------------"
echo "videoforge encode --beast \\"
echo "  --input large_video.mp4 \\"
echo "  --output output.mp4 \\"
echo "  --workers 6"
echo ""

# Example 5: Distributed (no GPU)
echo "Example 5: Distributed Encoding (No GPU Required)"
echo "-------------------------------------------------"
echo "videoforge encode --distributed \\"
echo "  --input video.mp4 \\"
echo "  --output output.mp4 \\"
echo "  --workers 4"
echo ""

# Example 6: Different codecs
echo "Example 6: Different Codecs"
echo "---------------------------"
echo "# H.264 (most compatible)"
echo "videoforge encode --gpu -i video.mp4 -o output_h264.mp4 --codec h264"
echo ""
echo "# H.265 (better compression)"
echo "videoforge encode --gpu -i video.mp4 -o output_h265.mp4 --codec h265"
echo ""
echo "# AV1 (best compression)"
echo "videoforge encode --gpu -i video.mp4 -o output_av1.mp4 --codec av1"
echo ""

# Example 7: Quality settings
echo "Example 7: Quality Settings"
echo "---------------------------"
echo "# Excellent quality (CRF 18)"
echo "videoforge encode --gpu -i video.mp4 -o high_quality.mp4 --crf 18"
echo ""
echo "# Good quality (CRF 28, smaller file)"
echo "videoforge encode --gpu -i video.mp4 -o small_file.mp4 --crf 28"
echo ""

# Example 8: Check GPU status
echo "Example 8: Check GPU Status"
echo "---------------------------"
echo "videoforge status"
echo ""

echo "💡 Tip: Run these commands with your own video files!"
echo "📖 For more examples, see: https://github.com/badaramoni/videoforge-releases"
