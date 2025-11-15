# Natural Phrasing and Grammatical Structure Preservation Skill (Spanish → Hebrew)

## Overview
This skill ensures that Spanish text is translated into Hebrew maintaining natural, idiomatic Hebrew phrasing while preserving grammatical correctness. It prevents literal translation that produces grammatically valid but pragmatically unnatural Hebrew, especially critical in round-trip translation chains.

## Critical Problem: Structural Differences Between Spanish and Hebrew

### Key Language Differences

**Spanish Characteristics:**
- Pro-drop language (subject pronouns optional)
- SVO word order (flexible)
- Verb conjugation shows person/number
- Gustar-pattern verbs (indirect object construction)

**Hebrew Characteristics:**
- Also pro-drop (subject pronouns typically omitted)
- VSO word order (more common than SVO)
- Verb conjugation shows person/gender/number
- Prefix/suffix system for many grammatical features
- Gender agreement essential (even for verbs in some tenses)
- Possessive construction uses "של" (of) or possessive suffixes

### The Round-Trip Problem

When Spanish is translated to Hebrew, if the Hebrew translation doesn't sound natural to native speakers, the back-translation to English becomes awkward.

**Example Chain:**
```
Spanish: "Me gusta ir a la playa con Ben"
↓
Hebrew (Unnatural): "אני אוהב ללכת לחוף עם בן" (word-for-word)
↓
English: "I love to go to the beach with Ben" (awkward structure)

Better Hebrew (Natural): "אני חוקק את הלכת לחוף עם בן" or similar idiomatic phrasing
↓
English: "I really enjoy going to the beach with Ben" (natural back-translation)
```

## Core Competencies

### 1. Spanish-to-Hebrew Structural Mapping

#### Understanding Key Differences

**1.1 Verb Tense and Aspect**

Spanish uses:
- Preterite (simple past)
- Imperfect (ongoing past)
- Present perfect
- Simple present
- Simple future

Hebrew uses:
- Past tense (binyan patterns show aspect)
- Present tense (gender-specific conjugation)
- Future tense
- Infinitive constructions

**Translation Principle:**
- Don't just map tense-to-tense
- Consider how aspect is expressed in Hebrew
- Use binyan patterns appropriately
- Hebrew aspect often differs from Spanish aspect

**Example:**
- Spanish: "Comía manzanas" (I used to eat apples / I was eating apples)
- Hebrew: "הייתי אוכל תפוחים" (I was eating apples) - past tense + infinitive
- Or: "הייתי אוכלת תפוחים" (if female speaker - gender agreement)

---

**1.2 Subject Pronoun Usage**

**Spanish:** Pronouns omitted when clear from context
- "Como manzanas" = "I eat apples" (yo implicit)
- But sometimes included for emphasis: "Yo como manzanas"

**Hebrew:** Also pro-drop, but gender of subject affects verb form
- "אני אוכל" = "I eat" (masculine)
- "אני אוכלת" = "I eat" (feminine)
- Gender expressed in verb, not necessarily in pronoun

**Translation Consideration:**
When Spanish uses subject pronouns for emphasis, Hebrew may need different emphasis markers:
- Hebrew doesn't have exact "yo" emphasis equivalent
- Use word order or particles like "בעצם" (actually) or "כן" (yes) for emphasis

---

**1.3 Gender in Verbs and Adjectives**

Spanish:
- Nouns have gender (el/la)
- Adjectives agree with noun gender
- Verbs don't change for subject gender (mostly)
- Example: "Ella es inteligente" (She is intelligent - same verb form if male said it)

Hebrew:
- Nouns have gender
- Verbs conjugate for subject gender AND number
- Adjectives agree with noun gender
- Example: "היא חכמה" (She is wise - חכמה is feminine)
         "הוא חכם" (He is wise - חכם is masculine)

**Translation Issue:**
When translating Spanish to Hebrew, must assign gender to verbs based on context:
- If Spanish says "Ella come" (she eats), Hebrew must use feminine verb form
- If Spanish doesn't specify subject, context determines gender in Hebrew

---

### 2. Word Order and Emphasis Patterns

#### VSO vs SVO Word Order

**Spanish:** Flexible SVO (but SVO preferred in modern Spanish)
- "Juan come manzanas" (John eats apples - SVO)
- "Come manzanas Juan" (Eats apples John - VSO, less common)

