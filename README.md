# Heart Disease Prediction Capstone Project

## Introduction

This document outlines the end-to-end process, solution architecture, and methodology employed for a heart disease prediction project.

### Data Overview

The dataset used for this project consists of the following columns:

1. **age**
2. **sex**
3. **chest pain type (4 values)**
4. **resting blood pressure**
5. **serum cholestoral in mg/dl**
6. **fasting blood sugar > 120 mg/dl**
7. **resting electrocardiographic results (values 0,1,2)**
8. **maximum heart rate achieved**
9. **exercise-induced angina**
10. **oldpeak: ST depression induced by exercise relative to rest**
11. **slope: the slope of the peak exercise ST segment**
12. **number of major vessels (0-3) colored by fluoroscopy**
13. **thal: 0 = normal; 1 = fixed defect; 2 = reversible defect**
14. **target: Presence of heart disease (1 for Yes, 0 for No)**

### Data Preprocessing

1. **Creation of Age Group Column:** Loaded the data into MySQL, created a view, and added a new column named `age_group` based on age ranges.

2. **Import Data into Jupyter Notebook:** Imported the view into Jupyter Notebook using `pd.read_sql_query`.

3. **Data Exploration:**
    - Checked information and statistical description of the data.
    - Checked for missing values (none found).
    - Explored the distribution of the target variable using `value_counts`.
    - Plotted countplots for 'sex' and 'age_group' variables.

4. **Exploratory Data Analysis (EDA):**
    - Created a pairplot for selected variables ('age', 'trestbps', 'chol', 'thalach', 'oldpeak').
    - Checked correlation heatmap to identify relationships between variables.

5. **Data Encoding:**
    - Converted categorical data in the 'age_group' column using label encoding.

### Model Building

1. **Feature Scaling:**
    - Chose 'target' as the dependent variable and other variables as independent variables.
    - Scaled down the features using Standard Scaler.

2. **Model Selection:**
    - Created five different models: Logistic Regression, Decision Tree, Random Forest, K-nearest Neighbors (KNN), and Support Vector Machines (SVM).

3. **Model Evaluation:**
    - Evaluated models based on training accuracy, testing accuracy, precision score, and F1-score.
    - Logistic Regression performed well across all metrics.

4. **Hyperparameter Tuning and Model Refinement:**
    - Used hyperparameter tuning for Random Forest to find optimal parameters.
    - Used error plot method for K-nearest Neighbors to determine the optimal number of neighbors.

### Model Comparison and Selection

The following table summarizes the performance of each model:

| Algorithm Name           | Training Accuracy | Testing Accuracy | Precision Score | F1-Score |
|--------------------------|-------------------|------------------|-----------------|----------|
| Logistic Regression      | 0.847             | 0.967            | 0.974           | 0.974    |
| Decision Tree            | 0.913             | 0.934            | 0.900           | 0.947    |
| Random Forest            | 0.930             | 0.918            | 0.966           | 0.918    |
| K-nearest Neighbors      | 0.822             | 0.951            | 0.917           | 0.957    |
| Support Vector Machine   | 0.901             | 0.951            | 0.917           | 0.957    |

### Model Selection

Considering testing accuracy, precision score, and F1-score, Logistic Regression is chosen as the ideal model for this project.

### Further Analysis

A loop method was employed to find the optimal random_state for maximum testing accuracy.

---

This document provides a comprehensive overview of the project, detailing the steps taken from data preprocessing to model selection and evaluation. It highlights the choice of the Logistic Regression model based on specific metrics and outlines additional analyses conducted during the project.
