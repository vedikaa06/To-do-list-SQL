# 📝 To-Do List SQL Project

This project is a simple **SQL-based To-Do List** application.  
It demonstrates how to create a database, manage tasks, and perform basic SQL operations like **INSERT, UPDATE, and SELECT** queries.

---

## 📂 Project Structure

- **Database:** `TodoDB`  
- **Table:** `Tasks`  
- **Columns:**  
  - `task_id` (Primary Key, Auto Increment)  
  - `task_name` (Task description)  
  - `due_date` (Deadline for task)  
  - `status` (Pending / In Progress / Completed)  

---

## ⚙️ Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/todolist-sql.git
   cd todolist-sql
    ```
2. Open MySQL and run the SQL script:
    ```bash
    SOURCE todolist.sql;
    ```
3. Use the database:
    ```bash
    USE TodoDB;
    ```
    
---

## 📊 Features

- Create a Tasks table to manage to-do items.
- Insert sample tasks with different statuses.
- Update the status of tasks (e.g., Pending → Completed).
- Query tasks based on status and due date.

---

## 💻 Example Queries
1. Show all pending tasks
    ```bash
    SELECT * FROM Tasks WHERE status = 'Pending';
    ```

2. Update a task status
    ```bash
    UPDATE Tasks SET status = 'Completed' WHERE task_id = 1;
    ```

3. Show tasks due this week
    ```bash
    SELECT * FROM Tasks WHERE due_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
    ```

---

## 📌 Sample Data Inserted
  ```bash
INSERT INTO Tasks (task_name, due_date, status) VALUES
('Finish SQL Project', '2025-10-05', 'Pending'),
('Prepare for Exam', '2025-10-10', 'In Progress'),
('Buy Groceries', '2025-10-02', 'Completed');
```

---

## 🚀 Future Improvements

- Add priority levels (High, Medium, Low).
- Implement user authentication for multiple users.
- Build a frontend (React/Angular) with backend (Node.js/Express).

---

## 🏆 Author

Developed by Vedika Agarwal
📧 Contact: vedikaa006@gmail.com
