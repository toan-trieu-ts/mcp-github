# Start from the original server image you are using
FROM ghcr.io/github/github-mcp-server

# Copy your custom certificate into the system's certificate directory.
# Distroless images are configured to automatically trust certificates placed here.
COPY certificate.pem /etc/ssl/certs/custom-ca.pem