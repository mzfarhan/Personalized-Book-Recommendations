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
Personalized-Book-Recommendations

├── data
│ ├── raw
│ │ ├── Books.csv # Raw dataset files (to be downloaded by user)
│ │ ├── Ratings.csv
│ │ └── Users.csv
│ └── processed
│ ├── preprocessed_Books.csv # Cleaned and preprocessed Books data
│ ├── preprocessed_Ratings.csv # Cleaned and preprocessed Ratings data
│ └── preprocessed_Users.csv # Cleaned and preprocessed Users data
├── notebooks
│ └── book_data_preparation.ipynb # Jupyter Notebook for all data preprocessing steps
├── dashboards
│ └── book recommendation data analysis.pbix
│ └── book recommendation data analysis.pdf
├── sql
│ └── query_data_books_join.sql # The SQL query used to join preprocessed data for dashboard visualization
├── requirements.txt # List of all Python dependencies
├── README.md # Project overview, setup instructions, and results
└── .gitignore # Files/directories to ignore in Git

## Setup Instructions

### 1. Clone the Repository
Start by cloning this GitHub repository to your local machine:
```bash
git clone [https://github.com/mzfarhan/Personalized-Book-Recommendations.git](https://github.com/mzfarhan/Personalized-Book-Recommendations.git)
cd Personalized-Book-Recommendations```
