---
name: downloading-game-walkthroughs
description: Downloads multiple walkthrough files for point-and-click adventure games by searching web archives and fan sites. Use when given a game name and needing to collect 3+ walkthrough sources for puzzle analysis.
---

# Downloading Game Walkthroughs

## Quick Start

For any game, immediately try these three approaches in parallel:

```bash
# 1. Create directory
mkdir -p walkthroughs/[game-slug]

# 2. Search web archive
websearch query="[Game Name] walkthrough site:archive.org OR site:lparchive.org"

# 3. Download from Wayback Machine (most reliable)
curl -sL "https://web.archive.org/web/2015*/http://gamefaqs.gamespot.com/*/faqs/*[query]*" \
  -H "User-Agent: Mozilla/5.0" \
  -o walkthroughs/[game-slug]/walkthrough.txt
```

## Instructions

### Step 1: Create Directory Structure

Always create a dedicated directory for each game's walkthroughs:

```bash
mkdir -p walkthroughs/[game-slug]
# Examples: kyrandia_1, simon1, monkey_island, kings_quest_vi
```

### Step 2: Search for Sources

Use `websearch` with specific keywords to find archived walkthrough URLs:

```bash
websearch query="\"[Exact Game Title]\" walkthrough OR site:lparchive.org -download"
# Include author names if known (e.g., "Vision Assembler", "Tricrokra")

# For older games, search archive.org CDX API:
curl -sL "https://web.archive.org/cdx/search/cdx?url=gamefaqs.gamespot.com/faqs/*[game-query]*&output=txt" | head -10
```

### Step 3: Prioritize Download Sources

**Tier 1 (Most Reliable):** Archive.org / Wayback Machine
- `lparchive.org` — Let's Play walks with screenshots+text
- Archived `gamefaqs.gamespot.com` pages
- `web.archive.org/web/YYYYMMDD/http://[original-url]`

**Tier 2 (Often Works):** Direct Fan Sites
- Personal walkthrough pages (`bonny.ploeg.ws`, `ladyofthecake.com`)
- `classicgamesparadise.com`
- Small adventure game fan sites

**Tier 3 (High Failure Risk):** Cloudflare-Protected Sites
- Modern `gamefaqs.gamespot.com` (returns captcha HTML)
- `strategywiki.org` (403 errors)
- `adventuregamers.com` (Cloudflare challenge)

**Fallback:** If Tier 1 fails, try archive.org CDX search for historical URLs.

### Step 4: Download with Fallbacks

```bash
# First attempt: direct download
curl -sL "[url]" -o "walkthroughs/[slug]/source1.html"

# If Cloudflare captcha detected in output, try Wayback:
if grep -q "Enable JavaScript and cookies to continue" walkthroughs/[slug]/source1.html; then
  # Search for archived version
  ARCHIVED_URL=$(curl -sL "https://web.archive.org/cdx/search/cdx?url=[original]&output=txt" | head -2 | tail -1)
  curl -sL "https://web.archive.org/web/[timestamp]/[url]" -o "walkthroughs/[slug]/source1.html"
fi

# Verify content: check for game-specific text, not just captcha page
grep -c "[Game Character Name]\|[Game Location]" walkthroughs/[slug]/source1.html
```

### Step 5: Handle Multi-Page Walkthroughs

Some sites split walkthroughs across multiple pages. Merge them:

```bash
# Example: classicgamesparadise.com often has parts 1-5
for part in 1 2 3 4 5; do
  curl -sL "http://classicgamesparadise.com/pc/[Game] Guide ${part}.html" \
    >> walkthroughs/[slug]/merged_walkthrough.html
done
```

### Step 6: Validate Downloads

After downloading, verify each file:

```bash
# Check line count (should be substantial)
wc -l walkthroughs/[slug]/*

# Check for game-specific keywords (not captcha pages)
for f in walkthroughs/[slug]/*.html; do
  if grep -q "Cloudflare\|captcha\|Enable JavaScript" "$f"; then echo "FAILED: $f"; fi
  if grep -qiE "[game-characters|locations]" "$f"; then echo "GOOD: $f ($(wc -l < "$f") lines)"; fi
done

# Remove failed downloads (captchas)
rm walkthroughs/[slug]/*captcha* 2>/dev/null || true
```

### Step 7: Target 3 Quality Sources

Download attempts until you have **at least 3 substantial, different sources**:

