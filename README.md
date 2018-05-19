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

## Documentation

### Library scripts and functions

* Stuff here...

### Authentication

Run `./mlite-auth` to verify your API key.

### Create Campaign

```bash
./mlite-campaign --new
```

### Create Campaign Email

```bash
./mlite-campaign --email < "My HTML text here"
```

### Send Campaign Email

```bash
./mlite-campaign --action send
