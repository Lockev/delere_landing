import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import image from "@astrojs/image";
import compress from "astro-compress";
import partytown from "@astrojs/partytown";
import sitemap from "@astrojs/sitemap";

export default defineConfig({
  site: "https://delere.email",
  integrations: [tailwind(), image(), compress(), partytown({}), sitemap()],
  server: {
    port: 8000,
  },
});
