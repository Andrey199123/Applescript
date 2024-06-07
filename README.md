# Applescript
Applescripts I have written for fun.
Open Ollama: Runs a shell script to run the web UI for the Ollama server and then opens it in the browser. 
Close Ollama: Kills all processes using the specified port for the Ollama server. 
Open Stable Diffusion: Runs the Stable Diffusion web server and opens it in the browser. 
Close Stable Diffusion: Kills all processes using the specified port number on the Stable Diffusion server. 
AI Messages: By far the most impressive. The AppleScript checks the chat.db file stored on the computer for the latest sent message by finding the max ROWID. If it starts with [ollama], it gets the message and runs a shell script for the AI to respond to the text message. Once it responds, it kills the Ollama server and sends the message to the target phone number. 
checksformsgs.sh: For automation, checks every 60 seconds if there are any changes made to the chat.db file, and if there are, it runs the AI Messages AppleScript. 
