# MailerLite Bash Integration

Just because!

## Getting Started

Create a new `config.sh` file containing the API version URL and API key.

```bash
#!/usr/bin/env bash

# Store config secrets like API key and URI.
export mlite_api_uri="http://api.mailerlite.com/api/v2/";
export mlite_api_key="bla_key_stuff";
```

## Authentication

Run `./mlite-account` to verify your API key.

## Groups

### Query Group(s)

```bash
./mlite-group --get
./mlite-group --get --id 12345
```

### Create Group

```bash
./mlite-group --new --name "A bunch of folks who signed up from the website."
```

### Update Group Name

```bash
./mlite-group --update --name "Website newsletter signups"
```

### Delete Group

```bash
./mlite-group --group --id 12345
```

## Campaigns

### Get Campaigns By Status

```bash
./mlite-campaign --get --status sent
```

### Create Campaign

```bash
./mlite-campaign --new --name "March Newsletter"
```

### Create Campaign Email

```bash
./mlite-campaign --email < "My HTML text here"
```

### Send Campaign Email

```bash
./mlite-campaign --action send
