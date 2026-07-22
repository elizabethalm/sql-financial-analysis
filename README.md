# 📊 sql-financial-analysis
Analysis of Brazilian e-commerce data with SQL, using a layered architecture (staging > intermediate > marts), following analytics engineering / dbt best practices.

# Goal
Practice analytical SQL on real commercial data by building and organized, version-controlled and reproducible transformation pipeline, the foundation of a dbt project.

# Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
— ~100k real orders (2016–2018) from Brazilian marketplaces.

Tables used: `orders`, `order_payments`, `order_items`, `customers`.
The CSVs must be downloaded from Kaggle and placed in `data/raw/`.

# Architecture
- **staging/** — cleaning and standardization (one file per source)
- **intermediate/** — reusable business logic
- **marts/** — final analytical tables
- **analyses/** — answered business questions
- **data_quality/** — data quality checks

# Stack
DuckDB · SQL · dbt (final phase)
