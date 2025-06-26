m = Map("telegram_bot", "Telegram Bot Configuration", "Configure your Telegram Bot for OpenWRT.")

s = m:section(TypedSection, "config", "Bot Settings")
s.addremove = false
s.anonymous = true

-- Token Bot
token = s:option(Value, "token", "Bot Token")
token.datatype = "string"
token.placeholder = "Masukkan token bot Anda"

-- Chat ID
chat_id = s:option(Value, "chat_id", "Chat ID")
chat_id.datatype = "string"
chat_id.placeholder = "Masukkan Chat ID Anda"

-- Kode Unik Router
router_id = s:option(Value, "router_id", "Router ID")
router_id.datatype = "string"
router_id.placeholder = "Masukkan kode unik router (misalnya, Router1)"

-- Tombol Simpan & Terapkan
button = s:option(Button, "_button", "Simpan & Terapkan")
button.inputtitle = "Simpan"
button.inputstyle = "apply"

function button.write(self, section, value)
    m:apply()
    luci.http.redirect(luci.dispatcher.build_url("admin/services/telegram_bot"))
end

return m
