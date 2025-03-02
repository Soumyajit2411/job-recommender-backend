import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import jobRoutes from "./routes/jobRoutes";
import resumeRoutes from "./routes/resumeRoutes";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.use("/api/jobs", jobRoutes);
app.use("/api/resumes", resumeRoutes);

app
  .listen(PORT, () => {
    console.info(`✅ Server is running at http://localhost:${PORT}`);
  })
  .on("error", (err) => {
    console.error("❌ Server failed to start:", err);
  });
