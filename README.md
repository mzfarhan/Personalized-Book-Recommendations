# Personalized Book Recommendations

## Project Overview
This project focuses on building a foundation for a personalized book recommendation system through robust data preprocessing, SQL-based data aggregation, and comprehensive dashboard visualization. The primary goal is to transform raw book, user, and rating data into a clean, joined, and insightful format that serves as the basis for understanding reader preferences and trends, and ultimately, for potential future recommendation model development.

## Dataset
The dataset used in this project is sourced from Kaggle:
[Book Recommendation Dataset](https://www.kaggle.com/datasets/arashnic/book-recommendation-dataset?select=Books.csv)

It consists of three main CSV files:
- `Books.csv`
- `Ratings.csv`
- `Users.csv`

**Note:** The raw data files are too large to be directly uploaded to this repository. Please download them from the Kaggle link provided above and place them in the `data/raw/` directory after cloning the repository.

## Repository Structure
Personalized-Book-Recommendations<br>
├── data<br>
│   ├── raw<br>
│   │   ├── Books.csv # Raw dataset files (to be downloaded by user)<br>
│   │   ├── Ratings.csv<br>
│   │   └── Users.csv<br>
│   └── processed<br>
│       ├── preprocessed_Books.csv # Cleaned and preprocessed Books data<br>
│       ├── preprocessed_Ratings.csv # Cleaned and preprocessed Ratings data<br>
│       └── preprocessed_Users.csv # Cleaned and preprocessed Users data<br>
├── notebooks<br>
│   └── book_data_preparation.ipynb # Jupyter Notebook for all data preprocessing steps<br>
├── dashboards<br>
│   └── book recommendation data analysis.pbix<br>
│   └── book recommendation data analysis.pdf<br>
├── sql<br>
│   └── query_data_books_join.sql # The SQL query used to join preprocessed data for dashboard visualization<br>
├── requirements.txt # List of all Python dependencies<br>
├── README.md # Project overview, setup instructions, and results<br>
└── LICENSE # MIT License<br>

## Setup Instructions

### 1. Clone the Repository
Start by cloning this GitHub repository to your local machine:<br>
bash<br>
<pre>git clone [https://github.com/mzfarhan/Personalized-Book-Recommendations.git](https://github.com/mzfarhan/Personalized-Book-Recommendations.git)
cd Personalized-Book-Recommendations</pre>

### 2. Download and Place Raw Data
Since the raw dataset files are too large for GitHub, you need to download them manually:

1. Go to the Kaggle dataset page: [Book Recommendation Dataset](https://www.kaggle.com/datasets/arashnic/book-recommendation-dataset?select=Books.csv)
2. Download `Books.csv`, `Ratings.csv`, and `Users.csv`.
3. Place these three downloaded files into the `data/raw/` directory within your cloned repository.

### 3. Install Dependencies
It is highly recommended to use a virtual environment to manage project dependencies:

bash<br>
<pre>python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt</pre> 

### 4. Run Data Preprocessing
Open the `notebooks/book_data_preparation.ipynb` Jupyter Notebook and run all cells. This process will:

- Load the raw data from `data/raw/`.
- Clean column names (e.g., convert `User-ID` to `userid`, `Book-Title` to `booktitle`).
- Handle missing values in the `Books` dataset (e.g., filling 'unknown' for author/publisher, cleaning `Year-Of-Publication` to integer type, and filtering valid years between 1900 and 2025).
- Handle missing values and extract country information from the `Users` dataset (e.g., filling 'Age' with 0, extracting `Country` from `Location` using fuzzy matching).
- Save the cleaned and preprocessed datasets (e.g., `preprocessed_Books.csv`, `preprocessed_Ratings.csv`, `preprocessed_Users.csv`) into the `data/processed/` directory.

### 5. Execute SQL Query and Generate Dashboard
After data preprocessing is complete and the cleaned files are in the `data/processed/` directory, you will use the provided SQL query and your preferred BI tool to generate the dashboard:

The SQL query `sql/query_data_books_join.sql` joins the preprocessed `Users`, `Ratings`, and `Books` datasets. This query:

- Joins the tables on `userid` and `isbn`.
- Filters `yearofpublication` between 1900 and 2025.

Use the output of this SQL query as the data source for your dashboard (`dashboards/book recommendation.pdf`). This dashboard visually presents key insights, such as:

- Top 5 Publishers by Year of Publication
- Book Publication Year Trend
- Author vs Reader
- Publisher vs Reader
- Reader Age Distribution
- Top 5 Readers by Country

## Key Findings & Insights
Based on the dashboard (`book recommendation data analysis.pdf`), some key insights include:

- **Top Authors:** John Grisham is the author with the highest number of readers (4.6 K or Rb in Indonesia), followed by Stephen King (4.0 K).
- **Top Publishers:** Ballantine Books leads in total readers (11.6 K), significantly ahead of other publishers like Pocket (9.2 K) and Warner Books (9.0 K).
- **Reader Demographics:** The <18 age group has the largest number of readers (43 K), followed by the 26-35 and 36-50 age groups (both 36 K).
- **Geographical Distribution:** The United States accounts for the vast majority of readers (58 K), followed by Canada (9 K) and the United Kingdom (7 K).
- **Publication Trends:** The dashboard shows the distribution of book publishing over time, with a trend visible from 1900 to 2020 and beyond.

## Future Work (Optional)
- **Recommendation Model Implementation:** Integrate a machine learning model (e.g., Collaborative Filtering, Content-Based, or Hybrid) to generate personalized book recommendations based on the prepared and analyzed data.
- **Interactive Dashboard:** Develop an interactive dashboard using tools like Tableau, Power BI, or Streamlit for dynamic exploration of insights.
- **API Development:** Create an API to serve recommendations programmatically.

## Contact
* **Muhammad Zulfarhan**
* GitHub: [https://github.com/mzfarhan/Personalized-Book-Recommendations](https://github.com/mzfarhan/Personalized-Book-Recommendations)
* LinkedIn: [https://www.linkedin.com/in/muhammad-zulfarhan-1b3921206/](https://www.linkedin.com/in/muhammad-zulfarhan-1b3921206/)
* Email: [zulfarhan2102@gmail.com](mailto:zulfarhan2102@gmail.com)
