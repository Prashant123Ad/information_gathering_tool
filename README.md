# Information Gathering Tool

This project is a comprehensive **Information Gathering Tool** for gathering various information about a website, such as WHOIS data, DNS records, subdomains, open ports, and emails. The tool utilizes various open-source reconnaissance tools like `whois`, `dig`, `nmap`, `subfinder`, and `theHarvester`.

### Features:
- Gather WHOIS information of a domain.
- Retrieve DNS records and perform lookups.
- Discover subdomains using `subfinder`.
- Scan open ports and services using `nmap`.
- Harvest email addresses using `theHarvester`.

### Tools Used:
- **whois**: For domain WHOIS information.
- **dig**: To perform DNS lookups.
- **nslookup**: For DNS record queries.
- **nmap**: For network scanning (open ports and services).
- **subfinder**: For discovering subdomains.
- **theHarvester**: For harvesting email addresses.

---

## Installation

### Prerequisites:
- **Kali Linux** or any Debian-based distribution.
- **Python 3.x** (if running the `tools_py` script).
- Internet connection for tool installation.

### Step 1: Clone the Repository

```bash
git clone https://github.com/Prashant123Ad/information_gathering_tool.git
cd information_gathering_tool
```
### Step 2: Install all requirement
```bash
python3 tools_py
```
### Step 3: Run the tool
```bash
chmod +x info_gather.sh
./info_gather.sh
```

Usage
After running the script, you will receive detailed output for the domain, including:

*WHOIS information.
1. DNS records (such as A, MX, TXT, etc.).
2. Subdomains found using subfinder.
3. Open ports and services discovered using nmap.
4. Email addresses found using theHarvester.
5. Results are saved in a text file located in the results/ directory (e.g., results/example.com_info.txt).

Contributing
Feel free to fork the repository, submit issues, and contribute improvements. Contributions are welcome!

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Commit your changes (git commit -am 'Add new feature').
4. Push to the branch (git push origin feature-branch).
5. Create a new pull request.

Author

Prashant Adhikari

https://github.com/Prashant123Ad

Disclaimer

This tool is intended for educational purposes and should only be used for legal penetration testing, bug bounty hunting, or other ethical hacking purposes. Make sure you have proper authorization before performing any information gathering or penetration testing activities on any domain or system.

