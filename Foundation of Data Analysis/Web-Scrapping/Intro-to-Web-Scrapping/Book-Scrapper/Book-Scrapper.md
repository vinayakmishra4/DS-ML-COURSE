# 📚 Book Scraper Project

## 📌 Overview

This project is a **web scraping application** that extracts book-related data from the website:
👉 [https://books.toscrape.com](https://books.toscrape.com)

The scraper collects detailed information about books such as:

* Title
* Rating
* Price
* Stock availability
* Book URL
* Image URL
* Genre
* UPC
* Tax details
* Reviews

The data is then structured and saved into CSV files for further analysis.

---

## ⚙️ Technologies Used

* **Python**
* **Requests** – for sending HTTP requests
* **BeautifulSoup (bs4)** – for parsing HTML
* **Pandas** – for data manipulation and storage
* **tqdm** – for progress visualization

---

## 🚀 Features

* Scrapes data from **all 50 pages** of the website
* Extracts both **listing-level** and **individual book details**
* Stores data in structured **CSV files**
* Combines datasets into a final clean dataset

---

## 📂 Project Structure

```
├── scraper.py
├── All Books.csv
├── All Page.csv
├── Final Scrap.csv
└── README.md
```

---

## 🔍 How It Works

### 1. Scraping First Page

* Sends a request to the website
* Parses HTML using BeautifulSoup
* Extracts:

  * Title
  * Rating
  * Price
  * Stock status
  * Book link
  * Image link

---

### 2. Scraping Multiple Pages

* Iterates through pages (1 → 50)
* Collects book data from each page
* Stores results into a DataFrame
* Saves output as:

```
All Books.csv
```

---

### 3. Scraping Individual Book Pages

* Visits each book’s detail page

* Extracts additional information:

  * Genre
  * UPC
  * Price (including & excluding tax)
  * Tax amount
  * Availability
  * Number of reviews

* Saves output as:

```
All Page.csv
```

---

### 4. Final Data Compilation

* Merges both datasets
* Creates a clean final dataset with all attributes

Final output:

```
Final Scrap.csv
```

---

## 🧪 Sample Output Columns

| Column Name | Description         |
| ----------- | ------------------- |
| Title       | Book title          |
| Genre       | Category of book    |
| Rating      | Star rating         |
| Price       | Book price          |
| Stock       | Availability        |
| UPC         | Unique product code |
| Review      | Number of reviews   |
| Book Link   | Product page URL    |
| Cover Image | Image URL           |

---

## ▶️ How to Run

1. Install dependencies:

```bash
pip install requests beautifulsoup4 pandas tqdm
```

2. Run the script:

```bash
python scraper.py
```

3. Output files will be generated in the project directory.

---

## ⚠️ Notes

* This project is for **educational purposes only**
* Always check a website’s **robots.txt** before scraping
* Avoid sending too many requests in a short time

---

## 💡 Future Improvements

* Add error handling & retry logic
* Export data to a database (MySQL / MongoDB)
* Build a simple dashboard for visualization
* Add multithreading for faster scraping

---

## 🙌 Acknowledgements

* Practice website: [https://books.toscrape.com](https://books.toscrape.com)
* Python scraping community

---

## 📬 Contact

Feel free to reach out for suggestions or improvements!

---

✨ Happy Scraping!
