// tailwind.config.js
/** @type {import('tailwindcss').Config} */
export default {
    content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
    theme: {
      extend: {
        colors: {
          // Brand colors from guidelines
          primary: '#2B6DA3',    // Primary Blue
          secondary: '#A8CCED',  // Secondary Blue
          accent: '#2A9D8F',     // Accent Green
          neutral: '#293241',    // Rich Black
          'base-100': '#FFFFFF', // White
          'base-200': '#E0E0E0', // Light Gray
          'base-300': '#d1d5db', // Slightly darker gray
          success: '#2A9D8F',    // Accent Green
          warning: '#E9C46A',    // Warm Gold
          error: '#E63946',      // Error Red (not in brand guidelines but useful)
        },
        fontFamily: {
          sans: ['Open Sans', 'sans-serif'],
          heading: ['Montserrat', 'sans-serif'],
        },
      },
    },
    plugins: [require('daisyui')],
    daisyui: {
      themes: [
        {
          pianoFitness: {
            primary: '#2B6DA3',
            secondary: '#A8CCED',
            accent: '#2A9D8F',
            neutral: '#293241',
            'base-100': '#FFFFFF',
            'base-200': '#E0E0E0',
            'base-300': '#d1d5db',
            info: '#2B6DA3',
            success: '#2A9D8F',
            warning: '#E9C46A',
            error: '#E63946',
          },
        },
      ],
      darkTheme: false,
    },
  }
  