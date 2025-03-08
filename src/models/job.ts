export interface Job {
  id: string;
  resume_id: string;
  job_title: string;
  company_name: string;
  job_url: string;
  recommendation_score: number;
  created_at?: Date;
}
