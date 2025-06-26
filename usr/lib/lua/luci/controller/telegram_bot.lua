module("luci.controller.telegram_bot", package.seeall)

function index()
    entry({"admin", "services", "telegram_bot"}, cbi("telegram_bot"), _("Telegram Bot"), 90)
end
