# How to run

## 1. Build the Docker image:

   ```bash
   docker build -t custom-github-mcp-server .
   ```

## 2. Get your GitHub Personal Access Token (PAT) with the necessary scopes.

1. Go to your GitHub account settings.
2. Navigate to `Developer settings` > `Personal access tokens` > `Tokens (classic)`.
3. Click on "Generate new token" and select the scopes you need.
4. Copy the generated token.

- **Note**: 
  - Please ensure that you keep your token secure and do not expose it in public repositories or logs.
  - Set the expiration date according to your security needs.

## 3. Add the server to your favorite IDE MCP configuration:

- For example in VSCode, add the following to your `mcp.json`:

```json
{
	"servers": {
		"github": {
			"command": "docker",
			"args": [
				"run",
				"-i",
				"--rm",
				"-e",
				"GITHUB_PERSONAL_ACCESS_TOKEN",
				"custom-github-mcp-server"
			],
			"env": {
				"GITHUB_PERSONAL_ACCESS_TOKEN": "${input:github_token}"
			},
			"type": "stdio"
		}
	},
	"inputs": [
		{
			"type": "promptString",
			"id": "github_token",
			"description": "GitHub Personal Access Token",
			"password": true
		}
	]
}