| Source Type | Expected Size | Content Quality |
|-------------|---------------|-----------------|
| Full walkthrough HTML | 10KB+ / 150+ lines | Excellent - complete solutions |
| LP Archive page | 15KB+ / 250+ lines | Good - narrative + screenshots refs |
| Fan guide (multi-part) | 30KB+ / 350+ lines | Excellent - often best coverage |

**Acceptable:** Any combination totaling 3 complete walkthroughs from different authors/sites.

## Examples

### Downloading Legend of Kyrandia Walkthroughs

```bash
# Setup
mkdir -p walkthroughs/kyrandia_1

# Search for sources
websearch query="\"Legend of Kyrandia Book One\" walkthrough OR solution -download"

# Direct download (fan sites often work)
curl -sL "http://bonny.ploeg.ws/lok.html" \
  -o walkthroughs/kyrandia_1/bonny_ploeg_walkthrough.html

curl -sL "http://classicgamesparadise.com/pc/Legend%20of%20Kyrandia%20Guide%.html" \
  -o walkthroughs/kyrandia_1/cgp_part1.html

# Merge multipart walkthrough
for part in 2 3 4 5; do
  curl -sL "http://classicgamesparadise.com/pc/Legend%20of%20Kyrandia%20Guide%20${part}.html" \
    >> walkthroughs/kyrandia_1/cgp_complete.html || true
done

# Archive.org fallback for Cloudflare sites
curl -sL "https://web.archive.org/web/2015*/http://lparchive.org/Legend-of-Kyrandia/" \
  | grep -o '/web/[0-9]*/[^"]*' | head -1 | xargs -I {} curl -sL "https://web.archive.org{}" \
  -o walkthroughs/kyrandia_1/lparchive_walkthrough.html

# Validation
ls -lh walkthroughs/kyrandia_1/
wc -l walkthroughs/kyrandia_1/*

# Cleanup captcha files
grep -l "Enable JavaScript and cookies" walkthroughs/kyrandia_1/*.html | xargs rm -f 2>/dev/null || true
```

### Downloading Simon the Sorcerer Walkthroughs

```bash
mkdir -p walkthroughs/simon1

# Wayback Machine search via curl
curl -sL "https://web.archive.org/cdx/search/cdx?url=gamefaqs.gamespot.com/faqs/*simon*&output=txt" \
  | grep -v "^$" | head -3

# Download archived versions
curl -sL "https://web.archive.org/web/2015/*/http://gamefaqs.gamespot.com/pc/*/simon-the-sorcerer/faqs/*" \
  -o walkthroughs/simon1/faq1.txt
```

## Guidelines

### Naming Conventions
- Directory: `[game]_[number]` (e.g., `kyrandia_1`, `simon1`)
- Files: `[source_name]_walkthrough.[ext]`
- Extensions: `.html` for HTML, `.txt` for plain text

### Content Quality Checks

**Valid walkthrough contains:**
- ✓ Character names from the game
- ✓ Location/room descriptions
- ✓ Solution steps or hints
- ✓ 100+ lines of text (substantial content)

**Invalid download (delete):**
- ✗ Cloudflare captcha page (<200 lines, contains "Enable JavaScript")
- ✗ 404 pages ("Not Found")
- ✗ Redirect loops (>5KB but no game content)

### When Sources Are Scarce

If you can only find 1-2 sources after extensive searching:
1. Try alternate game titles (`"The Legend of Kyrandia"` vs `"Fables and Fiends: Book One"`)
2. Search for author-specific walkthroughs (`"Vision Assembler kyrandia"`)
3. Check forum threads that may contain embedded walkthroughs
4. Accept fewer sources with a note

### Tools Used

| Tool | Purpose |
|------|---------|
| `websearch` | Find walkthrough URLs and author names |
| `curl -sL` | Download files (follow redirects) |
| `wc -l` | Verify file size/line count |
| `grep` | Validate content quality, detect captchas |
| `bash loops` | Multi-part downloads |

## Success Criteria

Mission complete when you have:
1. ✓ Created dedicated directory (`walkthroughs/[game-slug]/`)
2. ✓ Downloaded 3+ walkthrough files from different sources
3. ✓ All files contain substantive content (150+ lines, game keywords)
4. ✓ No captcha/404 pages in final collection
5. ✓ Files properly named and listed with sizes