**Hebrew:** VSO is more natural/default
- "יוחנן אוכל תפוחים" (Yohanan eats apples - VSO) ✓ Natural
- "אוכל יוחנן תפוחים" (Eats Yohanan apples) ✗ Awkward

**Translation Rule:**
- If Spanish has standard SVO, restructure to VSO for Hebrew
- Don't force Spanish word order into Hebrew
- Use Hebrew's natural VSO patterns

**Example:**
- Spanish: "Ella fue a la playa" (SVO - She went to the beach)
- Hebrew: "היא הלכה לחוף" (VSO more natural - Went she to beach)
- Even more natural: "היא הלכה אל החוף" (standard order with definite article)

---

#### Emphasis Through Word Order

Hebrew can use word order for emphasis:
- Subject first = emphasis on subject: "אני הלכתי לחוף" (I went to beach - emphasis on I)
- Object first = emphasis on object: "את החוף אני אוהבת" (The beach I love - emphasis on beach)
- Verb first = neutral/normal: "הלכתי אל החוף" (I went to beach - neutral)

**Translation Consideration:**
When Spanish emphasizes through structure, find equivalent Hebrew emphasis:
- Spanish: "Yo sí quiero ir" (I DO want to go - emphasis through pronoun)
- Hebrew: "אני כן רוצה ללכת" (I YES want to go - emphasis through particle כן)
- Or: "אני בוודאי רוצה ללכת" (I definitely want to go)

---

### 3. Verb Construction Patterns

#### Common Spanish Verbs and Hebrew Equivalents

**Like/Enjoy:**

Spanish: "Me gusta" (To me it pleases)
- Structure: Indirect object (me) + verb (gusta) + subject (activity)
- Example: "Me gusta ir a la playa" (To me pleases going to beach)

Hebrew Equivalents:
1. "אני אוהב" + infinitive (I love + to do)
   - "אני אוהב ללכת לחוף" (I love to go to beach) ✓ Natural

2. "אני אוהבת" + infinitive (if female speaker)
   - "אני אוהבת ללכת לחוף" (feminine form)

3. "אני מעדיף" + infinitive (I prefer)
   - "אני מעדיף ללכת לחוף" (I prefer to go to beach)

4. "זה נראה לי" + adjective (It seems to me)
   - Use for opinions about things

**Rule for Hebrew:**
- Hebrew doesn't have exact "gustar" pattern
- Use direct verb + infinitive instead
- "I like" = "אני אוהב" (I love) not indirect object construction

---

**Need/Have to:**

Spanish: "Tengo que..." (I have that...)
- "Tengo que irme" (I have to go / I must go)

Hebrew:
1. "אני חייב" + infinitive (I must - masculine)
   - "אני חייב ללכת" (I must go)

2. "אני חייבת" + infinitive (if female)
   - "אני חייבת ללכת"

3. "אני צריך" + infinitive (I need - masculine, more casual)
   - "אני צריך ללכת" (I need to go)

4. "אני צריכה" + infinitive (if female)

**Rule:** Hebrew is more specific about obligation strength:
- "חייב" (must) = stronger obligation
- "צריך" (need) = milder obligation

---

**Want/Desire:**

Spanish: "Quiero..." (I want)
- "Quiero comer" (I want to eat)

Hebrew: "אני רוצה..." (I want)
- "אני רוצה לאכול" (I want to eat)

Note: Hebrew uses "ל" prefix on infinitive ("לאכול" not "אכול")

---

#### Reflexive Verbs in Spanish → Hebrew

Spanish uses reflexives frequently:
- "Me ducho" (I shower myself - shower reflexive)
- "Me levanto" (I get up myself - stand up reflexive)
- "Me acuesto" (I lie down myself - lie down reflexive)

Hebrew:
- Sometimes uses reflexive (hitpael binyan)
- Sometimes uses regular verb
- Context determines best form

**Translation Approach:**
- Don't translate reflexive structure directly
- Find Hebrew equivalent for the action
- Use appropriate binyan

**Examples:**
- Spanish: "Me ducho" → Hebrew: "אני מתקלח" (I bathe - hitpael reflexive binyan)
- Spanish: "Me levanto" → Hebrew: "אני קם" or "אני קמה" (I rise - regular qal binyan)
- Spanish: "Me acuesto" → Hebrew: "אני שוכב" or "אני שוכבת" (I lie down)

