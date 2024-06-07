# AppleScript Fun Projects

Welcome to my collection of fun and experimental AppleScripts!

## Projects Overview

### Open Ollama
This script runs a shell command to start the Ollama server's web UI and then opens it in your default web browser.

### Close Ollama
Terminates all processes using the specified port for the Ollama server, effectively shutting it down.

### Open Stable Diffusion
Launches the Stable Diffusion web server and opens the interface in your browser for easy access.

### Close Stable Diffusion
Shuts down the Stable Diffusion server by killing all processes using the specified port.

### AI Messages
This is the most advanced script in the collection. It:
1. Checks the `chat.db` file on your computer for the latest sent message by identifying the highest `ROWID`.
2. If the message starts with `[ollama]`, it extracts the message.
3. Runs a shell script to get an AI response to the message.
4. Sends the AI-generated response to the target phone number.
5. Finally, it shuts down the Ollama server.

### checksformsgs.sh
For automation purposes, this script checks every 60 seconds for any changes in the `chat.db` file. If a change is detected, it triggers the AI Messages AppleScript.

---

Feel free to explore, modify, and have fun with these scripts!
