CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
    email TEXT UNIQUE NOT NULL, 
    full_name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE resumes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    resume_url TEXT NOT NULL,
    uploaded_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE job_recommendations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    resume_id UUID NOT NULL,
    user_id UUID NOT NULL,
    job_title TEXT NOT NULL,
    company_name TEXT NOT NULL,
    job_url TEXT NOT NULL, 
    recommendation_score FLOAT NOT NULL, 
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_resume FOREIGN KEY (resume_id) REFERENCES resumes(id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_resumes_user_id ON resumes(user_id);
CREATE INDEX idx_job_recommendations_user_id ON job_recommendations(user_id);
CREATE INDEX idx_job_recommendations_resume_id ON job_recommendations(resume_id);
