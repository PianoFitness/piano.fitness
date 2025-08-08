# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- `npm run dev` - Start development server (localhost:4321)
- `npm run build` - Build production site to ./dist/
- `npm run preview` - Preview production build locally
- `npm run astro` - Run Astro CLI commands
- `npx npm-check-updates -u && npm install` - Update all dependencies

## Project Architecture

This is an Astro-based static site for Piano Fitness, a piano technique training application. The site serves as a landing page and information hub for the main Flutter app.

### Technology Stack
- **Framework**: Astro 5.x with TypeScript support
- **Styling**: Tailwind CSS 4.x with DaisyUI component library
- **Deployment**: GitHub Pages via GitHub Actions
- **Base URL**: Configured for piano.fitness domain

### Key Architecture Patterns

**Component Structure**: 
- `src/layouts/` - Page layouts (Layout.astro, MarkdownLayout.astro)
- `src/components/` - Reusable components (Navigation, Footer, Prose)
- `src/pages/` - Route-based pages (index.astro, markdown pages)

**Styling System**:
- Custom brand color palette defined in tailwind.config.js
- DaisyUI theme called "pianoFitness" with brand colors
- Typography plugin for markdown content
- Global CSS imports Tailwind and plugins

**SEO & Meta Tags**:
- Layout.astro handles comprehensive meta tags including Open Graph and Twitter cards
- Dynamic canonical URLs and social media images
- Extensive favicon and app icon configuration

### Brand Design System

Colors (defined in tailwind.config.js):
- Primary: #2B6DA3 (blue)
- Secondary: #A8CCED (light blue) 
- Accent: #2A9D8F (green)
- Neutral: #293241 (dark gray)

Typography:
- Body: Open Sans
- Headings: Montserrat

### Content Strategy

The site focuses on:
- Piano Fitness as a technical development supplement to traditional lessons
- Interactive MIDI-based practice tools
- Visual learning approach for students who struggle with sheet music
- Developer preview status with GitHub collaboration

### Deployment

- Automatic deployment via GitHub Actions on main branch pushes
- Uses Node.js 20 and npm ci for reproducible builds
- Deploys to GitHub Pages with proper artifact handling