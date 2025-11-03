THIS FILE DEFINES HOW THIS PROJECT WORKS  

Healthcheck Project:
This is a simple bash script that checks your system health and saves the results in a log file.

A.Files:

healthcheck.sh → main script
healthlog.txt → stores the output
README.md → explains the project

B.What it shows

Date and time
System uptime
CPU load
Memory usage
Disk usage
Top 5 memory using processes
Status of nginx and ssh services

C.How to run

1. Open the terminal in VS Code
2. Run this command once:
chmod +x healthcheck.sh
3. Then run the script:
./healthcheck.sh

4. Open healthlog.txt to see the output# HEALTHCHECK_PROJECT
