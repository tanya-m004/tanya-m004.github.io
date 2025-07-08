**Cosmetics Ingredient Analysis using t-SNE**

This project visualizes similarities between cosmetic products based on their ingredients. We focus on moisturizers suitable for dry skin and use t-SNE to map them into 2D space for intuitive comparison and insight.

**Dataset**
- Name: Product name
- Brand: Product brand
- Label: Type of product (e.g., Moisturizer, Cleanser)
- Ingredients: List of ingredients (comma-separated)
- Dry: Indicates if suitable for dry skin (1 or 0)
- Price and Rank: Metadata

**Tech Stack**
- Python 3.8+
- pandas, numpy
- scikit-learn (t-SNE)
- bokeh (interactive plotting)
- Google Colab or Jupyter Notebook

**Project Tasks**

**1. Data Preprocessing**
   - Load and inspect data using pandas.
   - Filter for moisturizers suitable for dry skin.
   - Normalize and tokenize the ingredients column.

**2. Feature Engineering**
   - Create a binary bag-of-words matrix (document-term matrix).
   - Build a one-hot encoder for ingredients.

**3. Dimensionality Reduction**
   - Apply t-SNE to project high-dimensional ingredient data into 2D space.
   - Handle cases where sample size is too low for default perplexity.

**4. Visualization**
   - Use Bokeh to plot an interactive scatter plot.
   - Each dot represents a product; hover shows Name, Brand, Price, and Rank.

**5. Ingredient Comparison**
   - Compare the ingredient lists of two visually similar products.

**Insights**

   - Products with similar ingredients naturally form clusters, validating content-based similarity.
   - Some top-ranked moisturizers share core ingredients, revealing common industry formulations.
   - Ingredient-based mapping helps uncover alternative products beyond brand or price comparisons.
