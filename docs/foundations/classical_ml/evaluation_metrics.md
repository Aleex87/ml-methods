# Evaluation Metrics

After training a machine learning model, we need to understand **how good its predictions really are**.

Evaluation metrics help us answer different questions about model behavior.
There is no single “best” metric — each one highlights a different aspect of performance.

---

## Metrics for Regression

In regression problems, predictions are continuous values.

Regression metrics measure **how far predictions are from the true values**.

Common regression metrics include:
- MAE, MSE, RMSE
- R² score

In general:
- lower error means better predictions
- different metrics penalize errors in different ways

---

## Metrics for Classification

In classification, the model answers a **yes / no question** or chooses a class.

Before defining metrics, we must clearly define the question the model is answering.

---

## Example Problem

**Question:**  
> Does this image contain a cat?

Possible answers:
- **Yes** → Cat
- **No** → Not a cat

The confusion matrix helps us understand how the model answers this question.

---

## Confusion Matrix (Cat Detection Example)

                     Predicted
                |     Cat     |   Not Cat

Interpretation:
- **True Positive (TP)**: image contains a cat, model says “cat”
- **False Negative (FN)**: image contains a cat, model says “not cat”
- **False Positive (FP)**: image does not contain a cat, model says “cat”
- **True Negative (TN)**: image does not contain a cat, model says “not cat”

---

## Accuracy

Accuracy answers the question:

> How often is the model correct overall?

Accuracy is useful when:
- classes are balanced
- all errors have similar consequences

Accuracy can be misleading when:
- one class is much more frequent than the other
- false positives and false negatives have different costs

---

## Precision

Precision answers the question:

> When the model predicts “cat”, how often is it correct?

Precision is important when:
- false positives are costly
- we want to trust positive predictions

### Examples:
- Spam detection (do not mark real emails as spam)
- Medical diagnosis (avoid false alarms)
- Fire alarm systems (avoid unnecessary alerts)

---

## Recall

Recall answers the question:

> How many actual cats did the model successfully find?

Recall is important when:
- false negatives are costly
- missing a positive case is dangerous

### Examples:
- Cancer detection (do not miss sick patients)
- Security systems
- Defect detection in manufacturing

---

## F1-score

The F1-score balances **precision and recall**.

It is useful when:
- classes are imbalanced
- both false positives and false negatives matter
- a single metric is needed for comparison

---

## Why This Matters

Evaluation metrics are not just numbers.

They reflect:
- the question the model is answering
- the real-world cost of errors
- the priorities of the problem

Choosing the right metric is a **design decision**, not a technical detail.
