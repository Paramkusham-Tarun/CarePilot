# CarePilot — AI Health Assistant

No-login, local-AI prototype using HTML/CSS/JavaScript + FastAPI + Ollama.

## Requirements
- Windows 10/11
- Python 3.10+
- Ollama
- Chrome or Edge recommended for browser voice input

## 1. Install Ollama
Install Ollama, then open a terminal and run:

```bash
ollama pull llama3.2:3b
ollama serve
```

If Ollama is already running as a desktop service, `ollama serve` may report that the port is already in use; that is okay if Ollama is responding.

## 2. Start CarePilot
Open Command Prompt in the CarePilot folder and run:

```bat
run.bat
```

Or manually:

```bat
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
copy .env.example .env
python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000
```

Open http://127.0.0.1:8000

## Voice
Click the microphone button and allow microphone access. Speech recognition is browser-dependent. AI responses can be read aloud with the Listen button using the browser SpeechSynthesis API.

## Troubleshooting
- Cannot connect to Ollama: start Ollama and confirm `ollama list` shows `llama3.2:3b`.
- Model unavailable: run `ollama pull llama3.2:3b`.
- Port 8000 busy: stop the process using it or run Uvicorn on another port and open that port.
- Voice unavailable: use a current Chrome/Edge browser and allow microphone permission; text chat remains available.

## Safety
CarePilot is an educational prototype, not a medical professional or emergency service. It must not be used for diagnosis or medication changes. Emergency warnings are only a basic safety layer and are not a substitute for emergency services.
