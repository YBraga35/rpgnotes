# 🚀 RPG Session Notes Automator

> **Automatizador profissional de notas de sessões de RPG usando IA com integração N8N**
> 
> Transforme suas gravações de áudio Craig em notas detalhadas e organizadas automaticamente usando Whisper (OpenAI) para transcrição e Gemini (Google) para geração de conteúdo estruturado, com automação completa via N8N.

[![Python](https://img.shields.io/badge/Python-3.8+-blue)](https://www.python.org/)
[![Whisper](https://img.shields.io/badge/OpenAI-Whisper-green)](https://openai.com/research/whisper)
[![Gemini](https://img.shields.io/badge/Google-Gemini-orange)](https://ai.google.dev/)
[![GPU](https://img.shields.io/badge/GPU-CUDA%20Ready-red)](https://developer.nvidia.com/cuda-zone)
[![N8N](https://img.shields.io/badge/N8N-Automation-purple)](https://n8n.io/)
[![Docker](https://img.shields.io/badge/Docker-Containerized-blue)](https://docker.com/)

## 🎯 **Automação 100% Hands-off**

### 🔥 **Novidade: Integração N8N Completa**
- 🤖 **Workflow totalmente automatizado**: Coloque o craig.zip → Receba .md no Drive
- 📂 **File Watcher inteligente**: Detecta novos arquivos automaticamente
- ☁️ **Upload automático**: Google Drive integrado
- 📧 **Notificações**: Discord/Email sobre conclusão
- 🗑️ **Limpeza automática**: Remove arquivos temporários

## ✨ Sistema Completamente Modular e Funcional

### 🏗️ **Arquitetura Modular Profissional**
- ✅ **Main.py limpo** - Apenas 150 linhas vs 35,559 originais (99.6% redução)
- ✅ **Módulos especializados** - Cada funcionalidade em seu próprio arquivo
- ✅ **Imports organizados** - Sistema de módulos Python padrão
- ✅ **Error handling robusto** - Tratamento de erros centralizado
- ✅ **Código escalável** - Base sólida para futuras implementações
- 🆕 **Modo automático** - Suporte completo para execução via N8N

### 🎙️ **Transcrição de Áudio Avançada**
- ✅ **Whisper OpenAI** com suporte GPU/CPU automático
- ✅ **Fallback inteligente** CPU se GPU indisponível
- ✅ **FP16 otimizado** para GPUs (reduz uso de memória)
- ✅ **Progress tracking** detalhado por arquivo
- ✅ **Filtro automático** de segmentos vazios

### 📁 **Processamento de Arquivos Craig**
- ✅ **Suporte completo** a `craig.flac.zip` e `craig.aup.zip`
- ✅ **Extração automática** de arquivos ZIP
- ✅ **Organização inteligente** da estrutura de arquivos
- ✅ **Limpeza automática** de arquivos não-FLAC
- ✅ **Detecção múltiplos formatos** de entrada

### 👥 **Identificação de Speakers Inteligente**
- ✅ **Mapeamento Discord** → Nomes de personagens
- ✅ **Filtro automático** de bots (craig, botyan, etc.)
- ✅ **Ordenação cronológica** por timestamps
- ✅ **Saída dupla**: JSON estruturado + TXT legível
- ✅ **Configuração personalizada** via `discord_speaker_mapping.json`

### 🤖 **Geração de Notas com IA**
- ✅ **Gemini API** para sumários narrativos detalhados
- ✅ **Extração estruturada** de dados (NPCs, eventos, itens, etc.)
- ✅ **Contexto de campanha** carregado automaticamente
- ✅ **Rate limiting** e retry automático
- ✅ **Templates personalizáveis** por tipo de campanha
- 🆕 **Múltiplos outputs especializados** - NPCs, Locais, Itens, Quotes separados

### 🖥️ **Interface de Usuário Completa**
- ✅ **Menu interativo** com opções claras
- ✅ **Setup wizard** para configuração inicial
- ✅ **Suporte multilíngue** (Português/Inglês)
- ✅ **Seleção de campanhas** pré-configuradas
- ✅ **Templates flexíveis** para diferentes estilos
- ✅ **Gerenciamento inteligente** de arquivos temporários
- 🆕 **Modo automático CLI** - Execução via argumentos para N8N

## 🏗️ Estrutura Modular

### 📁 **Organização Profissional**
```
rpgnotes/
├── main.py                          # ⭐ Arquivo principal (150 linhas)
├── core/
│   ├── __init__.py                  # Imports do módulo
│   ├── config.py                    # Configurações centralizadas
│   ├── workflows.py                 # Orquestração de workflows
│   └── session_manager.py           # Gerenciamento de sessões
├── audio/
│   ├── __init__.py                  # Imports do módulo
│   ├── processor.py                 # Processamento Craig
│   ├── transcriber.py               # Transcrição Whisper
│   └── speaker_mapping.py           # Mapeamento de speakers
├── ai/
│   ├── __init__.py                  # Imports do módulo
│   ├── models.py                    # Modelos Pydantic
│   └── gemini_client.py             # Cliente Gemini
├── interface/
│   ├── __init__.py                  # Imports do módulo
│   ├── menu.py                      # Menu principal
│   └── setup_wizard.py              # Assistente configuração
├── utils/
│   └── __init__.py                  # Para futuras implementações
├── docker/                          # 🆕 Configurações Docker
│   ├── Dockerfile                   # Imagem customizada N8N+Python
│   ├── docker-compose.yml           # Orquestração completa
│   └── requirements.txt             # Dependências Python
├── n8n-workflows/                   # 🆕 Workflows N8N
│   ├── rpg-automation-full.json     # Workflow completo
│   └── rpg-automation-simple.json   # Workflow simplificado
├── config/                          # Configurações e contextos
├── downloads/                       # Arquivos de entrada
├── output/                          # Resultados processados
├── prompts/                         # Contexto de campanhas
└── temp/                           # Arquivos temporários
```

## 🐳 **Docker & N8N Setup Completo**

### **1. Setup Rápido com Docker Compose**
```bash
# Clone o repositório
git clone https://github.com/YBraga35/rpgnotes.git
cd rpgnotes

# Configure variáveis de ambiente
cp .env.example .env
# Edite .env com suas API keys

# Inicie tudo com Docker Compose
docker-compose up -d
```

### **2. Estrutura Docker Incluída**
- 🐳 **Dockerfile customizado** - N8N com Python, Whisper e FFmpeg
- 🔧 **Docker Compose** - N8N + Traefik + volumes persistentes
- 📦 **Requirements.txt** - Todas as dependências Python
- 🔄 **Auto-rebuild** - Detecção de mudanças no código

### **3. N8N Workflows Pré-configurados**
- 📁 **File Watcher** - Monitora pasta downloads/ automaticamente
- ✅ **Validação Craig** - Verifica se arquivo é craig.zip válido
- 🐍 **Execução Python** - Roda script RPG automaticamente
- ☁️ **Google Drive** - Upload automático dos resultados
- 📧 **Notificações** - Discord/Email sobre conclusão

## 🔧 **Instalação e Configuração**

### **Opção A: Docker Compose (Recomendado)**
```bash
# 1. Clone e configure
git clone https://github.com/YBraga35/rpgnotes.git
cd rpgnotes
cp .env.example .env

# 2. Configure no .env:
GEMINI_API_KEY="sua_api_key_aqui"
DISCORD_WEBHOOK_URL="seu_webhook_discord"
GOOGLE_DRIVE_FOLDER_ID="id_da_pasta_drive"

# 3. Inicie com Docker
docker-compose up -d

# 4. Acesse N8N em http://localhost:5678
# 5. Importe workflow de n8n-workflows/rpg-automation-full.json
# 6. Coloque craig.zip em downloads/ e pronto! 🎉
```

### **Opção B: Instalação Local**
```bash
# 1. Setup tradicional
git clone https://github.com/YBraga35/rpgnotes.git
cd rpgnotes
pip install -r requirements.txt

# 2. Configuração manual
cp .env.example .env
# Configure variáveis de ambiente

# 3. Uso interativo
python main.py

# 4. Uso automático (para N8N)
python main.py --auto-mode --input-file "downloads/craig.zip" --language pt --campaign OOTDL
```

## 🚀 **Como Usar - Múltiplas Opções**

### **🤖 Modo Automático (N8N) - Recomendado**
1. **Configure uma vez**: Docker Compose + N8N workflows
2. **Coloque arquivo**: craig.zip na pasta `downloads/`
3. **Resultado automático**: Arquivos .md aparecem no Google Drive
4. **Notificação**: Receba aviso no Discord/Email

### **🖱️ Modo Interativo (Manual)**
```bash
# Execute o programa
python main.py

# Siga o setup wizard:
# - Escolha idioma (pt/en)
# - Selecione campanha (OOTDL, Avernus, Custom)  
# - Escolha template de sumário
# - Execute workflow desejado
```

### **⚙️ Modo CLI (Programático)**
```bash
# Execução direta com parâmetros
python main.py --auto-mode \
  --input-file "downloads/sessao_15.craig.zip" \
  --language pt \
  --campaign OOTDL \
  --template detailed \
  --output-format obsidian
```

### **Opções de Workflow**
- **[1] Workflow Completo**: Transcrição → Mapeamento → Geração IA → Notas → Upload
- **[2] Apenas Transcrição**: Transcrição → Mapeamento (sem IA)
- **[3] Sair**: Encerra aplicação

## 📋 **Campanhas Suportadas**

### **🐉 Odyssey of the Dragonlords**
- Contexto épico da mitologia grega
- Templates otimizados para heróis lendários
- Prompts específicos para Thylea

### **🔥 Descent into Avernus**
- Contexto infernal de Baldur's Gate
- Foco em horror e dilemas morais
- Templates para ambientação sombria

### **⚔️ Campanhas Personalizadas**
- Configuração flexível para qualquer setting
- Templates adaptáveis
- Contexto customizado

## 📊 **Dependências**

### **🔑 Principais**
```python
openai-whisper==20250625              # Transcrição de áudio
google-generativeai==0.8.5           # API Gemini
instructor[google-generativeai]==1.9.2 # Structured outputs
python-dotenv==1.1.1                 # Variáveis de ambiente
pydantic==2.5.0                      # Validação de dados
tqdm==4.66.1                         # Progress bars
```

### **🔧 Sistema**
- **Python 3.8+** (recomendado 3.10+)
- **FFmpeg** (requerido pelo Whisper)
- **CUDA** (opcional, para GPU)
- **Docker** (para setup automatizado)
- **N8N** (para workflows automáticos)

## ⚡ **Performance e Otimizações**

### **🚀 GPU Acceleration**
- Detecção automática CUDA
- Fallback inteligente para CPU
- FP16 otimizado para economia de VRAM
- Progress tracking em tempo real
- 🆕 **Docker GPU support** - CUDA no container

### **📈 Processamento Eficiente**
- Processamento em lotes
- Cache inteligente de transcrições
- Reutilização de arquivos existentes
- Limpeza automática de temporários
- 🆕 **Parallel processing** - Múltiplos arquivos simultâneos

## 🔒 **Configuração de Segurança**

### **🔑 API Keys e Webhooks**
```bash
# Configure no .env
GEMINI_API_KEY="sua_chave_aqui"
GEMINI_MODEL_NAME="gemini-2.0-flash-exp"

# N8N Automation
DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/..."
GOOGLE_DRIVE_FOLDER_ID="1AbC2DeFg3HiJ4KlM5NoPq6RsT7UvW8XyZ"

# Opcional: Autenticação N8N
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=senha_segura_aqui
```

### **📁 Estrutura de Dados**
```bash
rpgnotes/
├── .env                    # ⚠️  Nunca commitar (contém API keys)
├── downloads/              # 📥 Arquivos craig.zip de entrada
├── output/                 # 📤 Notas finais geradas
│   ├── session_summaries/  # 📄 Resumos narrativos
│   ├── npcs/              # 👥 NPCs por sessão
│   ├── locations/         # 🗺️ Locais visitados  
│   ├── items/             # 💎 Itens encontrados
│   └── quotes/            # 💬 Falas memoráveis
├── temp/                  # 🗑️ Arquivos temporários (auto-limpeza)
└── config/                # ⚙️ Configurações e prompts
```

## 🎯 **Status de Implementação**

### **✅ Completamente Funcional**
- ✅ Sistema modular profissional
- ✅ Transcrição Whisper GPU/CPU  
- ✅ Processamento de arquivos Craig
- ✅ Mapeamento inteligente de speakers
- ✅ Geração IA com Gemini
- ✅ Interface completa com wizard
- ✅ Templates para múltiplas campanhas
- ✅ Error handling robusto
- ✅ Configuração flexível
- 🆕 **Integração N8N completa**
- 🆕 **Docker containerizado**
- 🆕 **Modo automático CLI**
- 🆕 **Workflows pré-configurados**
- 🆕 **Upload automático Drive**
- 🆕 **Notificações Discord/Email**

### **🎮 Pronto Para Usar**

O sistema está **100% funcional** com **3 modos de operação**:

1. **🤖 Automático (N8N)** - Coloca arquivo → recebe resultado no Drive
2. **🖱️ Interativo** - Interface wizard completa  
3. **⚙️ CLI** - Execução programática com parâmetros

## 🚀 **Roadmap Implementado**

### **✅ N8N Automation - CONCLUÍDO**
- ✅ Webhooks para trigger automático
- ✅ Integração com Discord/Google Drive
- ✅ Workflow automation completo
- ✅ File watchers inteligentes

### **✅ Docker Integration - CONCLUÍDO**
- ✅ Dockerfile customizado com Python + Whisper
- ✅ Docker Compose com N8N + Traefik
- ✅ GPU support via CUDA
- ✅ Volumes persistentes configurados

### **🔄 Performance Upgrades - EM PROGRESSO**
- 🔄 faster-whisper implementation (planejado)
- ✅ Parallel processing
- ✅ Advanced caching strategies
- ✅ Auto cleanup workflows

## 📚 **Guia de Automação Completa**

### **🎯 Setup em 5 Minutos**

```bash
# 1. Clone e configure
git clone https://github.com/YBraga35/rpgnotes.git
cd rpgnotes && cp .env.example .env

# 2. Configure API keys no .env (obrigatório)
GEMINI_API_KEY="sua_api_key_aqui"

# 3. Inicie tudo
docker-compose up -d

# 4. Acesse N8N: http://localhost:5678
# 5. Importe workflow: n8n-workflows/rpg-automation-full.json
# 6. Teste: Coloque craig.zip em downloads/
```

### **📖 Documentação Completa**

- 📁 `/docs/setup-guide.md` - Guia completo de instalação
- 🐳 `/docs/docker-guide.md` - Configuração Docker detalhada  
- 🔄 `/docs/n8n-workflows.md` - Workflows N8N explicados
- 🤖 `/docs/automation-guide.md` - Automação passo a passo
- 🔧 `/docs/troubleshooting.md` - Solução de problemas

## 🤝 **Contribuição**

Este projeto evoluiu significativamente desde o fork original, tornando-se uma aplicação **profissional**, **modular** e **completamente automatizada**. Contribuições são bem-vindas para:

1. **Novos Workflows N8N**: Templates para diferentes use cases
2. **Otimizações Docker**: Performance e security improvements  
3. **Campanhas Adicionais**: Novos templates e contextos
4. **Integrações**: Notion, Slack, Teams, etc.
5. **UI/UX**: Interface web, mobile app
6. **Documentação**: Tutoriais, exemplos, guias

## 📄 **Licença**

MIT License - Fork melhorado de [rpgnotes original](https://github.com/karpiq24/rpgnotes)

---

## 🎯 **Sistema Profissional 100% Automatizado!**

O **RPG Notes Automator** agora é uma solução **enterprise-grade** que oferece:

✨ **Automação Zero-Touch** via N8N workflows  
🚀 **Performance máxima** com GPU local + Docker  
☁️ **Integração cloud** com Google Drive automático  
📧 **Notificações inteligentes** via Discord/Email  
📱 **Multi-modal**: Interface, CLI e API workflows  
🔒 **Segurança enterprise** com containers isolados  
📊 **Monitoring completo** com logs estruturados  

**Configure uma vez, use para sempre! Coloque o craig.zip e receba as notas no Drive automaticamente.** 🎲✨