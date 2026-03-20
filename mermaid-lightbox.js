// Mermaid Lightbox - Click to expand diagrams in full-size modal
(() => {
    const lightboxHTML = `
    <div id="mermaid-lightbox" class="mermaid-lightbox" aria-hidden="true">
        <div class="mermaid-lightbox-content">
            <button class="mermaid-lightbox-close" aria-label="Close">&times;</button>
            <div class="mermaid-lightbox-diagram"></div>
        </div>
    </div>
    `;

    const styleHTML = `
    <style>
    .mermaid-container {
        position: relative;
        margin: 1.5em 0;
    }

    .mermaid-expand-btn {
        position: absolute;
        top: 8px;
        right: 8px;
        z-index: 10;
        background: rgba(0, 0, 0, 0.6);
        color: white;
        border: none;
        border-radius: 4px;
        padding: 6px 12px;
        font-size: 12px;
        cursor: pointer;
        opacity: 0;
        transition: opacity 0.2s ease;
    }

    .mermaid-container:hover .mermaid-expand-btn {
        opacity: 1;
    }

    .mermaid-expand-btn:hover {
        background: rgba(0, 0, 0, 0.8);
    }

    .mermaid-lightbox {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.9);
        z-index: 9999;
        justify-content: center;
        align-items: center;
        padding: 20px;
        box-sizing: border-box;
    }

    .mermaid-lightbox.active {
        display: flex;
    }

    .mermaid-lightbox-content {
        position: relative;
        max-width: 95vw;
        max-height: 95vh;
        overflow: auto;
        background: white;
        border-radius: 8px;
    }

    .mermaid-lightbox-close {
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 10001;
        background: rgba(0, 0, 0, 0.7);
        color: white;
        border: none;
        border-radius: 50%;
        width: 36px;
        height: 36px;
        font-size: 24px;
        cursor: pointer;
        line-height: 1;
    }

    .mermaid-lightbox-close:hover {
        background: rgba(0, 0, 0, 0.9);
    }

    .mermaid-lightbox-diagram {
        padding: 20px;
    }

    .mermaid-lightbox-diagram svg {
        max-width: 100%;
        height: auto;
    }

    .mermaid-lightbox-diagram .mermaid {
        background: white;
    }
    </style>
    `;

    // Inject styles
    document.head.insertAdjacentHTML('beforeend', styleHTML);

    // Inject lightbox HTML
    document.body.insertAdjacentHTML('beforeend', lightboxHTML);

    const lightbox = document.getElementById('mermaid-lightbox');
    const lightboxDiagram = lightbox.querySelector('.mermaid-lightbox-diagram');
    const closeBtn = lightbox.querySelector('.mermaid-lightbox-close');

    // Wait for mermaid to initialize, then wrap each mermaid diagram
    function initLightbox() {
        const mermaidPres = document.querySelectorAll('pre.mermaid');

        mermaidPres.forEach((pre) => {
            // Only add container and button if not already wrapped
            if (pre.parentElement.classList.contains('mermaid-container')) return;

            // Wrap pre in container
            const container = document.createElement('div');
            container.className = 'mermaid-container';
            pre.parentNode.insertBefore(container, pre);
            container.appendChild(pre);

            // Add expand button
            const btn = document.createElement('button');
            btn.className = 'mermaid-expand-btn';
            btn.textContent = 'View Full Size';
            btn.setAttribute('aria-label', 'Expand diagram to full size');
            container.appendChild(btn);

            // Click handler for expanding
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                openLightbox(pre);
            });

            // Also make the pre element clickable
            pre.style.cursor = 'pointer';
            pre.addEventListener('click', (e) => {
                e.stopPropagation();
                openLightbox(pre);
            });
        });
    }

    function openLightbox(pre) {
        // Clone the mermaid content for the lightbox
        lightboxDiagram.innerHTML = '';
        const clone = pre.cloneNode(true);
        clone.className = 'mermaid';
        lightboxDiagram.appendChild(clone);

        lightbox.setAttribute('aria-hidden', 'false');
        document.body.style.overflow = 'hidden';

        // Re-render mermaid in lightbox if needed
        if (typeof mermaid !== 'undefined') {
            mermaid.init({ node: clone.parentElement }, clone);
        }
    }

    function closeLightbox() {
        lightbox.setAttribute('aria-hidden', 'true');
        document.body.style.overflow = '';
        lightboxDiagram.innerHTML = '';
    }

    // Event listeners
    closeBtn.addEventListener('click', closeLightbox);

    lightbox.addEventListener('click', (e) => {
        if (e.target === lightbox) {
            closeLightbox();
        }
    });

    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && lightbox.classList.contains('active')) {
            closeLightbox();
        }
    });

    // Initialize after DOM is ready
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initLightbox);
    } else {
        // Small delay to ensure mermaid.init() has run
        setTimeout(initLightbox, 100);
    }
})();
