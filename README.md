# 🏢 AI Dashboard Automation Tests

This repository contains **automated UI tests** for the **AI Dashboard login functionality** using **Robot Framework** and **SeleniumLibrary**.

---

## 🗂 Project Structure

AI-dashboard/
│
├─ env/ # Python virtual environment (optional)
├─ resource.robot # Reusable keywords and variables
├─ login_tests.robot # Test suite for login functionality
├─ requirements.txt # Python dependencies
├─ screenshots/ # Screenshots of test results (optional)
└─ README.md

yaml
Copy code

---

## ⚙️ Prerequisites

- Python 3.8+  
- Google Chrome (or Firefox, depending on `${BROWSER}` in `resource.robot`)  
- ChromeDriver (or GeckoDriver for Firefox)  
- Robot Framework

---

## 💻 Installation

1. **Clone the repository**:

```bash
git clone https://github.com/burahan206/AI-dashboard-automation.git
cd AI-dashboard-automation
Create virtual environment (optional):

bash
Copy code
python -m venv env
Activate virtual environment:

Windows:

powershell
Copy code
.\env\Scripts\activate
Linux/macOS:

bash
Copy code
source env/bin/activate
Install dependencies:

bash
Copy code
pip install -r requirements.txt
🚀 Running Tests
Run the test suite:

bash
Copy code
robot login_tests.robot
After running, Robot Framework will generate:

output.xml – Raw test output

log.html – Detailed step-by-step log with screenshots

report.html – Summary report

Open log.html in your browser to see detailed execution.

🧪 Test Cases
Valid Login – Logs in with correct credentials and verifies dashboard page


📷 Example Screenshot
You can capture screenshots during test execution and save them in screenshots/ folder:


🛠 Resource File (resource.robot)
Contains reusable keywords and variables, such as:

Open Browser To Login Page

Input Username

Input Password

Submit Credentials

Welcome Page Should Be Open

Variables include:

URLs (LOGIN_URL, WELCOME_URL, ERROR_URL)

Credentials (VALID_USER, VALID_PASSWORD)

Browser type (BROWSER)

⚠️ Notes
Make sure the IDs or locators in resource.robot match the current web application.

Use Wait Until Element Is Visible for elements that load dynamically to avoid flakiness.

Adjust ${BROWSER} to match your installed browser.

📄 License
This project is for internal testing purposes.

yaml
Copy code

---

✅ **Features ของ Markdown README นี้**
- มี icon และ section แยกชัดเจน  
- Code blocks สำหรับ terminal/Robot Framework commands  
- ตัวอย่าง screenshot สำหรับ GitHub  
- อ่านง่ายและ professional  

---

