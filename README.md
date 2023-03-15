## Slack Notification API
Single endpoint API that posts a message to a slack channel given a Slack Webhook

## How to run locally?
1. Clone repository
2. `cd` into the project and run `bundle install` command to install dependencies
3. Open your credentials `production.key` file and put your Slack Incoming Webhook like this:

```yml
slack: [your-slack-webhook]
```

4. Run `bin/rails server` to kickstart the server in `localhost:3000`
5. Use Postman — _or any other API platform_ to make a POST request to the endpoint `/slack/create` with the following payload:

```json
{
  "RecordType": "Bounce",
  "Type": "SpamNotification",
  "TypeCode": 512,
  "Name": "Spam notification",
  "Tag": "",
  "MessageStream": "outbound",
  "Description": "The message was delivered, but was either blocked by the user, or classified as spam, bulk mail, or had rejected content.",
  "Email": "zaphod@example.com",
  "From": "notifications@honeybadger.io",
  "BouncedAt": "2023-02-27T21:41:30Z"
}
```
6. Send your POST request and get your Slack notification :)

