# Data Splitting and Feature Scaling

Before training a machine learning model, data must be prepared correctly.

Two fundamental steps are:
- splitting the dataset
- scaling the features

Both are essential for building reliable and stable models.

---

# Train / Validation / Test Split

A model must be evaluated on data it has never seen before.

For this reason, datasets are usually divided into:

- **Training set** → used to train the model
- **Validation set** → used to tune hyperparameters
- **Test set** → used for final evaluation

Typical splits:
- 70% training
- 15% validation
- 15% test

The key principle is:

> The test set must never influence training decisions.

This ensures proper generalization measurement.

---

# Why Feature Scaling Is Important

Many machine learning algorithms are sensitive to feature magnitude.

If one feature ranges from:
- 0 to 1

and another ranges from:
- 0 to 10,000

the second feature may dominate the learning process.

Scaling ensures that features contribute more evenly.

Scaling is especially important for:
- KNN
- Linear Regression
- Logistic Regression
- Neural Networks
- Gradient Descent-based models

It is less important for:
- Tree-based models (e.g., Decision Trees, Random Forest)

---

# Standardization (Standard Scaling)

Standardization transforms data so that:

- mean becomes 0
- standard deviation becomes 1

After transformation:
- most values fall roughly between -3 and +3

This method does not fix a strict range,
but centers the distribu
