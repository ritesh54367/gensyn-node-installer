# Gensyn AI Node - Easy Installer

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
- **Minimum 16GB RAM** (recommended for larger models)
- **Python 3.10+**
- **A working Cloudflare account** for tunnel authentication

### Hardware Requirements
- **Small Model** (0.5B or 1.5B) + Math (GSM8K dataset):
  - Minimum 16GB RAM (recommended)
  - CPU or CUDA device (e.g., RTX 3090, A100, H100)

- **Big Model** (7B, 32B, or 72B) + Math Hard (DAPO-Math 17K dataset):
  - Recommended A100 or H100 GPU (80GB memory)

## Installation

### Step 1: Download and run the script
To install and run the Gensyn node, use the following command:

```bash
bash <(curl -s https://raw.githubusercontent.com/ritesh54367/gensyn-node-installer/main/gensyn_easy.sh)

This command will automatically download the script and begin the installation process.

Step 2: Follow the interactive prompts

The script will ask the following:

1. Join the Testnet: Type Y to participate in the Testnet.


2. Select the Swarm:

Type A for Math (GSM8K dataset)

Type B for Math Hard (DAPO-Math 17K dataset)



3. Select the Model:

Type 0.5, 1.5, 7, 32, or 72 to choose the model parameter size.



4. Hugging Face: When asked, type N (No) to skip the Hugging Face upload.



Step 3: Access your node

Once the installation is complete, you can enter the screen session to interact with your node:

screen -r gensyn_node

This will show you the interactive prompts where you can manage your node. A browser link will appear that you need to open in your browser and log in using your Gmail and OTP for Cloudflare tunnel access.

Step 4: Cloudflare Tunnel

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

### 3. **Share the Command**

Share the following installation command with your users, and they can run it directly on their machines:

```bash
bash <(curl -s https://raw.githubusercontent.com/ritesh54367/gensyn-node-installer/main/gensyn_easy.sh)

This will make the installation process seamless for everyone.
