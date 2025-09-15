FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache python3 py3-pip python3-dev build-base ffmpeg curl

# Criar venv padrão (python3 -m venv)
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Copiar requirements.txt
COPY requirements.txt /requirements.txt

RUN /venv/bin/pip install --upgrade pip setuptools wheel
RUN /venv/bin/pip install -r /requirements.txt

ENV PYTHONPATH="/workspace/rpgnotes:$PYTHONPATH"

# Criar diretórios
RUN mkdir -p /workspace/rpgnotes /logs /files
RUN chown -R node:node /workspace/rpgnotes /logs /files /venv

USER node

EXPOSE 5678

CMD ["n8n", "start"]
