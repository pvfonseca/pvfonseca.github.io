# pvfonseca.github.io

Personal academic website, built with Hugo (Wowchemy Academic theme) and deployed automatically to GitHub Pages via GitHub Actions on every push to `main`.

## Local development

**Prerequisites:** [Go](https://go.dev/dl/) (needed to fetch the theme via Hugo Modules). Hugo itself does **not** need to be installed manually.

This site pins **Hugo Extended 0.108.0**. Newer Hugo releases removed template functions (`getCSV`) that the theme still uses, so builds break with a newer/`latest` Hugo — always use the pinned version below rather than whatever Hugo you may already have installed.

Run the site locally with the wrapper script for your OS — it downloads the pinned Hugo binary into `.hugo-bin/` (gitignored) the first time you run it, then just runs it on every call after that:

```powershell
# Windows
.\scripts\hugo.ps1 server
```

```bash
# macOS / Linux
./scripts/hugo.sh server
```

Then open <http://localhost:1313/>. Build the production output the same way: `.\scripts\hugo.ps1 --minify` (or `./scripts/hugo.sh --minify`).

If the pinned version ever needs to change, update it in three places together: `scripts/hugo.ps1`, `scripts/hugo.sh`, `netlify.toml` (`HUGO_VERSION`), and `.github/workflows/gh-pages.yml` (`hugo-version`) — and confirm the build still succeeds before pushing.

---

# [Hugo Academic Theme](https://github.com/wowchemy/starter-hugo-academic)

[![Screenshot](./preview.png)](https://wowchemy.com/hugo-themes/)

The Hugo **Academic Resumé Template** empowers you to easily create your job-winning online resumé, showcase your academic publications, and create online courses or knowledge bases to grow your audience.

[![Get Started](https://img.shields.io/badge/-Get%20started-ff4655?style=for-the-badge)](https://wowchemy.com/hugo-themes/)
[![Discord](https://img.shields.io/discord/722225264733716590?style=for-the-badge)](https://discord.com/channels/722225264733716590/742892432458252370/742895548159492138)  
[![Twitter Follow](https://img.shields.io/twitter/follow/wowchemy?label=Follow%20on%20Twitter)](https://twitter.com/wowchemy)

️**Trusted by 250,000+ researchers, educators, and students.** Highly customizable via the integrated **no-code, widget-based Wowchemy page builder**, making every site truly personalized ⭐⭐⭐⭐⭐

Easily write technical content with plain text Markdown, LaTeX math, diagrams, RMarkdown, or Jupyter, and import publications from BibTeX.

[Check out the latest demo](https://academic-demo.netlify.app/) of what you'll get in less than 10 minutes, or [get inspired by our academics and research groups](https://wowchemy.com/creators/).

The integrated [**Wowchemy**](https://wowchemy.com) website builder and CMS makes it easy to create a beautiful website for free. Edit your site in the CMS (or your favorite editor), generate it with [Hugo](https://github.com/gohugoio/hugo), and deploy with GitHub or Netlify. Customize anything on your site with widgets, light/dark themes, and language packs.

- 👉 [**Get Started**](https://wowchemy.com/hugo-themes/)
- 📚 [View the **documentation**](https://wowchemy.com/docs/)
- 💬 [Chat with the **Wowchemy research community**](https://discord.gg/z8wNYzb) or [**Hugo community**](https://discourse.gohugo.io)
- 🐦 Twitter: [@wowchemy](https://twitter.com/wowchemy) [@GeorgeCushen](https://twitter.com/GeorgeCushen) [#MadeWithWowchemy](https://twitter.com/search?q=%23MadeWithWowchemy&src=typed_query)
- ⬇️ **Automatically import your publications from BibTeX** with the [Hugo Academic CLI](https://github.com/wowchemy/hugo-academic-cli)
- 💡 [Suggest an improvement](https://github.com/wowchemy/wowchemy-hugo-themes/issues)
- ⬆️ **Updating?** View the [Update Guide](https://wowchemy.com/docs/hugo-tutorials/update/) and [Release Notes](https://github.com/wowchemy/wowchemy-hugo-themes/releases)

## We ask you, humbly, to support this open source movement

Today we ask you to defend the open source independence of the Wowchemy website builder and themes 🐧

We're an open source movement that depends on your support to stay online and thriving, but 99.9% of our creators don't give; they simply look the other way.

### [❤️ Click here to become a GitHub Sponsor, unlocking awesome perks such as _exclusive academic templates and widgets_](https://github.com/sponsors/gcushen)

<p align="center"><a href="https://wowchemy.com/templates/" target="_blank" rel="noopener"><img src="https://wowchemy.com/uploads/readmes/academic_logo_200px.png" alt="Hugo Academic Theme for Wowchemy Website Builder"></a></p>

## Demo image credits

- [Open book](https://unsplash.com/photos/J4kK8b9Fgj8)
- [Course](https://unsplash.com/photos/JKUTrJ4vK00)

## Latest news

<!--START_SECTION:news-->
* [Easily make an academic CV website to get more cites and grow your audience 🚀](https:&#x2F;&#x2F;wowchemy.com&#x2F;blog&#x2F;easily-make-academic-website&#x2F;)
* [What&#39;s new in v5.2?](https:&#x2F;&#x2F;wowchemy.com&#x2F;blog&#x2F;whats-new-in-v5.2&#x2F;)
* [What&#39;s new in v5.1?](https:&#x2F;&#x2F;wowchemy.com&#x2F;blog&#x2F;whats-new-in-v5.1&#x2F;)
* [Version 5.0 (February 2021)](https:&#x2F;&#x2F;wowchemy.com&#x2F;blog&#x2F;version-5.0-february-2021&#x2F;)
* [Version 5.0 Beta 3 (February 2021)](https:&#x2F;&#x2F;wowchemy.com&#x2F;blog&#x2F;version-5.0-beta-3-february-2021&#x2F;)
<!--END_SECTION:news-->