---

### 4. Grammatical Agreement Patterns

#### Gender and Number Agreement

Hebrew requires agreement in:
- **Verb and subject gender:** "הוא רץ" (he runs) vs "היא רצה" (she runs)
- **Adjective and noun gender:** "אדום" (red - m) vs "אדומה" (red - f)
- **Article and noun gender:** "ה" (the - both) but adjectives must match noun gender

**Translation Consideration:**
When translating Spanish to Hebrew, ensure:
1. Subject gender is determined from context
2. Verbs conjugate for correct gender
3. Adjectives match noun gender
4. Articles match noun gender

**Example:**
- Spanish: "La casa es grande" (The house is big)
- Hebrew: "הבית גדול" (The house [masculine in Hebrew] big [masculine])
- Note: "בית" (house) is masculine in Hebrew, unlike "casa" (feminine) in Spanish

---

#### Number Agreement

Both Spanish and Hebrew require number agreement, but...

**Spanish:** Numbers, pronouns, adjectives reflect number
- "Los libros rojos" (The red books - all plural)

**Hebrew:** Similar, but with additional rules
- "הספרים האדומים" (The books the red [plural forms])
- Note: Hebrew often requires definite article before adjective

---

### 5. Prepositions and Prepositional Phrases

Spanish and Hebrew prepositions often don't map directly.

**Common Spanish Prepositions:**
- a (to) → Hebrew "ל" or "אל"
- de (of/from) → Hebrew "של" or suffix
- en (in) → Hebrew "ב"
- por (for/by) → Hebrew "ל" or "על ידי"
- para (for) → Hebrew "ל"

**Translation Rule:**
- Don't map prepositions word-for-word
- Use appropriate Hebrew prepositions for meaning
- Hebrew prefix system (ל, ב, כ, מ) can change word pronunciation

**Example:**
- Spanish: "en la casa" (in the house)
- Hebrew: "בבית" (in-the-house) - prefix ב attached to noun

---

### 6. Preserving Meaning Through Structural Change

Hebrew's structure differs fundamentally from Spanish. Meaning must survive structural change.

**Case Study:**
- Spanish: "Me gusta mucho ir a la playa con Ben"
  - Meaning: Strong preference for beach visits with Ben

