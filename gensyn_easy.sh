#!/bin/bash

echo "=========================================="
echo "     GENSYN AI NODE - EASY INSTALLER      "
echo "=========================================="

# Must run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root: sudo ./gensyn_easy.sh"
  exit
fi

# Step 1: Install required packages
echo "[1/6] Installing dependencies..."
apt update && apt install -y wget git screen python3.12-venv

# Step 2: Install cloudflared
echo "[2/6] Installing Cloudflare tunnel..."
ARCH=$(dpkg --print-architecture)
CF_DEB="cloudflared-linux-$ARCH.deb"
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/$CF_DEB
dpkg -i $CF_DEB

# Step 3: Clone Gensyn repo
echo "[3/6] Cloning Gensyn RL Swarm..."
git clone https://github.com/gensyn-ai/rl-swarm.git
cd rl-swarm

# Step 4: Python venv setup
echo "[4/6] Setting up Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

# Step 5: Run node setup in screen
echo "[5/6] Starting Gensyn node..."

screen -dmS gensyn_node bash -c '
cd rl-swarm
source .venv/bin/activate
clear
echo "========================================="
echo "Gensyn Interactive Setup Starting..."
echo ""
echo "1. Type Y and press Enter to join the Testnet"
echo "2. Choose your Swarm:"
echo "   - Type A for Math (GSM8K)"
echo "   - Type B for Math Hard (DAPO-Math 17K)"
echo "3. Choose Model: Type 0.5 / 1.5 / 7 / 32 / 72"
echo "4. Hugging Face: Type N and press Enter"
echo ""
echo "Then your node will start running!"
echo "========================================="
sleep 5
./run_rl_swarm.sh
'

# Step 6: Start Cloudflare tunnel in another screen tab
screen -S gensyn_node -X screen bash -c '
echo "Starting Cloudflare Tunnel..."
cloudflared tunnel --url http://localhost:3000
'

echo ""
echo "=================================================="
echo " GENSYN NODE SETUP COMPLETE!"
echo ""
echo " To enter the screen session and interact:"
echo "    screen -r gensyn_node"
echo ""
echo " Follow the on-screen instructions:"
echo "  - Type Y to join Testnet"
echo "  - Choose your Swarm: A or B"
echo "  - Choose model: 0.5 / 1.5 / 7 / 32 / 72"
echo "  - Hugging Face: Type N"
echo ""
echo " A browser link will appear — open it and log in"
echo " with your Gmail and OTP to finalize setup."
echo "=================================================="
