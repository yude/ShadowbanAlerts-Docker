import os

# 通知対象の Twitter アカウントのスクリーンネームネーム（複数指定可）
SCREEN_NAMES = os.getenv("SCREEN_NAMES", "@yousuck2020,@kskgroup2017").split(",")

# メンション先の Discord アカウントの ID
# ID は Discord の設定から開発者モードを有効化し、自分のユーザーアイコンを右クリックで出てくる [IDをコピー] から取得できる
# MENTION_TO = None に設定するとメンションされない
MENTION_TO = os.getenv("MENTION_TO", None)

# Discord の Webhook URL
WEBHOOK_URL = os.getenv("WEBHOOK_URL")
