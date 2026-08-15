import type { CollectionEntry } from "astro:content";

export function isPublishedArticle(
  article: CollectionEntry<"articles">,
) {
  return !article.data.draft && article.data.publishDate <= new Date();
}
