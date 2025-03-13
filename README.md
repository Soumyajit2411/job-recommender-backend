# AI-Powered Job Recommendation System

## 📌 Overview
The **AI-Powered Job Recommendation System** helps users upload their resumes and get AI-driven job recommendations based on their profiles. The system fetches job postings from various platforms via APIs and matches them against the user's resume using AI-powered scoring algorithms.

## 🚀 Features
- 📂 **Resume Upload**: Users can upload resumes and store them securely.
- 🤖 **AI-Powered Matching**: Matches job descriptions with resumes using AI-based recommendation algorithms.
- 🔍 **Job Fetching**: Fetches job postings from multiple sources using exposed APIs.
- 📊 **Job Scoring**: Provides match scores to indicate job relevance.
- 📡 **GraphQL API**: Uses Hasura for an optimized and scalable backend.
- 🗂️ **PostgreSQL Database**: Efficient data management and storage.
- 🎨 **Simple UI**: Allows users to upload resumes and receive job recommendations.

---

## 🛠️ Tech Stack
- **Backend**: Node.js, GraphQL (Hasura), PostgreSQL
- **Frontend**: React.js
- **AI Integration**: OpenAI API
- **File Storage**: Free storage solutions
- **Job Data Source**: RapidAPI for job postings
- **Deployment**: Docker, Vercel/Heroku for hosting

---

## 📦 Installation
### Prerequisites
- Node.js (v16+)
- PostgreSQL
- Hasura CLI
- Docker

### 1️⃣ Clone the Repository
```sh
 [git clone https://github.com/yourusername/ai-job-recommendation.git](https://github.com/Soumyajit2411/job-recommender-backend.git)
 cd job-recommender-backend
```

### 2️⃣ Install Dependencies
```sh
yarn install
```

### 3️⃣ Set Up Environment Variables
Create a `.env` file and configure the following variables:
```env
HASURA_GRAPHQL_ENDPOINT=<Your_Hasura_Endpoint>
DATABASE_URL=<Your_PostgreSQL_URL>
OPENAI_API_KEY=<Your_OpenAI_API_Key>
RAPID_API_KEY=<Your_RapidAPI_Key>
```

### 4️⃣ Start Hasura & PostgreSQL (Using Docker)
```sh
docker-compose up -d
```

### 5️⃣ Start the Backend
```sh
yarn dev
```
---

## 🏗️ Contributing
We welcome contributions! To contribute:
1. Fork the repository.
2. Create a new branch (`feature-xyz`).
3. Commit changes.
4. Push the branch and open a PR.

---

## 📜 License
This project is open-source and available under the **MIT License**.

---

## 📞 Contact
For issues and support, feel free to reach out via **GitHub Issues** or email at `soumyajitroy2411@gmail.com`.

