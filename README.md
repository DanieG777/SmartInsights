# SmartInsights 📊
**AI-Powered Data Profiling for R**

SmartInsights is a lightweight and intelligent R package designed for **automated data profiling**, **EDA**, and **report generation**. It's ideal for data analysts and developers who want fast, clean, and reproducible insights from any CSV dataset.

---

##  Features
- Automated data cleaning and profiling
- HTML report generation with visuals
- Lightweight and beginner-friendly
- Works on any structured CSV dataset

---

## 📦 Installation

You can install the development version directly from GitHub:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install the SmartInsights package
devtools::install_github("DanieG777/smartInsights")
🧠 Usage

# Load the package
library(smartinsights)

# Run the profiler (uses sample dataset by default)
generate_smartinsights()

# Or provide your own dataset
generate_smartinsights("path/to/your_dataset.csv")
An HTML report will be saved in the reports/ directory automatically.

📁 Folder Structure
smartinsights/
├── R/                    # Functions
├── inst/extdata/         # Sample datasets (e.g., hotel_bookings.csv)
├── reports/              # Auto-generated reports
├── man/                  # Function documentation
├── smartinsights_case_study.Rmd  # Report logic
└── DESCRIPTION, NAMESPACE, README.md
✨ Example Output
📄 SmartInsights_Report.html
Includes summary statistics, missing data overview, visualizations, and profiling metrics.

🔧 Requirements
This package installs and loads the following dependencies:

readr, dplyr, janitor, skimr, ggplot2, lubridate, rmarkdown

👨‍💻 Author
Daniel Dawit.
Cloud & Data Enthusiast | Smart Automation Builder

📄 License
MIT License
