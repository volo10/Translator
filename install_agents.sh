#!/bin/bash
# Install Translation Agents for Claude Code

TRANSLATOR_DIR="/Users/bvolovelsky/Desktop/LLM/TRANSLATOR"
AGENTS_DIR="$HOME/.config/claude/agents"

echo "═══════════════════════════════════════════════════════════"
echo "  Installing Translation Agents for Claude Code"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Create base agents directory
echo "Creating agents directory..."
mkdir -p "$AGENTS_DIR"

# Install EN→ES Agent
echo "Installing English → Spanish translator..."
mkdir -p "$AGENTS_DIR/en-es-translator/skills"
cp "$TRANSLATOR_DIR/agents/AGENT_EN_ES.md" "$AGENTS_DIR/en-es-translator/agent.md"
cp "$TRANSLATOR_DIR/skills/english_spanish_skills"/*.md "$AGENTS_DIR/en-es-translator/skills/"
echo "✓ en-es-translator installed"

# Install ES→HE Agent  
echo "Installing Spanish → Hebrew translator..."
mkdir -p "$AGENTS_DIR/es-he-translator/skills"
cp "$TRANSLATOR_DIR/agents/AGENT_ES_HE.md" "$AGENTS_DIR/es-he-translator/agent.md"
cp "$TRANSLATOR_DIR/skills/spanish_hebrew_skills"/*.md "$AGENTS_DIR/es-he-translator/skills/"
echo "✓ es-he-translator installed"

# Install HE→EN Agent
echo "Installing Hebrew → English translator..."
mkdir -p "$AGENTS_DIR/he-en-translator/skills"
cp "$TRANSLATOR_DIR/agents/AGENT_HE_EN.md" "$AGENTS_DIR/he-en-translator/agent.md"
cp "$TRANSLATOR_DIR/skills/hebrew_english_skills"/*.md "$AGENTS_DIR/he-en-translator/skills/"
echo "✓ he-en-translator installed"

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "  Installation Complete!"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "Agents installed:"
ls -d "$AGENTS_DIR"/*/ | sed 's|.*/||' | sed 's|/$||'
echo ""
echo "To verify installation:"
echo "  claude agents list"
echo ""
echo "To use an agent:"
echo "  claude --agent en-es-translator"
echo "  claude --agent es-he-translator"
echo "  claude --agent he-en-translator"
echo ""
echo "To test:"
echo "  claude --agent en-es-translator \"Translate: Hello world\""
echo ""
