# U.S. Forest Carbon Database (1990–2022)

## Purpose
This project builds a relational database of greenhouse gas emissions and carbon stocks from U.S. forests using data from the USDA Forest Service. The database tracks carbon across ecosystem pools (aboveground biomass, soil, litter, etc.) by state from 1990 to 2022, and is used to answer the question: **What are the top 5 states with the highest average annual carbon stock in aboveground biomass from 1990 to 2023, and what region are they in?**

This project was completed as part of EDS 213: Databases and Data Management at the Bren School of Environmental Science & Management, UCSB.

## Repository Structure

```
DATABASE-PROJECT-213/
├── database/
│   ├── database.duckdb          # DuckDB database file
│   └── schema-build-script.sql  # SQL script to create and populate tables
├── Data/
│   ├── raw/                     # Original downloaded data files(gitignore)
│   └── processed/               # Cleaned CSVs
│       ├── state.csv
│       ├── carbon_pool.csv
│       ├── stock.csv
│       └── flux.csv             
│     
├── data_cleaning.qmd            # Data cleaning
├── analysis.ipynb               # Data visualization
├── requirements-R.txt           # R package dependencies for cleaning purpose
├── requirements.txt             # Python dependencies for analysis purpose
├── .gitignore
└── README.md
```
## Data Access
Data comes from the USDA Forest Service Research Data Archive:

> Walters et al. (2024). *Greenhouse gas emissions and removals from forest land, 
> woodlands, and urban trees in the United States, 1990–2022.*
> https://doi.org/10.2737/RDS-2024-0065

The cleaned versions used in this analysis are in `Data/processed/` and are included  in this repository.

## How to Reproduce
1. Clone this repository
2. Install python dependencies listed in `requirements-python.txt`
3. Run `analysis.ipynb` to query and visualize the result

## References & Acknowledgements
- Walters, B.F., Domke, G.M., Greenfield, E.J., Smith, J.E., Ogle, S.M. (2024). Greenhouse gas emissions and removals from forest land, woodlands, and urban trees in the United States, 1990–2022. Fort Collins, CO: Forest Service Research Data Archive. https://doi.org/10.2737/RDS-2024-0065
- Course: EDS 213 Databases and Data Management, Bren School of Environmental Science & Management, UC Santa Barbara.
