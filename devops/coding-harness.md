## Coding Harness

### OpenCode
Open Swiss army knife harness with all the things.

Reference:
- https://opencode.ai
##### Install CLI

`brew install anomalyco/tap/opencode-v2

Run as an ACP agent in editor

`opencode acp

#### Configure global local AI 

add this to `opencode.jsonc` in your project (or` ~/.config/opencode/opencode.jsonc` globally)

```json
 { 
  "$schema": "https://opencode.ai/config.json",
  "model": "local/MODEL_ID",
  "providers": {
    "local": {
      "name": "Local",
      "package": "@opencode/ai/providers/openai-compatible",
      "settings": {
        "baseURL": "http://127.0.0.1:8000/v1"
      },
      "models": {
        "MODEL_ID": {
          "name": "Local model"
        }
      }
    }
  }
}
```

you can get the MODELID from:

`curl -s http://127.0.0.1:8000/v1/models

In my case. 

"mtplx-inkling-2-mini-bare-speed"

### Swival

Minimal coding agent for tight spaces. 

Reference: 
- https://swival.dev
 
> Works with frontier models, but also strives to be as reliable as possible with smaller models, including local ones. Designed for tight context windows and limited resources. Free, open-source, and easy to set up.
