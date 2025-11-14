# Error Correction and Pattern Recognition Skill

## Overview
This skill enables identification and correction of spelling errors, typos, and malformed text in English input before translation to Spanish. It uses pattern recognition, context analysis, and linguistic knowledge to interpret intended meanings from imperfect text.

## Core Competencies

### 1. Types of Errors to Detect

#### Typographical Errors
**Adjacent Key Errors** (keyboard proximity):
- "thw" → "the" (w next to e)
- "yruth" → "truth" (y next to t, r next to t)
- "nane" → "name" (n next to m)
- "bitthday" → "birthday" (accidental double t)

**Transposition Errors** (letter swaps):
- "teh" → "the"
- "recieve" → "receive"
- "freind" → "friend"
- "wierd" → "weird"

**Insertion Errors** (extra letters):
- "helllo" → "hello"
- "withh" → "with"
- "goood" → "good"

**Deletion Errors** (missing letters):
- "ths" → "this"
- "yu" → "you"
- "wth" → "with"
- "hte" → "the"

**Substitution Errors** (wrong letter):
- "whan" → "when"
- "whith" → "with"
- "hous" → "house"

#### Phonetic/Sound-Based Errors
**Homophones and Near-Homophones:**
- "there/their/they're"
- "your/you're"
- "to/too/two"
- "weather/whether"
- "accept/except"
- "affect/effect"

**Phonetic Spelling:**
- "definately" → "definitely"
- "seperate" → "separate"
- "occured" → "occurred"
- "neccessary" → "necessary"
- "accomodate" → "accommodate"

#### Cognitive/Visual Errors
**Common Misspellings:**
- "alot" → "a lot"
- "shouldof" → "should have"
- "could of" → "could have"
- "loose" → "lose" (when meaning "to lose")
- "than/then" confusion

**Letter Pattern Confusion:**
- "ie/ei" confusion: "beleive" → "believe", "wierd" → "weird"
- Double consonants: "ocassion" → "occasion", "embarass" → "embarrass"

#### Autocorrect/Predictive Text Errors
- "I love you" → "I love toy" (autocorrect)
- "See you soon" → "See you spoon"
- Context-inappropriate word substitutions

### 2. Error Detection Strategies

#### Edit Distance Algorithm (Levenshtein Distance)
Calculate minimum operations (insertions, deletions, substitutions) to transform one string into another:
- Distance of 1: "cat" vs "car" (substitute t→r)
- Distance of 2: "cat" vs "catch" (insert t, insert h)

**Application:**
- For unknown word, find dictionary words within edit distance 1-2
- Prioritize more common words
- Consider context for disambiguation

#### Phonetic Matching (Soundex/Metaphone)
Match words that sound similar:
- "knight" and "night" → same phonetic code
- "Steven" and "Stephen" → same phonetic code

**Application:**
- When error appears phonetically driven
- Useful for names and proper nouns
- Combined with context for best results

#### N-gram Analysis
Check letter sequence frequency:
- "th" is common in English, "tg" is rare
- "tion" is common ending, "toin" is not

**Application:**
- Flag unlikely letter combinations
- Suggest corrections based on common patterns
- "recieve" has unlikely "ei" after "c" → "receive" more likely

#### Context-Based Correction
Use surrounding words to disambiguate:
- "I love to *read* books" → "read" (present/infinitive)
- "I *read* it yesterday" → "read" (past tense, same spelling)
- "The *weather* is nice" → "weather" not "whether"

### 3. Pattern Recognition Techniques

#### Word Boundary Detection
Identify when spaces are missing or misplaced:
- "alot" → "a lot"
- "cannot" vs "can not" (both acceptable, different usage)
- "maybe" vs "may be"
- "another" vs "an other"

#### Repetition Patterns
Detect and correct unintended repetitions:
- "the the" → "the"
- "I I am" → "I am"
- "very very good" → may be intentional (emphasis) or error

#### Case Errors
- Missing capitalization: "i love new york" → "I love New York"
- Incorrect capitalization: "HELLO" → "Hello" (depends on context)
- Proper noun detection: "john smith" → "John Smith"

#### Punctuation Issues
- Missing periods: "hello how are you" → "Hello. How are you?"
- Missing apostrophes: "dont" → "don't", "cant" → "can't"
- Missing commas in lists: "apples oranges bananas"

### 4. Context Analysis Framework

#### Syntactic Context
Analyze grammatical role in sentence:
- "I *[verb]* to the store" → verb must fit pattern
- "The *[adjective]* cat" → word must be adjective
- "She is *[state/action]*" → verb or adjective expected

#### Semantic Context
Use meaning and topic to disambiguate:
- "The *cast* is broken" (medical context) → "cast" correct
- "The *cost* is high" (financial context) → "cost" correct
- "I *heard* the news" → "heard" not "herd"

