#!/bin/bash
# Round-Trip Translation Test: English → Spanish → Hebrew → English
# Tests if translation chain preserves meaning

AGENT_DIR="/Users/bvolovelsky/Desktop/LLM/TRANSLATOR/agents"
SKILLS_DIR="/Users/bvolovelsky/Desktop/LLM/TRANSLATOR/skills"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

if [ $# -lt 1 ]; then
    echo "Usage: $0 'English sentence with errors'"
    echo ""
    echo "Example:"
    echo "  $0 'I recieved you're email yestrday about the important meeting next week.'"
    exit 1
fi

ORIGINAL_INPUT="$1"

echo "═══════════════════════════════════════════════════════════"
echo "  ROUND-TRIP TRANSLATION TEST"
echo "  Pipeline: English → Spanish → Hebrew → English"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Step 1: English → Spanish
echo -e "${BLUE}[STEP 1/3]${NC} Translating English → Spanish..."
echo -e "${YELLOW}Input:${NC} $ORIGINAL_INPUT"
echo ""

SPANISH_OUTPUT=$(claude --agent "$AGENT_DIR/AGENT_EN_ES.md" \
       --skill "$SKILLS_DIR/english_spanish_skills/bilingual_proficiency.md" \
       --skill "$SKILLS_DIR/english_spanish_skills/error_correction.md" \
       --skill "$SKILLS_DIR/english_spanish_skills/contextual_understanding.md" \
       --skill "$SKILLS_DIR/english_spanish_skills/grammatical_syntactic_awareness.md" \
       --skill "$SKILLS_DIR/english_spanish_skills/cultural_pragmatic_competence.md" \
       "Translate to Spanish (Accuracy mode). Output ONLY the Spanish translation, nothing else: $ORIGINAL_INPUT")

echo -e "${GREEN}Spanish Output:${NC} $SPANISH_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 2: Spanish → Hebrew
echo -e "${BLUE}[STEP 2/3]${NC} Translating Spanish → Hebrew..."
echo -e "${YELLOW}Input:${NC} $SPANISH_OUTPUT"
echo ""

HEBREW_OUTPUT=$(claude --agent "$AGENT_DIR/AGENT_ES_HE.md" \
       --skill "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_bilingual_proficiency.md" \
       --skill "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_error_correction.md" \
       --skill "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_contextual.md" \
       --skill "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_grammatical.md" \
       --skill "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_cultural.md" \
       "Translate to Hebrew (Accuracy mode). Output ONLY the Hebrew translation, nothing else: $SPANISH_OUTPUT")

echo -e "${GREEN}Hebrew Output:${NC} $HEBREW_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 3: Hebrew → English
echo -e "${BLUE}[STEP 3/3]${NC} Translating Hebrew → English..."
echo -e "${YELLOW}Input:${NC} $HEBREW_OUTPUT"
echo ""

FINAL_ENGLISH=$(claude --agent "$AGENT_DIR/AGENT_HE_EN.md" \
       --skill "$SKILLS_DIR/hebrew_english_skills/hebrew_english_bilingual_proficiency.md" \
       --skill "$SKILLS_DIR/hebrew_english_skills/hebrew_english_error_correction.md" \
       --skill "$SKILLS_DIR/hebrew_english_skills/hebrew_english_contextual.md" \
       --skill "$SKILLS_DIR/hebrew_english_skills/hebrew_english_grammatical.md" \
       --skill "$SKILLS_DIR/hebrew_english_skills/hebrew_english_cultural.md" \
       "Translate to English (Accuracy mode). Output ONLY the English translation, nothing else: $HEBREW_OUTPUT")

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
