# nippofin.com

Personal website of Nippotica. Built with Jekyll on the al-folio theme.
Deployed to [nippofin.com](https://nippofin.com) via GitHub Actions.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Site runs at `http://localhost:4000`. Requires Ruby ≥ 3.1 and Bundler.

## Structure

```
_config.yml    # site settings, social links, theme variables
_pages/        # static pages (about, projects, contact)
_posts/        # blog / notes
_projects/     # project cards
assets/        # images, PDFs
```

## Deployment

Auto-deploys on push to `main` via `.github/workflows/deploy.yml`.

## License

Content © Nippotica. Theme: al-folio (MIT).
