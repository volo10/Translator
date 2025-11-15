#!/bin/bash
# Round-Trip Translation Using Claude Code Agents

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

if [ $# -lt 1 ]; then
    echo "Usage: $0 'English sentence with errors'"
    echo ""
    echo "Example:"
    echo "  $0 'I recieved you're email yestrday about the very important project meeting scheduled for next week.'"
    exit 1
fi

ORIGINAL_INPUT="$1"

echo "═══════════════════════════════════════════════════════════"
echo "  ROUND-TRIP TRANSLATION TEST (Using Claude Code Agents)"
echo "  Pipeline: English → Spanish → Hebrew → English"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if agents are installed
echo "Checking if agents are installed..."
if ! claude agents list &>/dev/null; then
    echo -e "${RED}Error: Claude Code agents command not available.${NC}"
    echo ""
    echo "Options:"
    echo "1. Run ./install_agents.sh to install agents"
    echo "2. Use ./roundtrip_real.sh (alternative method)"
    exit 1
fi

# Step 1: English → Spanish
echo -e "${BLUE}[STEP 1/3]${NC} Translating English → Spanish..."
echo -e "${YELLOW}Input:${NC} $ORIGINAL_INPUT"
echo ""

SPANISH_OUTPUT=$(claude --agents en-es-translator "Translate to Spanish (Accuracy mode). Apply the Natural Phrasing Preservation skill to ensure natural Spanish phrasing (e.g., use gustar patterns correctly, omit unnecessary subject pronouns). Output ONLY the Spanish translation, no explanations: $ORIGINAL_INPUT" 2>/dev/null | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

if [ -z "$SPANISH_OUTPUT" ]; then
    echo -e "${RED}Error: Agent en-es-translator failed${NC}"
    echo "Make sure agents are installed: ./install_agents.sh"
    exit 1
fi

echo -e "${GREEN}Spanish Output:${NC} $SPANISH_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 2: Spanish → Hebrew
echo -e "${BLUE}[STEP 2/3]${NC} Translating Spanish → Hebrew..."
echo -e "${YELLOW}Input:${NC} $SPANISH_OUTPUT"
echo ""

HEBREW_OUTPUT=$(claude --agents es-he-translator "Translate to Hebrew (Accuracy mode). Apply the Natural Phrasing Preservation skill to ensure natural Hebrew phrasing (e.g., convert gustar patterns to direct verbs, use appropriate Hebrew word order). Output ONLY the Hebrew translation, no explanations: $SPANISH_OUTPUT" 2>/dev/null | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

if [ -z "$HEBREW_OUTPUT" ]; then
    echo -e "${RED}Error: Agent es-he-translator failed${NC}"
    exit 1
fi

echo -e "${GREEN}Hebrew Output:${NC} $HEBREW_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 3: Hebrew → English
echo -e "${BLUE}[STEP 3/3]${NC} Translating Hebrew → English..."
echo -e "${YELLOW}Input:${NC} $HEBREW_OUTPUT"
echo ""

FINAL_ENGLISH=$(claude --agents he-en-translator "Translate to English (Accuracy mode). Apply the Natural Phrasing Preservation skill to ensure natural English phrasing (e.g., convert VSO to SVO word order, use appropriate pronouns, avoid literal particle translation). Output ONLY the English translation, no explanations: $HEBREW_OUTPUT" 2>/dev/null | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

if [ -z "$FINAL_ENGLISH" ]; then
    echo -e "${RED}Error: Agent he-en-translator failed${NC}"
    exit 1
fi

echo -e "${GREEN}Final English:${NC} $FINAL_ENGLISH"
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "  RESULTS COMPARISON"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo -e "${YELLOW}Original Input (with errors):${NC}"
echo "  $ORIGINAL_INPUT"
echo ""
echo -e "${GREEN}Final Output (after round-trip):${NC}"
echo "  $FINAL_ENGLISH"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""
echo "Translation Chain:"
echo "  1. English:  $ORIGINAL_INPUT"
echo "  2. Spanish:  $SPANISH_OUTPUT"
echo "  3. Hebrew:   $HEBREW_OUTPUT"
echo "  4. English:  $FINAL_ENGLISH"
echo ""
echo "═══════════════════════════════════════════════════════════"

# Check if translations succeeded
if [ -n "$SPANISH_OUTPUT" ] && [ -n "$HEBREW_OUTPUT" ] && [ -n "$FINAL_ENGLISH" ]; then
    echo -e "${GREEN}✓ Round-trip translation completed successfully!${NC}"
else
    echo -e "${RED}✗ Round-trip translation had errors${NC}"
fi