#### Pragmatic Context
Consider real-world knowledge:
- "I ate *breakfats*" → "breakfast" (meal timing)
- "The *president* of France" → proper noun handling
- "It's 100 *degrees*" → temperature unit

### 5. Correction Priority System

#### Confidence Levels
**High Confidence (apply correction automatically):**
- Single-letter typo with clear unique correction: "teh" → "the"
- Common misspelling with standard correction: "definately" → "definitely"
- Missing apostrophe in contraction: "dont" → "don't"

**Medium Confidence (apply with contextual verification):**
- Multiple possible corrections: "wih" → "with" or "wish"
- Homophone confusion: "there/their/they're"
- Needs context: "read" (present) vs "read" (past)

**Low Confidence (flag for review or use as-is):**
- Proper nouns or names (may be correct as-is)
- Technical terms or jargon
- Intentional variations (slang, creative spelling)
- Multiple possible interpretations

### 6. Error Correction Rules

#### Rule 1: Preserve Meaning Over Form
Prioritize understanding intended meaning rather than forcing grammatical perfection:
- "I want go store" → Understand as "I want to go to the store"
- Don't overcorrect creative or informal language

#### Rule 2: Context Always Overrides Dictionary
If context clearly indicates meaning, trust context:
- "I *red* the book" → "read" (past tense), not "red" (color)
- Dictionary says "red" is valid, but context demands "read"

#### Rule 3: Common Errors Have Common Corrections
Use frequency data for ambiguous cases:
- "recieve" → "receive" (very common error)
- "seperating" → "separating" (common pattern)

#### Rule 4: Minimal Intervention Principle
Make the smallest correction necessary:
- "helo" → "hello" (add one 'l')
- Not: "helo" → "help" (different word entirely)

#### Rule 5: Preserve Proper Nouns When Uncertain
If a word might be a name or proper noun, be conservative:
- "I met Jon yesterday" → Keep "Jon" (could be variant of "John")
- "I live in Madird" → Likely "Madrid" (known city)

### 7. Special Cases and Edge Conditions

#### Abbreviations and Acronyms
- "u" → "you" (text speak)
- "ur" → "you're" or "your" (context-dependent)
- "b4" → "before"
- "2day" → "today"
- "thx" → "thanks"

**Decision rule:** Expand if confident in meaning, preserve if uncertain or in formal context.

#### Numbers and Dates
- "12th" → correct ordinal
- "Jan 1st" → "January 1st" or keep abbreviated
- "10/5/23" → ambiguous (US: Oct 5, Europe: May 10)

#### Mixed Languages
- "I'm going to the supermercado" → Recognize Spanish word in English text
- Handle appropriately based on translation needs

#### Intentional Variations
- Brand names: "Flickr" (not "Flicker")
- Creative spelling: "Tumblr" (not "Tumbler")
- Usernames: may contain unusual patterns

### 8. Error Correction Workflow

#### Step 1: Tokenization
Break text into words/tokens:
- "Hello, how are you?" → ["Hello", ",", "how", "are", "you", "?"]

#### Step 2: Error Detection
For each token:
- Check if in valid dictionary
- Calculate edit distance to similar words
- Flag suspicious tokens

#### Step 3: Candidate Generation
For each flagged token:
- Generate candidates within edit distance 1-2
- Include phonetic matches
- Consider common misspelling database

#### Step 4: Context Evaluation
- Analyze syntactic fit (part of speech)
- Evaluate semantic coherence
- Check pragmatic plausibility

#### Step 5: Correction Selection
- Choose highest confidence candidate
- Apply correction or flag for review
- Maintain original if no confident correction

#### Step 6: Validation
- Verify corrected sentence makes sense
- Check for introduced errors
- Ensure meaning preservation

### 9. Common English Misspellings Database

#### Tier 1: Most Common
- definately → definitely
- separate → seperate
- occurred → occured
- accommodate → accomodate
- necessary → neccessary
- receive → recieve
- believe → beleive
- achieve → acheive
- weird → wierd
- beginning → begining

#### Tier 2: Frequent
- embarrass → embarass
- tomorrow → tommorow
- argument → arguement
- conscience → concience
- maintenance → maintainance
- privilege → priviledge
- restaurant → restaraunt
- vacuum → vaccum
- millennium → millenium
- liaison → liason

#### Tier 3: Grammar-Related
- its/it's confusion
- whose/who's confusion
- then/than confusion
- lose/loose confusion
- affect/effect confusion

### 10. Advanced Pattern Recognition

#### Letter Substitution Patterns
Common keyboard-based substitutions:
- a ↔ s (adjacent)
- e ↔ r, w (adjacent)
- i ↔ o, u (adjacent)
- n ↔ m (adjacent)

