
curl -I https://example.com
curl -I https://example.com/такой-страницы-нет
curl -s https://example.com | GREP_COLORS='mt=01;32' grep --color=auto -i "title"
