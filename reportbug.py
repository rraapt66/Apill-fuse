import requests,json

def send_message(): #ฟังชั่นส่งข้อความไปทาง webhook

    webhook_url = "https://discord.com/api/webhooks/1181283255018864821/BX7KseLsgA1pLRAXPW-7qASo-XSrEC0RKe96Me-xVu7ijwMCNFyIR05uSVXtGDjVmyCO" #ใส่ link webhook ที่จะให้ส่งไป
    message_content = input("Message: ")

    payload = {
        "content": message_content
    }

    headers = {
        "Content-Type": "application/json"
    }

    response = requests.post(webhook_url, data=json.dumps(payload), headers=headers)

    if response.status_code == 204:
        print("")
    else:
        print("")

send_message()