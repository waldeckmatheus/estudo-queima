FROM pandoc/extra:latest

# Chromium + Node.js para mermaid-cli (mmdc)
RUN apk add --no-cache nodejs npm chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/bin/chromium-browser

RUN npm install -g @mermaid-js/mermaid-cli
