import os

# 通知対象の Twitter アカウントのスクリーンネームネーム（複数指定可）
SCREEN_NAMES = os.getenv("SCREEN_NAMES", "@yousuck2020,@kskgroup2017").split(",")

# Discord の Webhook URL
WEBHOOK_URL = os.getenv("WEBHOOK_URL")