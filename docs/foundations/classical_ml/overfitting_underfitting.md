# Overfitting and Underfitting

When training a machine learning model, it is important to evaluate not only how well it fits the training data,
but also how it performs on **unseen data**.

Two common problems are **underfitting** and **overfitting**.

---

## Underfitting

Underfitting occurs when a model is **too simple** to capture the underlying patterns in the data.

An underfitted model:
- has high bias
- performs poorly on training data
- performs poorly on validation and test data

### Common causes:
- model too simple
- insufficient features
- excessive regularization

---

## Overfitting

Overfitting occurs when a model learns **noise instead of patterns**.

An overfitted model:
- has high variance
- performs very well on training data
- performs poorly on validation and test data

### Common causes:
- model too complex
- too many parameters
- small training dataset

---

## Training vs Validation Performance

A useful diagnostic tool is the comparison between training and validation performance:

| Scenario | Training Error | Validation Error |
|--------|----------------|------------------|
| Underfitting | High | High |
| Good fit | Low | Low |
| Overfitting | Low | High |

---

## Why This Matters

Understanding overfitting and underfitting helps to:
- choose the right model complexity
- interpret training results correctly
- improve generalization to new data
