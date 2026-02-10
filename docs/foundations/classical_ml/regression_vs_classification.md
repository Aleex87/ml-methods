# Regression vs Classification

Before choosing a machine learning model, it is essential to understand the type of problem we are trying to solve.

In supervised learning, problems are generally divided into **regression** and **classification**.

---

## Regression

Regression problems aim to predict a **continuous numerical value**.

The target variable can take any value within a range, and the model learns a quantitative relationship between the input features and the target.

### Examples of regression problems:
- House price prediction
- Temperature forecasting
- Energy consumption estimation

### Output:
- A real number (e.g. 245000, 18.7, 0.92)

---

## Classification

Classification problems aim to assign an input to a **discrete class**.

The target variable represents categories, and the model learns to distinguish between different classes based on the input features.

### Examples of classification problems:
- Spam vs non-spam email detection
- Cat vs dog image classification
- Disease detection (yes / no)

### Output:
- A class label (e.g. "spam", "cat")
- Or class probabilities

---

## Key Differences

| Aspect | Regression | Classification |
|------|------------|----------------|
| Target type | Continuous | Discrete |
| Output | Numeric value | Class or probability |
| Typical metrics | MSE, RMSE, R² | Accuracy, Precision, Recall |
| Common models | Linear Regression, Random Forest | Logistic Regression, KNN |

---

## Why This Distinction Matters

Choosing the wrong problem type leads to:
- incorrect model selection
- inappropriate evaluation metrics
- misleading results

Understanding whether a problem is a regression or a classification task is the first fundamental step in any machine learning project.

