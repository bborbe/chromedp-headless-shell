# chromedp-headless-shell

The upstream `chromedp/headless-shell` image with a small `run.sh` that exposes the
Chrome DevTools Protocol endpoint on `:9222` (via a `socat` fork proxy to the internal
`:9223`). Lighter-weight companion to `chromium-browser` for headless scraping.

Publish-only: `docker.io/bborbe/chromedp-headless-shell:vX.Y.Z`.

## Usage

```bash
docker run -ti -p 9222:9222 bborbe/chromedp-headless-shell:latest
```
