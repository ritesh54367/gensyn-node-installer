Gensyn AI Node - Easy Installer

This repository provides an easy-to-use installation script for setting up a Gensyn AI node. It automates the process of setting up the environment, installing necessary dependencies, and running the RL Swarm node. This setup is intended for users who are new to running Gensyn nodes and want a beginner-friendly installation method.

## Features

- Installs all necessary dependencies
- Automatically sets up the Python virtual environment
- Runs the Gensyn RL Swarm node
- Provides clear instructions for the user during setup
- Automatically starts the Cloudflare tunnel
- Includes interactive prompts for Testnet participation, swarm selection, and model choice

## Requirements

- **Linux** (Ubuntu-based distributions are recommended)
- **Minimum 16GB RAM** (more is recommended for larger models)
- **Python 3.10+**
- **A working Cloudflare account** for tunnel authentication

### Hardware Requirements
- **Small Model** (0.5B or 1.5B) + Math (GSM8K dataset):
  - Minimum 16GB RAM (recommended)
  - CPU or CUDA device (e.g., RTX 3090, A100, H100)

- **Big Model** (7B, 32B, or 72B) + Math Hard (DAPO-Math 17K dataset):
  - Recommended A100 or H100 GPU (80GB memory)

## Installation

### Step 1: Clone this repository
Clone this repository to your server or local machine.

```bash
git clone https://github.com/yourusername/gensyn-node-installer.git
cd gensyn-node-installer

Step 2: Make the script executable

Make the installation script executable:

`chmod +x gensyn_easy.sh`

Step 3: Run the installer script

Run the script with sudo to install all dependencies and start the Gensyn node.

sudo ./gensyn_easy.sh

The script will walk you through the following steps:

1. Join the Testnet: Type Y to participate in the Testnet.


2. Select the Swarm:

Type A for Math (GSM8K dataset)

Type B for Math Hard (DAPO-Math 17K dataset)



3. Select the Model:

Type 0.5, 1.5, 7, 32, or 72 to choose the model parameter size.



4. Hugging Face: When asked, type N (No) to skip the Hugging Face upload.



Step 4: Access your node

Once the installation is complete, you can enter the screen session to interact with your node:

screen -r gensyn_node

This will show you the interactive prompts where you can manage your node. A browser link will appear that you need to open in your browser and log in using your Gmail and OTP for Cloudflare tunnel access.

Step 5: Cloudflare Tunnel

The Cloudflare tunnel will be started automatically, and a link will be displayed for you to log in with your Gmail OTP.

Troubleshooting

If you run into any issues:

Check the logs for error messages

Ensure all dependencies are installed properly

Consult the Gensyn Troubleshooting Guide


If you can't find a solution, feel free to open an issue in this repository with the details about the error and your system configuration.

License

This project is licensed under the MIT License - see the LICENSE file for details.


---

Thank you for using the Gensyn AI Node Installer!
