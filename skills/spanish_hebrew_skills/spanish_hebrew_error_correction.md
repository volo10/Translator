# Error Correction and Pattern Recognition Skill: Spanish to Hebrew

## Overview
This skill enables identification and correction of spelling errors, typos, and malformed text in Spanish input before translation to Hebrew. It uses pattern recognition, context analysis, and linguistic knowledge to interpret intended meanings from imperfect text.

## Core Competencies

### 1. Types of Spanish Errors to Detect

#### Typographical Errors

**Adjacent Key Errors** (Spanish keyboard layout):
- "eñ" → "en" (ñ next to n)
- "ña" → "na" 
- "quq" → "que" (q mistyped)
- "tiens" → "tiene" (s next to e)

**Transposition Errors:**
- "etsoy" → "estoy"
- "tieen" → "tiene"
- "perro" → "pero" (or legitimate double r)
- "parqa" → "para"

**Insertion Errors:**
- "holaa" → "hola"
- "conn" → "con"
- "esttoy" → "estoy"

**Deletion Errors:**
- "estoy" → "estoy" (no error)
- "etoy" → "estoy" (missing 's')
- "tine" → "tiene" (missing 'e')

**Substitution Errors:**
- "tienw" → "tiene" (w instead of e)
- "cono" → "como" (o instead of m)

#### Accent Mark Errors

**Missing Accents (Very Common):**
- "esta" vs "está" (this vs is)
- "el" vs "él" (the vs he)
- "si" vs "sí" (if vs yes)
- "tu" vs "tú" (your vs you)
- "como" vs "cómo" (like/as vs how)
- "cuando" vs "cuándo" (when vs when?)
- "donde" vs "dónde" (where vs where?)

**Incorrect Accents:**
- "ésta" → "esta" (old style, now incorrect)
- "sólo" → "solo" (modern rule: no accent needed)

**Detection Strategy:**
- Check if word exists without accent
- Verify if meaning makes sense in context
- Common patterns: question words usually need accents

#### Ñ vs N Confusion

**Missing Ñ:**
- "nino" → "niño" (child)
- "manana" → "mañana" (tomorrow/morning)
- "espanol" → "español" (Spanish)
- "anos" → "años" (years) [CRITICAL: año vs ano!]

**Incorrect Ñ:**
- "niñguno" → "ninguno" (none)
- Rare but possible with keyboard issues

### 2. Spanish-Specific Error Patterns

#### Gender Agreement Errors

**Article-Noun Mismatch:**
- "el casa" → "la casa" (the house, feminine)
- "la libro" → "el libro" (the book, masculine)

**Adjective Agreement:**
- "casa blanco" → "casa blanca"
- "libro roja" → "libro rojo"

**Detection:**
- Check noun gender in dictionary
- Verify article and adjectives match
- Note: Translation to Hebrew will need different gender anyway

#### Verb Conjugation Errors

**Wrong Person:**
- "yo tiene" → "yo tengo" (I have)
- "ellos es" → "ellos son" (they are)

**Wrong Tense Markers:**
- "yo tené" → "yo tengo" (present) or "yo tuve" (past)
- Accent errors on past tense: "hablo" vs "habló"

**Irregular Verb Errors:**
- "yo sabo" → "yo sé" (I know)
- "yo podo" → "yo puedo" (I can)

### 3. Context-Based Correction

#### Homophones/Near Homophones