#### Doubling Patterns
- Words with single consonant often doubled: "ocur" → "occur"
- Words with double consonant often singularized: "tomorow" → "tomorrow"

#### Suffix Patterns
- -tion words: "confussion" → "confusion"
- -able/-ible: "responsable" → "responsible"
- -ence/-ance: "independance" → "independence"

#### Prefix Patterns
- dis-: "dissapear" → "disappear"
- mis-: "mispell" → "misspell"
- un-: "unatural" → "unnatural"

## Application Guidelines

### Before Translation
1. **Scan entire input** for potential errors
2. **Prioritize corrections** by confidence level
3. **Apply high-confidence corrections** automatically
4. **Flag ambiguous cases** for human review if available
5. **Preserve original meaning** above all else

### During Correction
1. **Maintain context window** around each error
2. **Check both before and after** correction
3. **Verify grammatical coherence** after changes
4. **Test semantic meaning** is preserved
5. **Document confidence level** of each correction

### Quality Assurance
- **False positive check**: Did we "correct" something that was right?
- **Meaning preservation**: Does corrected text mean same thing?
- **Over-correction check**: Did we change too much?
- **Context validation**: Does correction fit context?

## Integration with Translation

### Pre-Processing Pipeline
1. Receive raw English text (potentially with errors)
2. Apply error detection and correction
3. Generate corrected English text
4. Pass corrected text to translation module
5. Produce Spanish translation from clean source

### Error Reporting (Optional)
- Log original text
- Log detected errors
- Log applied corrections
- Log confidence levels
- Useful for quality monitoring and system improvement

## Examples

### Example 1: Multiple Error Types
**Input:** "I recieved you're mesage yestrday, thnks!"
**Analysis:**
- "recieved" → "received" (ie/ei spelling error)
- "you're" → "your" (homophone, possessive needed)
- "mesage" → "message" (missing 's')
- "yestrday" → "yesterday" (missing 'e')
- "thnks" → "thanks" (missing 'a')

**Corrected:** "I received your message yesterday, thanks!"

### Example 2: Context-Dependent
**Input:** "The wether is nice, weather we go or not."
**Analysis:**
- First "wether": context suggests "weather" (meteorological)
- Second "weather": context suggests "whether" (conditional)

**Corrected:** "The weather is nice, whether we go or not."

### Example 3: Ambiguous Case
**Input:** "I red the book last night."
**Analysis:**
- "red" could be color or past tense of "read"
- Context: "last night" indicates past tense
- Grammatical fit: verb needed after "I"

**Corrected:** "I read the book last night."

### Example 4: Minimal Correction Needed
**Input:** "Im going to the stor tomorrow."
**Analysis:**
- "Im" → "I'm" (missing apostrophe)
- "stor" → "store" (missing 'e')

**Corrected:** "I'm going to the store tomorrow."

### Example 5: Preserve Proper Nouns
**Input:** "I met Joh at the party."
**Analysis:**
- "Joh" likely "John" (common name)
- But could be intentional (nickname, foreign name)
- Correction confidence: medium

**Decision:** Correct to "John" as most likely, but flag as medium confidence.

## Advanced Techniques

### Machine Learning Integration
- Use pre-trained models for spell checking (e.g., SymSpell, Hunspell)
- Leverage language models for context-based correction
- Train on common error patterns for specific domains

### Contextual Word Embeddings
- Use word embeddings to find semantically similar words
- Verify correction maintains semantic coherence
- Check vector similarity between original and corrected versions

### Custom Dictionary Extension
- Build domain-specific dictionaries
- Add technical terms, jargon, proper nouns
- Include regional variations and slang

## Performance Metrics

### Accuracy Metrics
- **Precision**: Correct corrections / Total corrections made
- **Recall**: Errors corrected / Total errors present
- **F1 Score**: Harmonic mean of precision and recall

### Error Categories
- **True Positive**: Correctly identified and fixed error
- **False Positive**: "Corrected" something that was correct
- **True Negative**: Correctly left correct word unchanged
- **False Negative**: Failed to detect actual error

## Best Practices

1. **Start conservative**: Only correct high-confidence errors initially
2. **Build error database**: Track common patterns in your specific use case
3. **Use multiple strategies**: Combine edit distance, phonetics, and context
4. **Validate thoroughly**: Check corrections don't introduce new errors
5. **Preserve meaning**: Never sacrifice meaning for form
6. **Document decisions**: Keep record of correction rules and rationale
7. **Iterate and improve**: Refine based on real-world performance
8. **Handle edge cases**: Plan for unusual inputs, proper nouns, technical terms
9. **Respect user intent**: Don't overcorrect informal or creative language
10. **Test extensively**: Use diverse error types and contexts in testing
