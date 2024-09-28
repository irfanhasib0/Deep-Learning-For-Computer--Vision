#!/bin/bash
# Ultralytics YOLO 🚀, AGPL-3.0 license
# Download latest models from https://github.com/yolo_v8/assets/releases
# Example usage: bash yolo_v8/data/scripts/download_weights.sh
# parent
# └── weights
#     ├── yolov8n.pt  ← downloads here
#     ├── yolov8s.pt
#     └── ...

python - <<EOF
from yolo_v8.utils.downloads import attempt_download_asset

assets = [f'yolov8{size}{suffix}.pt' for size in 'nsmlx' for suffix in ('', '-cls', '-seg', '-pose')]
for x in assets:
    attempt_download_asset(f'weights/{x}')

EOF