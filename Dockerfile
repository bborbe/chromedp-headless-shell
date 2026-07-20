FROM chromedp/headless-shell:stable

COPY run.sh /headless-shell/
RUN chmod +x /headless-shell/run.sh

EXPOSE 9222

CMD ["/headless-shell/run.sh"]
