# SmartEats – Docker Setup

This project runs in containers using **Docker Compose**, with:
- A **Node.js app container** (App)
- A **MongoDB container** (database)
- An optional **seeding job** to import sample data

---

## 📦 Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Clone this repository locally

---

## 🔑 Environment Variables

Your `.env` file defines runtime values. Example:

```
PORT=5001
MONGO_URI=mongodb://mongo:27017/smarteats
JWT_SECRET=changeme
OPENAI_API_KEY= <Your secret key - get it from https://auth.openai.com/log-in >
```

⚠️ **Important:** Inside containers, use `mongo` as the hostname (not `localhost`).

---

## 🚀 Running the Project

### 1. Build and start services

```bash
docker compose up --build -d
```

This will:
- Build the Node.js image using the `Dockerfile`
- Start MongoDB (`mongo` service)
- Start the Node.js app (`app` service)
- Seed MealPlans data to Database

The app will be available at:  
👉 http://localhost:5001

---

## 🛑 Stopping the Project

```bash
docker compose down
```

To remove volumes (⚠️ deletes all DB data):

```bash
docker compose down -v
```

---