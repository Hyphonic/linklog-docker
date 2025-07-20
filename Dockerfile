# Use Bun's official image
FROM oven/bun:latest

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN bun install

# Make sure .data exists
RUN mkdir -p .data

# Expose the port
EXPOSE 3000

# Start the app
CMD ["bun", "dev"]
