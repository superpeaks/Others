To study logistic regression using Python, it's useful to generate synthetic data for various scenarios (binary classification, multinomial classification, etc.) and load it into a pandas DataFrame. Here's a Python code that will generate values for studying different types of logistic regression and load them into a pandas DataFrame.

This example covers:

1. Binary Logistic Regression
2. Multinomial Logistic Regression
3. Ordinal Logistic Regression (with some assumptions)

### Steps:

1. We'll use the `sklearn.datasets` module to generate synthetic datasets.
2. We'll use `pandas` to load the data.
3. For ordinal regression, we'll simulate some data with ordered categories.

```python
import pandas as pd
import numpy as np
from sklearn.datasets import make_classification, make_multilabel_classification
from sklearn.preprocessing import LabelEncoder

# 1. Binary Logistic Regression (Two Classes)
def generate_binary_logistic_data(n_samples=1000, n_features=10):
    X, y = make_classification(n_samples=n_samples, n_features=n_features, n_informative=5, 
                               n_classes=2, random_state=42)
    data = pd.DataFrame(X, columns=[f'feature_{i+1}' for i in range(n_features)])
    data['target'] = y
    return data

# 2. Multinomial Logistic Regression (Multiple Classes)
def generate_multinomial_logistic_data(n_samples=1000, n_features=10, n_classes=4):
    X, y = make_classification(n_samples=n_samples, n_features=n_features, n_informative=5, 
                               n_classes=n_classes, random_state=42)
    data = pd.DataFrame(X, columns=[f'feature_{i+1}' for i in range(n_features)])
    data['target'] = y
    return data

# 3. Ordinal Logistic Regression (Ordered Categories)
def generate_ordinal_logistic_data(n_samples=1000, n_features=10, n_classes=3):
    X, y = make_classification(n_samples=n_samples, n_features=n_features, n_informative=5, 
                               n_classes=n_classes, random_state=42)
    
    # Convert the y to represent ordered categories (e.g., Low, Medium, High)
    y = np.digitize(y, bins=[0, 1, 2])
    
    data = pd.DataFrame(X, columns=[f'feature_{i+1}' for i in range(n_features)])
    data['target'] = y
    return data

# Generate all types of logistic regression data
binary_data = generate_binary_logistic_data()
multinomial_data = generate_multinomial_logistic_data()
ordinal_data = generate_ordinal_logistic_data()

# Display first 5 rows for each
print("Binary Logistic Data:")
print(binary_data.head(), "\n")

print("Multinomial Logistic Data:")
print(multinomial_data.head(), "\n")

print("Ordinal Logistic Data:")
print(ordinal_data.head(), "\n")
```

### Explanation:

1. **Binary Logistic Regression**: Generates a binary classification dataset using `make_classification` with two classes.
2. **Multinomial Logistic Regression**: Generates a dataset for multinomial classification, where the target variable has more than two classes.
3. **Ordinal Logistic Regression**: Simulates data with ordered categories using `np.digitize`, which places the generated target variable in ordered bins (Low, Medium, High).

### Dependencies:

Make sure you have `pandas`, `numpy`, and `scikit-learn` installed. You can install them via:

```bash
pip install pandas numpy scikit-learn
```

To cover various logistic regression scenarios, we can explore different types of logistic regression models with the data generated above. Here's a breakdown for each scenario:

1. **Binary Logistic Regression**
2. **Multinomial Logistic Regression**
3. **Ordinal Logistic Regression**

I'll demonstrate how to fit and evaluate each model using `sklearn` and discuss how they differ in the context of different logistic regression types.

We'll also use:

* `LogisticRegression` from `sklearn`
* `train_test_split` to split data into training and testing sets
* `classification_report` for evaluation

### Code Overview:

We will:

* Generate datasets.
* Train models on each dataset.
* Evaluate each model using metrics like accuracy, confusion matrix, and classification report.

### 1. **Binary Logistic Regression**

