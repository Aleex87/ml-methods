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
but centers the distribution.

It works well when:
- data is approximately normally distributed
- features have different units

---

# Min-Max Scaling

Min-Max scaling rescales values into a fixed range.

Common ranges:
- 0 to 1
- -1 to 1

After transformation:
- the smallest value becomes the minimum of the range
- the largest value becomes the maximum of the range

It preserves the shape of the distribution,
but is sensitive to outliers.

Best used when:
- you need bounded input values
- neural networks expect a specific range

---

# Robust Scaling

Robust scaling uses:
- median
- interquartile range (IQR)

Instead of mean and standard deviation.

It is less sensitive to outliers.

There is no fixed output range,
but extreme values influence the transformation less.

Best used when:
- data contains significant outliers
- distribution is not normal

---

# Normalization (Vector Normalization)

Normalization is different from scaling.

Instead of transforming each feature independently,
normalization rescales each sample (row) so that:

- its vector length becomes 1

This is often called L2 normalization.

After normalization:
- each data point lies on the unit sphere

Normalization is useful when:
- direction matters more than magnitude
- working with text data or embeddings
- using similarity-based models

---

# Scaling vs Normalization

Scaling:
- acts on individual features (columns)
- changes feature distribution
- keeps sample structure intact

Normalization:
- acts on individual samples (rows)
- rescales entire feature vectors
- changes magnitude relationships inside a sample

They solve different problems.

---

# Important Practical Rule

Scaling must be:

1. fitted on the training data
2. applied to validation and test data using the same parameters

Never fit scaling on the full dataset.

Otherwise, data leakage occurs.