- Hebrew Options:
  1. "אני חוקק ללכת לחוף עם בן" (I love to go to beach with Ben) ✓
  2. "החוף עם בן זה משהו שאני אוהבת" (Beach with Ben it's something I love) - More emphatic
  3. "אני כל כך אוהבת ללכת לחוף עם בן" (I so much love to go to beach with Ben) - Emphatic

Choose based on:
- Formality level
- Strength of preference
- Context and audience

---

## Practical Application Guide

### Application Protocol

**BEFORE Final Hebrew Output:**

1. **Identify Spanish Structure**
   - What grammatical structure is used?
   - Is there a gustar verb? (Reflexive? Obligation?)
   - What is the core meaning (not the literal structure)?

2. **Map to Natural Hebrew**
   - What structure do native Hebrew speakers use for this meaning?
   - Not the Spanish structure, but equivalent meaning
   - Gender/number appropriate?

3. **Check Naturalness**
   - Would a Hebrew speaker say this?
   - Is word order VSO or SVO (VSO more natural)?
   - Are gender agreements correct?
   - Are prefixes/suffixes correct?

4. **Verify Agreement**
   - [ ] Verb conjugation matches subject gender
   - [ ] Adjectives match noun gender
   - [ ] Possessive construction correct
   - [ ] Articles present where needed

5. **Test Back-Translation**
   - If back-translated to English, would it sound natural?
   - Does the meaning come through?
   - Are there any awkward structures?

---

## Common Pitfalls in Spanish→Hebrew Translation

### Pitfall 1: Forcing Gustar Structure into Hebrew

**WRONG:**
- Spanish: "Me gusta ir a la playa"
- Direct structure to Hebrew: "לי אהיב ללכת לחוף" ✗ (wrong)

**CORRECT:**
- "אני אוהב ללכת לחוף" ✓ (I love to go to beach)
- Direct verb + infinitive, not indirect object construction

---

### Pitfall 2: Gender Mismatch

**WRONG:**
- Spanish: "Ella es bonita" → Hebrew: "היא יפה" (correct if female)
- But if translating without context: could use wrong gender

**CORRECT:**
- Determine subject gender from context or speaker
- Use matching verb conjugation
- Hebrew: "היא יפה" (she is beautiful - feminine form)
- Or: "הוא יפה" (he is beautiful - masculine form)

---

### Pitfall 3: Reflexive Verb Over-Translation

**WRONG:**
- Spanish: "Me ducho" → Hebrew: "אני מתקלחת אותי" ✗ (I bathe myself myself)

**CORRECT:**
- Hebrew: "אני מתקלחת" ✓ (I bathe - reflexive built into verb)

---

### Pitfall 4: Spanish Word Order Forced into Hebrew

**WRONG:**
- Spanish SVO: "Juan come manzanas" (John eats apples)
- Translated SVO: "יוחנן אוכל תפוחים" - sounds awkward

**CORRECT:**
- Hebrew VSO: "אוכל יוחנן תפוחים" or standard "יוחנן אוכל תפוחים" (both acceptable)
- More natural VSO ordering for Hebrew

---

### Pitfall 5: Missing Gender on Adjectives

**WRONG:**
- "הספר אדום" (The book red-masculine) if book is feminine in context

**CORRECT:**
- "הספר אדום" (book is masculine in Hebrew, so masculine adjective) ✓

---

## Quality Control Checklist

### Before Final Hebrew Output

**Structure ✓**
- [ ] Gustar patterns converted to direct verbs
- [ ] Subject pronouns used appropriately (not forced)
- [ ] Word order is VSO or natural SVO, not English-like
- [ ] Reflexive verbs simplified to appropriate Hebrew forms

**Grammar ✓**
- [ ] Verbs conjugated for subject gender and number
- [ ] All adjectives agree with noun gender
- [ ] Articles and nouns match gender
- [ ] Possessive constructions use "של" or suffixes correctly

**Naturalness ✓**
- [ ] Sounds like natural Hebrew to native speaker
- [ ] No Spanish-structure artifacts
- [ ] Word order is Hebrew-appropriate
- [ ] Prepositions are Hebrew-appropriate

**Back-Translation Potential ✓**
- [ ] If translated back to Spanish/English, would sound natural
- [ ] No awkward structures
- [ ] Meaning preserved

---

## Round-Trip Translation Specific Guidance

This skill is critical because Hebrew → English translation can produce unnatural English if Hebrew isn't natural to begin with.

### Prevention Steps

1. **Make Spanish translation natural first**
   - Use Spanish-natural phrasing (from EN-ES skill)

2. **Convert to natural Hebrew structure**
   - Not literal Spanish-to-Hebrew
   - Use Hebrew-native constructions

3. **Verify Hebrew naturalness**
   - A Hebrew speaker would say this
   - Not forcing Spanish patterns

4. **Then back-translation has chance at naturalness**
   - Natural Hebrew → Natural English (more likely)
   - Unnatural Hebrew → Awkward English (what we want to avoid)

### Example: Correct Round-Trip Approach

```
English: "I like going to the beach with Ben"
↓
Spanish (Natural): "Me gusta ir a la playa con Ben"
  (not "Yo gusta..." or "Yo disfruto...")
↓
Hebrew (Natural): "אני אוהב ללכת לחוף עם בן"
  (not gustar-pattern, using direct verb "אוהב" = love/like)
↓
English (Natural back-translation): "I like/love going to the beach with Ben"
  (natural structure because Hebrew was natural)
```

---

## Summary

**Key Principle:**
Hebrew has fundamentally different structure from Spanish. Don't map structures 1-to-1. Instead, understand the meaning and express it naturally in Hebrew using Hebrew-native constructions.

**Golden Rules:**
1. Gustar patterns → Direct verb + infinitive (not indirect object)
2. Gender must match subject in verbs and adjectives
3. VSO word order is more natural in Hebrew than forced SVO
4. Reflexive verbs → Find Hebrew equivalent (often qal binyan, not hitpael)
5. Prepositions don't map directly → Use Hebrew-appropriate prepositions
6. Check naturalness: "Would a native Hebrew speaker say this?"
7. Prioritize meaning preservation over structure preservation