```python
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix

# Generate Binary Logistic Regression Data
binary_data = generate_binary_logistic_data()

# Split data into features (X) and target (y)
X_binary = binary_data.drop(columns=['target'])
y_binary = binary_data['target']

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_binary, y_binary, test_size=0.3, random_state=42)

# Initialize and train a binary logistic regression model
binary_model = LogisticRegression(max_iter=1000)
binary_model.fit(X_train, y_train)

# Predictions
y_pred_binary = binary_model.predict(X_test)

# Evaluate Model
print("Binary Logistic Regression Evaluation:")
print(confusion_matrix(y_test, y_pred_binary))
print(classification_report(y_test, y_pred_binary))
```

### 2. **Multinomial Logistic Regression**

```python
# Generate Multinomial Logistic Regression Data
multinomial_data = generate_multinomial_logistic_data(n_classes=4)

# Split data into features (X) and target (y)
X_multinomial = multinomial_data.drop(columns=['target'])
y_multinomial = multinomial_data['target']

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_multinomial, y_multinomial, test_size=0.3, random_state=42)

# Initialize and train a multinomial logistic regression model
multinomial_model = LogisticRegression(max_iter=1000, multi_class='multinomial', solver='lbfgs')
multinomial_model.fit(X_train, y_train)

# Predictions
y_pred_multinomial = multinomial_model.predict(X_test)

# Evaluate Model
print("Multinomial Logistic Regression Evaluation:")
print(confusion_matrix(y_test, y_pred_multinomial))
print(classification_report(y_test, y_pred_multinomial))
```

### 3. **Ordinal Logistic Regression**

For ordinal logistic regression, the `sklearn` library does not have a direct implementation. However, we can simulate ordinal regression using **OrdinalEncoder** (which orders categories as integers) or by using packages like **`mord`**. In this case, we'll use `OrdinalEncoder` to encode target labels and train a model that assumes ordered outcomes.

To simulate ordinal logistic regression, we'll fit a **multinomial logistic regression** but with the assumption that the target categories are ordered.

```python
from sklearn.preprocessing import OrdinalEncoder

# Generate Ordinal Logistic Regression Data
ordinal_data = generate_ordinal_logistic_data(n_classes=3)

# Split data into features (X) and target (y)
X_ordinal = ordinal_data.drop(columns=['target'])
y_ordinal = ordinal_data['target']

# Encode the ordinal target variable (Low, Medium, High as integers)
encoder = OrdinalEncoder(categories=[['Low', 'Medium', 'High']])
y_ordinal_encoded = encoder.fit_transform(y_ordinal.values.reshape(-1, 1)).flatten()

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_ordinal, y_ordinal_encoded, test_size=0.3, random_state=42)

# Initialize and train a multinomial logistic regression model for ordinal data
ordinal_model = LogisticRegression(max_iter=1000, multi_class='multinomial', solver='lbfgs')
ordinal_model.fit(X_train, y_train)

# Predictions
y_pred_ordinal = ordinal_model.predict(X_test)

# Decode the predictions back to the original labels (Low, Medium, High)
y_pred_ordinal_decoded = encoder.inverse_transform(y_pred_ordinal.reshape(-1, 1))

# Evaluate Model
print("Ordinal Logistic Regression (simulated) Evaluation:")
print(confusion_matrix(y_test, y_pred_ordinal))
print(classification_report(y_test, y_pred_ordinal))
```

### Additional Notes:

