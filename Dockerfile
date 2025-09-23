# ---- Runtime image ----
FROM node:20-alpine

# Create app dir
WORKDIR /app

# Install only prod deps (use lockfile if present)
COPY package*.json ./
RUN if [ -f package-lock.json ]; then npm ci --omit=dev; else npm install --omit=dev; fi

# Copy source
COPY . .

# Default envs (override via docker-compose)
# ENV NODE_ENV=production
# Your app reads PORT and MONGO_URI from env (.env via compose)
# EXPOSE is just documentation
EXPOSE 5001

# Start the server
CMD ["node", "backend/server.js"]