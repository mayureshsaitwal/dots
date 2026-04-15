# llama-server -m models/Qwen3.5-9b-Sushi-Coder-RL.Q8_0.gguf \
# --alias "qwen3.5" \
# --port 8080 \
# --jinja \
# --kv-unified \
# --cache-type-k q8_0 --cache-type-v q8_0 \
# --flash-attn on \
# --batch-size 4096 --ubatch-size 1024 \
# --ctx-size 128000


llama-server -m models/Qwen3.5-9b-claude-opus-4.6.gguf \
--alias "qwen3.5" \
--port 8080 \
--jinja \
--kv-unified \
--cache-type-k q8_0 --cache-type-v q8_0 \
--flash-attn on \
--batch-size 4096 --ubatch-size 1024 \
--ctx-size 128000
