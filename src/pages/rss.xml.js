import rss from '@astrojs/rss';
import { getCollection } from 'astro:content';

export async function GET(context) {
  const articles = await getCollection('articles');

  return rss({
    title: 'Piano Fitness - Articles',
    description: 'Piano technique articles and practice tips from Piano Fitness',
    site: context.site,
    stylesheet: '/rss-style.xsl',
    items: articles
      .sort((a, b) => new Date(b.data.publishDate) - new Date(a.data.publishDate))
      .map((article) => ({
        title: article.data.title,
        description: article.data.description,
        pubDate: article.data.publishDate,
        author: article.data.author,
        link: `/articles/${article.slug}/`,
      })),
    customData: `<language>en-us</language>`,
  });
}