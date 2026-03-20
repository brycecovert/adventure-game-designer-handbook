# TODO List

## Current Task: Switch from embedded mermaid to rendered images

- [x] Render mermaid diagram to images
  - [x] Install mermaid CLI (if not present)
  - [x] Extract mermaid code from kings-quest-vi-heir-today-gone-tomorrow.md
  - [x] Render preview and full-size images
- [x] Update markdown to embed images
  - [x] Replace mermaid block with image embed
  - [x] Add link to full-size image
- [x] Clean up broken JS
  - [x] Remove mermaid-lightbox.js from book.toml additional-js
  - [x] Delete mermaid-lightbox.js file
  - [x] Restore mermaid-init.js if modified (not modified, keep it)
- [x] Test with mdbook build
- [ ] Commit changes
