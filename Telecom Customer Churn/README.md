**Telecom Customer Churn Prediction - Python**

**Introduction**
This project predicts customer churn (whether a customer will leave) using machine learning. It’s built end-to-end: from data cleaning and exploration to training, tuning, and evaluating predictive models.


**Dataset**

* [Telco Customer Churn](https://www.kaggle.com/blastchar/telco-customer-churn)

**Objectives**

Customer churn is a critical metric for subscription-based businesses. Using the Telco Customer Churn dataset, this project aims to:

* Clean and preprocess raw customer data
* Explore patterns influencing churn
* Train and compare classification models
* Provide actionable insights for retention strategies

**Tech Stack & Tools**

* **Python 3.x**
* **Pandas, NumPy** – Data wrangling
* **Matplotlib, Seaborn** – Visualization
* **Scikit-learn** – Machine Learning models
* **Jupyter Notebook** – Prototyping


**Project Workflow**

1. **Data Preprocessing**

   * Handled missing values (`TotalCharges`)
   * Encoded categorical variables (One-Hot & Label Encoding)
   * Scaled numeric features (StandardScaler)
     
2. **EDA**

   * Visualized churn patterns by tenure, contract type, payment method, etc.
   * Explored class imbalance in churn
     
3. **Model Building**

   * Baseline models: Logistic Regression, Random Forest
   * Tuned hyperparameters with `GridSearchCV`
   * Handled class imbalance using `class_weight='balanced'`
     
4. **Evaluation**

   * Metrics: Accuracy, Precision, Recall, F1-score, ROC-AUC
   * Plotted confusion matrix and ROC curves
     
5. **Insights**

   * Month-to-month contracts and electronic checks are high churn risks
   * Longer tenure reduces churn probability significantly

**Results**

| Model               | Accuracy | F1-Score    
| ------------------- | -------- | --------    
| Logistic Regression | 73%      | 63.50%      
| Random Forest       | 79%      | 63.51%      