* **Binary Logistic Regression** is the standard approach for two classes (0 or 1).
* **Multinomial Logistic Regression** works when the target variable has more than two classes.
* **Ordinal Logistic Regression** can be treated with a multinomial model when the target classes have a natural order. However, a more specialized approach (like `mord` package or `scikit-learn`'s `OrdinalRidge` for regression) would be ideal if you're targeting ordinal outcomes specifically.

### Summary:

1. **Binary Logistic Regression**: Works for two categories.
2. **Multinomial Logistic Regression**: Used for more than two categories without any intrinsic order.
3. **Ordinal Logistic Regression**: Used for ordered categories (we simulate this with multinomial logistic regression for simplicity).

### Evaluation Metrics:

* **Confusion Matrix**: Shows the actual vs predicted classifications.
* **Classification Report**: Provides precision, recall, f1-score, and accuracy.

---

Got it! Let's dive into both **customization** of the models and the **performance metrics** for each logistic regression scenario. I'll break it down into a more thorough example where we:

1. Customize the models with hyperparameters.
2. Evaluate performance using various metrics (accuracy, confusion matrix, precision, recall, F1-score, and ROC curve).
3. Add customization options like regularization (C parameter), solvers, and multi-class strategies.

### Customization & Performance Metrics

### 1. **Binary Logistic Regression**

#### Customization:

* **Regularization**: Use `C` (inverse of regularization strength) to control regularization.
* **Solver**: Different solvers such as `'liblinear'`, `'saga'`, `'lbfgs'` for optimization.
* **Class Weights**: Useful when dealing with imbalanced classes.

#### Performance Metrics:

* **Accuracy**
* **Confusion Matrix**
* **Precision, Recall, F1-Score**
* **ROC Curve and AUC**

```python
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, roc_auc_score, roc_curve
import matplotlib.pyplot as plt

# Generate Binary Logistic Regression Data
binary_data = generate_binary_logistic_data()

# Split data into features (X) and target (y)
X_binary = binary_data.drop(columns=['target'])
y_binary = binary_data['target']

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_binary, y_binary, test_size=0.3, random_state=42)

# Initialize a binary logistic regression model with customization
binary_model = LogisticRegression(max_iter=1000, C=0.5, solver='liblinear', class_weight='balanced')
binary_model.fit(X_train, y_train)

# Predictions
y_pred_binary = binary_model.predict(X_test)
y_prob_binary = binary_model.predict_proba(X_test)[:, 1]  # Probabilities for ROC curve

# Performance Metrics
print("Binary Logistic Regression Evaluation:")
print(confusion_matrix(y_test, y_pred_binary))
print(classification_report(y_test, y_pred_binary))

# ROC Curve and AUC
fpr, tpr, thresholds = roc_curve(y_test, y_prob_binary)
roc_auc = roc_auc_score(y_test, y_prob_binary)
plt.plot(fpr, tpr, color='blue', label=f'ROC Curve (AUC = {roc_auc:.2f})')
plt.plot([0, 1], [0, 1], color='gray', linestyle='--')
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('ROC Curve for Binary Logistic Regression')
plt.legend(loc='lower right')
plt.show()
```

### 2. **Multinomial Logistic Regression**

#### Customization:

* **Solver**: We will use `'lbfgs'` or `'saga'`, which works well for multinomial.
* **Regularization**: We’ll use `C` to control the regularization.
* **Multi-Class Strategy**: `'ovr'` (One-vs-Rest) or `'multinomial'` for handling multi-class classification.

#### Performance Metrics:

* **Accuracy**
* **Confusion Matrix**
* **Precision, Recall, F1-Score**
* **Macro/Micro Average of Precision/Recall/F1**
* **Cross-Validation**

```python
# Generate Multinomial Logistic Regression Data
multinomial_data = generate_multinomial_logistic_data(n_classes=4)

# Split data into features (X) and target (y)
X_multinomial = multinomial_data.drop(columns=['target'])
y_multinomial = multinomial_data['target']

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_multinomial, y_multinomial, test_size=0.3, random_state=42)

# Initialize and customize multinomial logistic regression model
multinomial_model = LogisticRegression(max_iter=1000, C=1.0, solver='lbfgs', multi_class='multinomial', class_weight='balanced')
multinomial_model.fit(X_train, y_train)

# Predictions
y_pred_multinomial = multinomial_model.predict(X_test)

# Performance Metrics
print("Multinomial Logistic Regression Evaluation:")
print(confusion_matrix(y_test, y_pred_multinomial))
print(classification_report(y_test, y_pred_multinomial))

# Cross-validation score
from sklearn.model_selection import cross_val_score
cross_val = cross_val_score(multinomial_model, X_multinomial, y_multinomial, cv=5)
print(f"Cross-validation Accuracy: {cross_val.mean():.4f}")
```

### 3. **Ordinal Logistic Regression (Simulated with Multinomial Logistic Regression)**

#### Customization:

* **Regularization**: Use `C` for regularization strength.
* **Solver**: `'lbfgs'` or `'newton-cg'` for multinomial.
* **Class Weights**: Use `'balanced'` if the data is imbalanced.

#### Performance Metrics:

* **Accuracy**
* **Confusion Matrix**
* **Precision, Recall, F1-Score**
* **Cross-Validation**
* **Ordered Categories**: We'll manually interpret the results as ordinal.

```python
from sklearn.preprocessing import OrdinalEncoder

# Generate Ordinal Logistic Regression Data (simulated)
ordinal_data = generate_ordinal_logistic_data(n_classes=3)

# Split data into features (X) and target (y)
X_ordinal = ordinal_data.drop(columns=['target'])
y_ordinal = ordinal_data['target']

# Encode the ordinal target variable (Low, Medium, High as integers)
encoder = OrdinalEncoder(categories=[['Low', 'Medium', 'High']])
y_ordinal_encoded = encoder.fit_transform(y_ordinal.values.reshape(-1, 1)).flatten()

# Split data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X_ordinal, y_ordinal_encoded, test_size=0.3, random_state=42)

# Initialize and train a multinomial logistic regression model for ordinal data
ordinal_model = LogisticRegression(max_iter=1000, C=0.7, multi_class='multinomial', solver='lbfgs', class_weight='balanced')
ordinal_model.fit(X_train, y_train)

# Predictions
y_pred_ordinal = ordinal_model.predict(X_test)

# Decode the predictions back to the original labels (Low, Medium, High)
y_pred_ordinal_decoded = encoder.inverse_transform(y_pred_ordinal.reshape(-1, 1))

# Performance Metrics
print("Ordinal Logistic Regression (simulated) Evaluation:")
print(confusion_matrix(y_test, y_pred_ordinal))
print(classification_report(y_test, y_pred_ordinal))

# Cross-validation score
cross_val_ordinal = cross_val_score(ordinal_model, X_ordinal, y_ordinal_encoded, cv=5)
print(f"Cross-validation Accuracy: {cross_val_ordinal.mean():.4f}")
```

### 4. **Comprehensive Performance Evaluation**

For all three types, you can calculate additional metrics such as:

* **Precision-Recall Curve** for imbalanced datasets.
* **Confusion Matrix** visualization using `seaborn` heatmap.

```python
import seaborn as sns

def plot_confusion_matrix(cm, classes, title='Confusion Matrix'):
    plt.figure(figsize=(8,6))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', xticklabels=classes, yticklabels=classes, cbar=False)
    plt.title(title)
    plt.xlabel('Predicted')
    plt.ylabel('True')
    plt.show()

# Example: Plot confusion matrix for binary logistic regression
cm_binary = confusion_matrix(y_test, y_pred_binary)
plot_confusion_matrix(cm_binary, classes=['Class 0', 'Class 1'], title='Binary Logistic Regression Confusion Matrix')
```

### Key Points of Customization:

1. **Regularization**: `C` parameter controls regularization strength. A smaller `C` means stronger regularization.
2. **Solvers**: Solvers like `'liblinear'`, `'saga'`, `'lbfgs'`, `'newton-cg'` are used based on the type of problem (binary, multinomial).
3. **Class Weights**: Useful when you have imbalanced classes.
4. **Multi-Class Handling**: `'ovr'` (One-vs-Rest) for multi-class, `'multinomial'` for directly solving multi-class problems.
5. **Cross-Validation**: For a more reliable estimate of model performance, especially when the data is small.

### Summary of Performance Metrics:

* **Accuracy**: Percentage of correct predictions.
* **Confusion Matrix**: Shows true positives, false positives, true negatives, and false negatives.
* **Precision, Recall, F1-Score**: Measures how well the model handles different classes.
* **ROC Curve / AUC**: Shows trade-off between true positive rate and false positive rate.
* **Cross-Validation**: Provides a more stable estimate of the model's performance.

Great! Let’s dive deeper into each aspect of **model customization** and **performance metrics** to get a complete understanding.

### 1. **Regularization (`C` parameter)**

The regularization term in logistic regression helps to prevent overfitting. Regularization is controlled by the parameter `C`, which is the inverse of regularization strength:

* **Smaller `C`**: Stronger regularization. This will penalize large coefficients more heavily, leading to a simpler model.
* **Larger `C`**: Weaker regularization. The model will be more flexible, potentially overfitting if `C` is too large.

#### Customization with `C`

Here’s how you can adjust the `C` parameter in the logistic regression model:

```python
# Regularization strength C = 0.1 (stronger regularization)
model_strong_regularization = LogisticRegression(max_iter=1000, C=0.1, solver='liblinear')
model_strong_regularization.fit(X_train, y_train)

# Regularization strength C = 10 (weaker regularization)
model_weak_regularization = LogisticRegression(max_iter=1000, C=10, solver='liblinear')
model_weak_regularization.fit(X_train, y_train)

# Evaluate with both models
y_pred_strong = model_strong_regularization.predict(X_test)
y_pred_weak = model_weak_regularization.predict(X_test)

# Print classification reports
print("Strong Regularization Classification Report:")
print(classification_report(y_test, y_pred_strong))

print("Weak Regularization Classification Report:")
print(classification_report(y_test, y_pred_weak))
```

**What to Look For:**

* **Strong Regularization (`C=0.1`)**: The model will be more biased toward simplicity. It might underfit if `C` is too small.
* **Weak Regularization (`C=10`)**: The model will have more flexibility to fit the data, but it might overfit if `C` is too large.

### 2. **Solvers in Logistic Regression**

Logistic regression in `scikit-learn` offers multiple solvers, each suited for different types of data and problem sizes. The solvers available are:

* **`liblinear`**: A good choice for small datasets or binary classification. It’s slower on large datasets.
* **`lbfgs`**: Works well for larger datasets and multinomial classification.
* **`saga`**: Suitable for large datasets, supports elastic net regularization (both L1 and L2).
* **`newton-cg`**: Works well for large datasets and is a good choice for multinomial logistic regression.

#### Example of Solver Customization

```python
# Solver 'liblinear' (good for binary classification, small data)
model_liblinear = LogisticRegression(max_iter=1000, solver='liblinear')
model_liblinear.fit(X_train, y_train)
y_pred_liblinear = model_liblinear.predict(X_test)

# Solver 'lbfgs' (good for multinomial classification)
model_lbfgs = LogisticRegression(max_iter=1000, solver='lbfgs', multi_class='multinomial')
model_lbfgs.fit(X_train, y_train)
y_pred_lbfgs = model_lbfgs.predict(X_test)

# Evaluate both models
print("liblinear Solver Classification Report:")
print(classification_report(y_test, y_pred_liblinear))

print("lbfgs Solver Classification Report:")
print(classification_report(y_test, y_pred_lbfgs))
```

#### **Which Solver to Use?**

* **`liblinear`**: Works well for small datasets and binary classification problems. It uses a coordinate descent algorithm, which is slower on larger datasets.
* **`lbfgs`**: Best for large datasets and multinomial logistic regression. It uses a quasi-Newton method for optimization and is much faster for large problems.
* **`saga`**: Works well for large datasets and is particularly useful if you plan on using L1 regularization (lasso).
* **`newton-cg`**: Similar to `lbfgs` but more suited for multinomial problems.

### 3. **Class Weights (`class_weight`)**

When dealing with imbalanced classes, you can adjust the weight of each class in the model using the `class_weight` parameter. This helps the model treat underrepresented classes more fairly.

* **`class_weight='balanced'`**: This automatically adjusts the weights inversely proportional to class frequencies in the data.
* **Manual class weights**: You can manually set weights for each class if you know that certain classes are more important than others.

#### Customization with `class_weight`

```python
# Class weights to handle class imbalance
model_balanced = LogisticRegression(max_iter=1000, solver='liblinear', class_weight='balanced')
model_balanced.fit(X_train, y_train)
y_pred_balanced = model_balanced.predict(X_test)

# Print classification report
print("Balanced Class Weight Classification Report:")
print(classification_report(y_test, y_pred_balanced))
```

**What to Expect**:

* With **balanced weights**, the model will give more importance to minority classes, helping to improve performance on those classes.
* **Manual weights**: If you know that one class is more important, you can manually assign higher weight to that class (e.g., `{0: 1, 1: 5}`).

### 4. **Cross-Validation for Performance Evaluation**

Cross-validation is a robust method for evaluating the performance of a model. It involves splitting the dataset into multiple subsets (folds), training the model on some folds, and testing it on others. This provides a better estimate of model performance than a single train-test split.

#### Implementing Cross-Validation

```python
from sklearn.model_selection import cross_val_score

# Perform 5-fold cross-validation on the balanced model
cross_val_scores = cross_val_score(model_balanced, X_multinomial, y_multinomial, cv=5)
print(f"5-Fold Cross-Validation Accuracy: {cross_val_scores.mean():.4f}")

# Perform 5-fold cross-validation on the default model
cross_val_scores_default = cross_val_score(model_lbfgs, X_multinomial, y_multinomial, cv=5)
print(f"5-Fold Cross-Validation Accuracy (Default Solver): {cross_val_scores_default.mean():.4f}")
```

**Why Use Cross-Validation?**

* It ensures that the model is evaluated on different portions of the data, giving you a better understanding of its generalization ability.
* Helps to identify overfitting or underfitting by checking performance across multiple splits of the data.

### 5. **Performance Metrics (Detailed)**

#### Confusion Matrix

The confusion matrix provides a detailed breakdown of the model’s predictions:

* **True Positives (TP)**: Correctly predicted positive instances.
* **True Negatives (TN)**: Correctly predicted negative instances.
* **False Positives (FP)**: Incorrectly predicted as positive.
* **False Negatives (FN)**: Incorrectly predicted as negative.

```python
# Example of confusion matrix for binary logistic regression
cm_binary = confusion_matrix(y_test, y_pred_binary)

import seaborn as sns
import matplotlib.pyplot as plt

def plot_confusion_matrix(cm, labels):
    plt.figure(figsize=(6, 4))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', xticklabels=labels, yticklabels=labels)
    plt.ylabel('True label')
    plt.xlabel('Predicted label')
    plt.title('Confusion Matrix')
    plt.show()

# Plot confusion matrix for binary logistic regression
plot_confusion_matrix(cm_binary, ['Class 0', 'Class 1'])
```

#### Precision, Recall, F1-Score

These metrics help assess the performance of the model, especially in imbalanced datasets:

* **Precision**: The proportion of predicted positive cases that are actually positive.
* **Recall**: The proportion of actual positive cases that are correctly identified.
* **F1-Score**: Harmonic mean of precision and recall. A good measure for imbalanced datasets.

```python
from sklearn.metrics import precision_recall_curve

# Calculate precision-recall curve
precision, recall, thresholds = precision_recall_curve(y_test, y_prob_binary)

# Plot precision-recall curve
plt.plot(recall, precision, color='blue')
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title('Precision-Recall Curve')
plt.show()
```

#### ROC Curve and AUC

The **ROC Curve** helps visualize the trade-off between sensitivity (true positive rate) and specificity (false positive rate). The **AUC** (Area Under the Curve) gives an aggregate measure of the model's performance.

```python
from sklearn.metrics import roc_curve, roc_auc_score

# ROC Curve
fpr, tpr, _ = roc_curve(y_test, y_prob_binary)
roc_auc = roc_auc_score(y_test, y_prob_binary)

# Plot ROC curve
plt.plot(fpr, tpr, color='blue', label=f'ROC Curve (AUC = {roc_auc:.2f})')
plt.plot([0, 1], [0, 1], color='gray', linestyle='--')
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('ROC Curve')
plt.legend(loc='lower right')
plt.show()
```

### 6. **Summary of Performance Evaluation**

* **Accuracy**: General measure of correct predictions.
* **Precision, Recall, F1-Score**: Useful for imbalanced data.
* **Confusion Matrix**: Provides a complete breakdown of model performance.
* **ROC Curve & AUC**: Helps visualize performance for binary classifiers.
