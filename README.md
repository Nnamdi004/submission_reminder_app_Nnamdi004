📜 Submission Reminder App - README

📖 Overview

The Submission Reminder App is a simple shell script application designed to check and remind students about their pending assignments. It reads from a file containing student submission records and alerts users about pending submissions.

This project sets up a structured environment using shell scripts and organizes files into logical directories. The setup script automatically creates the required environment and allows users to run the reminder system with ease.

🛠 Features

✔️ Automated Environment Setup – Creates the necessary files and directories automatically.
✔️ Student Submission Tracker – Reads a CSV file to check which students have not submitted their assignments.
✔️ Configurable Assignment & Deadline – Uses a configuration file to set assignment details.
✔️ One-Click Execution – Start the application with a single command.

📂 Project Structure

After running the setup script, the following structure will be created:

submission_reminder_{YourName}/

│── app/

│   └── reminder.sh         # Main script that checks pending submissions

│── modules/

│   ├── functions.sh        # Contains helper functions

│── assets/

│   └── submissions.txt     # Stores student submission records

│── config/

│   └── config.env          # Configuration file with assignment details

│── startup.sh              # Entry point to start the app

🚀 Installation & Setup

Follow these steps to set up and run the application.

1️⃣ Clone or Download the Script

If using Git, clone the repository (replace repo-url with the actual URL):

git clone repo-url

cd submission_reminder_app

Alternatively, if you have the create_environment.sh script, simply place it in your working directory.

2️⃣ Give Execution Permission

Ensure the setup script has the right permissions to execute:

chmod +x create_environment.sh

3️⃣ Run the Setup Script

Execute the script to create the environment:

./create_environment.sh

👉 This will prompt you to enter your name. The script will then create a directory named submission_reminder_{YourName} containing all necessary files.

4️⃣ Navigate to the Application Directory

After setup, change into the generated directory:

cd submission_reminder_{YourName}

🚦 Running the Application

Once inside the project folder, execute the startup script to run the reminder app:

./startup.sh

This will:

✅ Read the configuration file (config.env)

✅ Load student submissions from submissions.txt

✅ Check for students who haven't submitted their work

✅ Print reminders

Example Output:

vbnet

Copy

Edit

Assignment: Shell Navigation

Days remaining to submit: 2 days
--------------------------------------------

Checking submissions in ./assets/submissions.txt

Reminder: Chinemerem has not submitted the Shell Navigation assignment!

Reminder: Divine has not submitted the Shell Navigation assignment!

Reminder: Emeka has not submitted the Git assignment!

Reminder: Efe has not submitted the Shell Basics assignment!

📑 File Explanations

1️⃣ create_environment.sh

Creates the project directory based on your name.

Sets up the required subdirectories and files (app/, modules/, assets/, config/).

Populates scripts with predefined logic.

2️⃣ reminder.sh (Main Script)

Loads environment variables and helper functions.

Reads student submission data and checks pending assignments.

Prints a reminder for students who haven't submitted their work.

3️⃣ functions.sh (Helper Functions)

Defines the check_submissions function, which:

✅ Reads submissions.txt.

✅ Checks who hasn’t submitted their assignment.

✅ Prints reminders.

4️⃣ config.env (Configuration File)

Stores environment variables, such as:

ASSIGNMENT="Shell Navigation"

DAYS_REMAINING=2

Allows easy modification of assignment details without changing script logic.

5️⃣ submissions.txt (Student Submission Data)

Stores student names, their assignments, and submission status.

Example content:

student, assignment, submission status

Chinemerem, Shell Navigation, not submitted

Chiagoziem, Git, submitted

Divine, Shell Navigation, not submitted

6️⃣ startup.sh (Application Entry Point)

Ensures required files exist before starting.

Runs reminder.sh to trigger the reminder system.

🔧 Customization

Modifying Assignments & Deadlines

Open config/config.env:

nano config/config.env

Update the values:

ASSIGNMENT="Git Basics"

DAYS_REMAINING=5

Save and exit (CTRL + X, then Y and Enter).

Adding More Students

Open assets/submissions.txt:

nano assets/submissions.txt

Add more students in the format:

StudentName, AssignmentName, SubmissionStatus

Save and exit.

📌 Notes

Ensure that startup.sh and reminder.sh are executable before running:

chmod +x startup.sh app/reminder.sh

The script does not modify existing files; instead, it reads and processes data dynamically.

If you need to reset the environment, delete the submission_reminder_{YourName} directory and rerun create_environment.sh.

📜 License

This project is open-source and free to use. Modify and enhance as needed!

