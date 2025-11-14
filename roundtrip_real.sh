#!/bin/bash
# Real Round-Trip Translation Test for Claude Code
# Uses proper prompt engineering instead of non-existent CLI flags

AGENT_DIR="/Users/bvolovelsky/Desktop/LLM/TRANSLATOR/agents"
SKILLS_DIR="/Users/bvolovelsky/Desktop/LLM/TRANSLATOR/skills"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
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
echo "  ROUND-TRIP TRANSLATION TEST"
echo "  Pipeline: English → Spanish → Hebrew → English"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Step 1: English → Spanish
echo -e "${BLUE}[STEP 1/3]${NC} Translating English → Spanish..."
echo -e "${YELLOW}Input:${NC} $ORIGINAL_INPUT"
echo ""

# Create prompt with agent instructions and skills embedded
cat > /tmp/prompt_en_es.txt << PROMPT_END
You are an expert English to Spanish translator. Follow these instructions exactly:

AGENT INSTRUCTIONS:
$(cat "$AGENT_DIR/AGENT_EN_ES.md")

SKILLS (READ CAREFULLY):
---
SKILL 1: Bilingual Proficiency
$(cat "$SKILLS_DIR/english_spanish_skills/bilingual_proficiency.md")
---
SKILL 2: Error Correction
$(cat "$SKILLS_DIR/english_spanish_skills/error_correction.md")
---
SKILL 3: Contextual Understanding
$(cat "$SKILLS_DIR/english_spanish_skills/contextual_understanding.md")
---
SKILL 4: Grammatical Awareness
$(cat "$SKILLS_DIR/english_spanish_skills/grammatical_syntactic_awareness.md")
---
SKILL 5: Cultural Competence
$(cat "$SKILLS_DIR/english_spanish_skills/cultural_pragmatic_competence.md")
---

TASK: Translate this English sentence to Spanish using Accuracy mode.

English input: $ORIGINAL_INPUT

OUTPUT FORMAT: Provide ONLY the Spanish translation, nothing else. No explanations, no notes, just the translated sentence.

Spanish translation:
PROMPT_END

SPANISH_OUTPUT=$(claude < /tmp/prompt_en_es.txt | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

echo -e "${GREEN}Spanish Output:${NC} $SPANISH_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 2: Spanish → Hebrew
echo -e "${BLUE}[STEP 2/3]${NC} Translating Spanish → Hebrew..."
echo -e "${YELLOW}Input:${NC} $SPANISH_OUTPUT"
echo ""

cat > /tmp/prompt_es_he.txt << PROMPT_END
You are an expert Spanish to Hebrew translator. Follow these instructions exactly:

AGENT INSTRUCTIONS:
$(cat "$AGENT_DIR/AGENT_ES_HE.md")

SKILLS (READ CAREFULLY):
---
SKILL 1: Bilingual Proficiency
$(cat "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_bilingual_proficiency.md")
---
SKILL 2: Error Correction
$(cat "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_error_correction.md")
---
SKILL 3: Contextual Understanding
$(cat "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_contextual.md")
---
SKILL 4: Grammatical Awareness
$(cat "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_grammatical.md")
---
SKILL 5: Cultural Competence
$(cat "$SKILLS_DIR/spanish_hebrew_skills/spanish_hebrew_cultural.md")
---

TASK: Translate this Spanish sentence to Hebrew using Accuracy mode.

Spanish input: $SPANISH_OUTPUT

OUTPUT FORMAT: Provide ONLY the Hebrew translation, nothing else. No explanations, no notes, just the translated sentence.

Hebrew translation:
PROMPT_END

HEBREW_OUTPUT=$(claude < /tmp/prompt_es_he.txt | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

echo -e "${GREEN}Hebrew Output:${NC} $HEBREW_OUTPUT"
echo ""
echo "─────────────────────────────────────────────────────────────"
echo ""

# Step 3: Hebrew → English
echo -e "${BLUE}[STEP 3/3]${NC} Translating Hebrew → English..."
echo -e "${YELLOW}Input:${NC} $HEBREW_OUTPUT"
echo ""

cat > /tmp/prompt_he_en.txt << PROMPT_END
You are an expert Hebrew to English translator. Follow these instructions exactly:

AGENT INSTRUCTIONS:
$(cat "$AGENT_DIR/AGENT_HE_EN.md")

SKILLS (READ CAREFULLY):
---
SKILL 1: Bilingual Proficiency
$(cat "$SKILLS_DIR/hebrew_english_skills/hebrew_english_bilingual_proficiency.md")
---
SKILL 2: Error Correction
$(cat "$SKILLS_DIR/hebrew_english_skills/hebrew_english_error_correction.md")
---
SKILL 3: Contextual Understanding
$(cat "$SKILLS_DIR/hebrew_english_skills/hebrew_english_contextual.md")
---
SKILL 4: Grammatical Awareness
$(cat "$SKILLS_DIR/hebrew_english_skills/hebrew_english_grammatical.md")
---
SKILL 5: Cultural Competence
$(cat "$SKILLS_DIR/hebrew_english_skills/hebrew_english_cultural.md")
---

TASK: Translate this Hebrew sentence to English using Accuracy mode.

Hebrew input: $HEBREW_OUTPUT

OUTPUT FORMAT: Provide ONLY the English translation, nothing else. No explanations, no notes, just the translated sentence.

English translation:
PROMPT_END

FINAL_ENGLISH=$(claude < /tmp/prompt_he_en.txt | tail -1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')

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

# Cleanup
rm -f /tmp/prompt_*.txt
