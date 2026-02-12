# Data Loading in Real-World Projects

In the model demonstrations of this project, we used structured data
from the Sakila database.

The dataset was already prepared and available.

In real-world machine learning projects, this is rarely the case.

Data must usually be:

- downloaded
- extracted
- cleaned
- loaded manually

Understanding how data is loaded is a fundamental skill.

---

# Common Data Sources

Real-world datasets may come from:

- CSV files
- Excel files
- SQL databases
- APIs
- Cloud storage
- Image folders
- JSON files

The loading method depends on the data format.

---

# Loading a CSV File (Most Common Case)

CSV is one of the most widely used formats.

Example in Python:

```python
import pandas as pd

df = pd.read_csv("data/dataset.csv")
```
This reads the file into a DataFrame.

Other formats are similar:

```python
pd.read_excel("data/dataset.xlsx")
pd.read_json("data/dataset.json")
```
The function changes,
but the logic remains the same.

---

# Understanding File Paths

Correct file paths are essential.

Example project structure:

project/
│
├── data/
│     └── dataset.csv
│
└── notebooks/
      └── analysis.ipynb

If the notebook is inside notebooks/,
and the data is in data/,
the relative path may look like:

../data/dataset.csv

---

# Loading Data from a Database

In real-world applications, data is often stored in SQL databases.

Example using a context manager:

```python
import sqlite3
import pandas as pd

with sqlite3.connect("database.db") as conn:
    df = pd.read_sql_query("SELECT * FROM table_name", conn)
```
Using with ensures that:

the connection is automatically closed

resources are properly managed

This approach is recommended for safe database access.

# Deep Learning Datasets

In deep learning, especially for images,
datasets are usually organized into folders.

Typical structure:

dataset/
│
├── train/
│     ├── cat/
│     └── dog/
│
└── test/
      ├── cat/
      └── dog/

Each folder represents a class.

The directory structure defines the labels.

Libraries like PyTorch and TensorFlow
can automatically assign labels based on folder names.

---

# Raw Data Conversion

Sometimes data is not directly usable.

Examples:

Images stored as raw arrays

Sensor data in binary format

Text data in custom formats

In these cases,
a preprocessing script is required to:

parse raw data

convert formats

save structured files

Data preparation is often one of the most time-consuming steps
in a machine learning project.

# Key Takeaways

In this project, datasets were pre-structured
to focus on learning algorithms.

In real-world projects, you must:

- understand file systems

- manage paths correctly

- load different data formats

- handle database connections safely

- preprocess raw data

Model training begins only after data is correctly loaded and prepared.