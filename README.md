# 🚀 Result Analyzer

A modern **Ruby on Rails 7.2** application that analyzes daily results and generates monthly statistics automatically.

🔗 **Live Demo:** https://resultanalyser-production-df59.up.railway.app/

---
<img width="1920" height="1046" alt="image" src="https://github.com/user-attachments/assets/35b30d1b-9724-48d2-a999-5f13b0d8d13a" />

## ✨ Features

- 📊 Track daily statistics
- 📈 Generate monthly aggregated reports
- ⚙️ Background job processing (ActiveJob)
- 🚀 Optimized PostgreSQL queries
- 🖥️ Simple dashboard UI
- 🔄 Manual trigger for monthly job

---

## 🛠️ Tech Stack

| Technology | Version |
|-----------|--------|
| Ruby | 3.2.9 |
| Rails | 7.2.3 |
| Database | PostgreSQL |
| Jobs | ActiveJob |
| Deployment | Railway |

---

## ⚙️ Setup Instructions

### 🔧 Prerequisites

- Ruby 3.2.9
- Rails 7.2.3
- PostgreSQL
- Bundler

---

### 📦 Installation

```bash
git clone https://github.com/Ayushkumarsinghyogesh/Result_analyser.git
cd result_analyser
bundle install

🗄️ Database Setup
rails db:create
rails db:migrate


