// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';
import { remarkReadingTime } from './remark-reading-time.mjs';

// https://astro.build/config
export default defineConfig({
  site: 'https://piano.fitness',
  base: '/',
  markdown: {
    remarkPlugins: [remarkReadingTime],
  },
  vite: {
    plugins: [tailwindcss()]
  }
});