# Gym Tracker

A simple web application built with Python, Flask, and SQLAlchemy to track your gym workouts, exercises, and performance.

## Features
- **Workout Sessions:** Log the dates and duration of your workouts.
- **Exercise Management:** Add custom exercises grouped by categories (e.g., Strength, Endurance).
- **Performance Logging:** Track the specific sets, reps, and weights lifted for each exercise in a workout.
- **Reporting:** View summaries and statistics of your past workouts filtered by date range or specific exercises.

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Aakarsh102/GYM-TRACKER348.git
   cd GYM-TRACKER348
   ```

2. **Create and Activate the Virtual Environment:**
   If you don't have a virtual environment set up, create one first:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the Application:**
   ```bash
   python app.py
   ```

5. **Access the App:**
   Open your browser and navigate to `http://127.0.0.1:8080`.

## Database Details
The application uses a local SQLite database (`instance/gym.db`). The database is configured with the `SERIALIZABLE` isolation level to ensure safe concurrent data handling. I did this since if there are multiple users at the same time trying to update the database by adding workouts, it may cause a phantom read. The initial run will automatically generate the database. 