**Common Confusions:**
- "hay" (there is) vs "ay" (ouch) vs "ahí" (there)
- "haber" (to have, auxiliary) vs "a ver" (let's see)
- "hecho" (done, fact) vs "echo" (I throw)
- "vaya" (go, subjunctive) vs "valla" (fence) vs "baya" (berry)
- "tuvo" (had) vs "tubo" (tube)
- "porque" (because) vs "por qué" (why) vs "porqué" (reason) vs "por que" (for which)

**Context Analysis Required:**
- "Ay que ir" → "Hay que ir" (One must go)
- "A ver que pasa" → "A ver qué pasa" (Let's see what happens)
- "Por que razón" → "Por qué razón" (For what reason)

#### Ser vs Estar Errors

**Wrong Verb Choice:**
- "Yo soy cansado" → "Yo estoy cansado" (temporary state)
- "Ella está inteligente" → "Ella es inteligente" (permanent characteristic)

**Detection:**
- Check if adjective indicates state vs characteristic
- Location almost always uses estar
- Identity and occupation use ser

### 4. Common Spanish Misspellings

#### Tier 1: Most Common

- "haber" vs "a ver"
- Missing accents on question words
- "porque/por qué/porqué/por que" confusion
- "hay/ay/ahí" confusion
- "hecho/echo" confusion
- "iba/iva" (was going)
- "también/tambien" (also, missing accent)
- "sólo/solo" (old rule vs new)

#### Tier 2: Frequent

- "hablar/ablar" (silent h)
- "hola/ola" (hello vs wave)
- "hasta/asta" (until vs pole)
- "azar/asar" (chance vs to roast)
- "vez/ves/vés" (time/you see)
- "tubo/tuvo" (tube/had)

#### Tier 3: Regional/Pronunciation-Based

- "s/c/z" confusion (seseo regions)
  - "corazon/corazón" (missing accent)
  - "hace/hase" (does/makes)
- "ll/y" confusion (yeísmo)
  - "halla/haya" (finds/has, subjunctive)
  - "cayó/calló" (fell/was silent)
- "b/v" confusion (both sound same)
  - "tubo/tuvo" (tube/had)
  - "baca/vaca" (roof rack/cow)

### 5. Keyboard Layout Issues

#### Spanish Keyboard
- Ñ key present but might be skipped
- Accented vowels may require special key combinations
- ¿ and ¡ often omitted (non-critical for meaning)

#### Common Omissions Due to Keyboard
- Missing opening question/exclamation marks: "Cómo estás?" → should be "¿Cómo estás?"
- Not critical for comprehension
- Can be added in correction if desired

### 6. Regional Variation Errors

#### Vosotros Forms
- Used in Spain, not Latin America
- "vosotros tenéis" vs "ustedes tienen"
- Not an error per se, but recognize both

#### Voseo (Argentina, Uruguay, parts of Central America)
- "vos tenés" instead of "tú tienes"
- Different conjugation: -ás, -és, -ís endings
- Recognize as valid regional form

#### Regional Vocabulary
- "coche" (Spain) vs "carro" (Latin America) - both correct
- "ordenador" (Spain) vs "computadora" (Latin America)
- Not errors, just variants

### 7. Error Correction Workflow for Spanish

#### Step 1: Accent Mark Check
- Scan for words that commonly need accents
- Verify question words: qué, cómo, cuándo, dónde, quién
- Check demonstratives if used as pronouns
- Validate past tense 3rd person verbs: habló, comió

#### Step 2: Ñ Detection
- Search for letter clusters that should be ñ
- "nino" → "niño"
- "mañana" frequently misspelled as "manana"
- Check cognates with Spanish ñ

#### Step 3: Homophone Disambiguation
- Identify potential homophones from context
- Apply semantic analysis
- hay/ay/ahí based on sentence structure
- porque/por qué based on question vs statement

#### Step 4: Verb Agreement
- Check subject-verb agreement
- Verify ser vs estar usage
- Validate tense consistency in text

#### Step 5: Gender Agreement
- Check article-noun agreement
- Verify adjective agreement
- Note for translation: Hebrew gender may differ

#### Step 6: Common Word Errors
- Check dictionary for existence
- Apply edit distance for candidates
- Validate meaning in context
- Prioritize common misspellings

### 8. Confidence Levels

#### High Confidence (Auto-Correct)
- Missing accents on question words in questions
- "nino" → "niño" (child context)
- "hay que" (there is need to)
- Common typos with single edit distance
- Subject-verb agreement errors (yo tiene → yo tengo)

#### Medium Confidence (Verify with Context)
- "hay/ay/ahí" - needs sentence context
- "porque/por qué" - question vs statement
- "esta/está" - needs to determine if verb or demonstrative
- Ser vs estar corrections

#### Low Confidence (Flag or Keep Original)
- Ambiguous homophones without clear context
- Regional variations (vosotros vs ustedes)
- Proper nouns that might look like errors
- Technical terms

### 9. Special Cases for Spanish

#### Silent H
- All Spanish H is silent
- Errors like "ola" vs "hola" need context
- "asta" vs "hasta"
- "echo" vs "hecho"

#### Double Letters
- RR: occurs only between vowels, represents different sound
  - "pero" (but) vs "perro" (dog)
  - Not an error, phonetically significant
- LL: represents different sound (in most dialects)
  - "halla" vs "haya"
- CC: before i or e
  - "acción" (action)

#### Contractions and Combinations
- "al" = a + el (to the)
- "del" = de + el (of the, from the)
- These are required, not optional

### 10. Hebrew Translation Considerations

When correcting Spanish for Hebrew translation:

#### Preserve Meaning, Not Form
- Focus on getting meaning right
- Hebrew won't maintain Spanish gender anyway
- Verb tense matters more than aspect for Hebrew

#### Critical Corrections
- Accents that change meaning (esta/está)
- Verb choice (ser/estar) affects Hebrew verb binyan
- Negative markers (no hay vs hay)

#### Less Critical for Hebrew
- Article gender errors (Hebrew has different system)
- Vosotros vs ustedes (both become plural in Hebrew)
- Regional vocabulary variations

### 11. Error Detection Examples

#### Example 1: Multiple Errors
**Input:** "Ayer recivi tú mensaje, mucas gracias!"
**Analysis:**
- "recivi" → "recibí" (missing accent, past tense)
- "tú" → "tu" (possessive, no accent)
- "mucas" → "muchas" (typo, missing 'h')

**Corrected:** "Ayer recibí tu mensaje, ¡muchas gracias!"

#### Example 2: Context-Dependent
**Input:** "Ay muchas personas aqui"
**Analysis:**
- "Ay" → "Hay" (there are, not "ouch!")
- "aqui" → "aquí" (missing accent)

**Corrected:** "Hay muchas personas aquí"

#### Example 3: Homophone
**Input:** "No se porque no vino"
**Analysis:**
- "porque" → "por qué" (question why, not because)
- "se" context: "I don't know why"

**Corrected:** "No sé por qué no vino"

#### Example 4: Agreement Error
**Input:** "La libro esta rojo"
**Analysis:**
- "La libro" → "El libro" (masculine noun)
- "esta" → "está" (verb, needs accent)
- "rojo" → "rojo" (correct, masculine)

**Corrected:** "El libro está rojo"

#### Example 5: Regional Form
**Input:** "Vos tenes razón"
**Analysis:**
- Voseo form (Argentina/Uruguay)
- "tenes" → "tenés" (should have accent)
- Not wrong, regional

**Corrected:** "Vos tenés razón" (or "Tú tienes razón" for standard)

### 12. Advanced Pattern Recognition

#### Verb Stem Changes
Watch for stem-changing verbs written incorrectly:
- "quero" → "quiero" (want)
- "podo" → "puedo" (can)
- "volver" → correctly "vuelvo" not "volvo"

#### Irregular Past Participles
- "abrido" → "abierto" (opened)
- "ponido" → "puesto" (put)
- "rompido" → "roto" (broken)

#### Subjunctive Triggers
After corrections, verify subjunctive used after:
- Expressions of doubt: "Dudo que..."
- Wishes: "Espero que..."
- Uncertainty: "No creo que..."

## Application Guidelines

### Pre-Translation Phase
1. **Scan for accent marks** - add where clearly missing
2. **Check ñ usage** - correct obvious cases
3. **Validate verb conjugations** - fix subject-verb agreement
4. **Disambiguate homophones** using context
5. **Verify gender agreement** (helps with meaning)
6. **Apply common corrections** for high-confidence errors

### During Translation to Hebrew
1. Use corrected Spanish as source
2. Note that some Spanish errors won't affect Hebrew
3. Preserve corrected meaning in Hebrew translation

### Quality Assurance
- Verify corrections didn't change intended meaning
- Check that context supports corrections
- Validate that sentence remains grammatical
- Ensure natural Spanish after corrections

## Best Practices

1. **Prioritize meaning-changing errors** (esta/está, hay/ay)
2. **Add accents on question words** in questions automatically
3. **Fix obvious typos** (one-letter distance)
4. **Preserve regional variations** unless they're actual errors
5. **Use context heavily** for homophone disambiguation
6. **Don't overcorrect** - some informal writing is intentional
7. **Focus on errors that affect translation** to Hebrew
8. **Document uncertainty** when corrections are ambiguous
9. **Validate verb forms** against conjugation tables
10. **Check both syntax and semantics** before finalizing

## Integration with Hebrew Translation

After error correction:
- Pass cleaned Spanish to translation module
- Spanish verb choice affects Hebrew binyan selection
- Spanish tense maps to Hebrew tense
- Corrected meaning ensures accurate Hebrew output
- Gender corrections help semantic understanding (though Hebrew has different gender)

## Performance Metrics

- **Accuracy:** Correctly identify and fix errors
- **Precision:** Don't "correct" correct text
- **Context sensitivity:** Use context for ambiguous cases
- **Speed:** Prioritize high-impact errors first
- **Hebrew readiness:** Ensure corrected text ready for Hebrew translation
