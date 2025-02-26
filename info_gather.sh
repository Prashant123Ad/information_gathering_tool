#!/bin/bash

echo "============================================="
echo "     Stealthy Website Information Gathering Tool"
echo "============================================="

# Prompt user for the target website
read -p "Enter the target domain (e.g., example.com): " TARGET

# Create a directory for the results
mkdir -p results
OUTPUT_FILE="results/${TARGET}_info.txt"

# Function to perform WHOIS query quietly
gather_whois() {
    echo "[+] Gathering WHOIS information..." 
    whois $TARGET | tee -a $OUTPUT_FILE
}

# Function to gather DNS records quietly
gather_dns() {
    echo "[+] Gathering DNS information..."
    echo -e "\n\n--- DNS Records ---\n" >> $OUTPUT_FILE
    dig $TARGET ANY +short | tee -a $OUTPUT_FILE
    nslookup $TARGET | tee -a $OUTPUT_FILE
}

# Function to find subdomains using subfinder quietly
gather_subdomains() {
    echo "[+] Finding subdomains..."
    subfinder -d $TARGET -silent | tee -a $OUTPUT_FILE
}

# Function to perform basic open port scanning with low intensity
scan_ports() {
    echo "[+] Scanning for open ports and services..."
    nmap -Pn -T2 -A --min-rate=1000 --max-retries=1 $TARGET -oN temp_scan.txt
    cat temp_scan.txt | tee -a $OUTPUT_FILE
    rm temp_scan.txt
}

# Function to harvest emails using theHarvester
gather_emails() {
    echo "[+] Harvesting emails..."
    theHarvester -d $TARGET -b google -l 1 | tee -a $OUTPUT_FILE
}

# Run tasks in parallel for faster execution
run_tasks() {
    gather_whois &
    gather_dns &
    gather_subdomains &
    scan_ports &
    gather_emails &
    
    # Wait for all background processes to finish
    wait
}

# Execute the tasks
run_tasks

echo "============================================="
echo "  Scan Complete! Results saved in: $OUTPUT_FILE"
echo "============================================="
