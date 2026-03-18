import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Puzzle Design KB',
  description: 'A handbook documenting puzzle design patterns from classic point-and-click adventure games',
  lastUpdated: true,
  cleanUrls: true,
  
  themeConfig: {
    nav: [
      { text: 'Index', link: '/' },
    ],
    
    sidebar: [
      {
        text: 'Puzzle Types',
        items: [
          { text: 'Cross-Realm Logistics', link: '/puzzles/cross-realm-logistics' },
          { text: 'Distraction Physics', link: '/puzzles/distraction-physics' },
          { text: 'Environmental Storytelling', link: '/puzzles/environmental-storytelling' },
          { text: 'Information Brokerage', link: '/puzzles/information-brokerage' },
          { text: 'Memo Chain', link: '/puzzles/memo-chain' },
          { text: 'Metaphor-to-Literal', link: '/puzzles/metaphor-literal' },
          { text: 'Meta-Puzzle Construction', link: '/puzzles/meta-puzzle-construction' },
          { text: 'Multi-Faceted Plan', link: '/puzzles/multi-faceted-plan' },
          { text: 'Observation Replay', link: '/puzzles/observation-replay' },
          { text: 'Pattern Learning', link: '/puzzles/pattern-learning' },
          { text: 'Sensory Exploitation', link: '/puzzles/sensory-exploitation' },
          { text: 'Timed Consequence', link: '/puzzles/timed-consequence' },
          { text: 'Truth Revelation', link: '/puzzles/truth-revelation' },
        ],
      },
    ],
  },
})
