# U.S. Forest Carbon Database (1990–2023)

## Purpose
This project builds a relational database of greenhouse gas emissions and carbon stocks from U.S. forests using data from the USDA Forest Service. The database tracks carbon across ecosystem pools (aboveground biomass, soil, litter, etc.) by state from 1990 to 2023, and is used to answer the question: **What are the top 5 states with the highest average annual carbon stock in aboveground biomass from 1990 to 2023, and what region are they in?**

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

The cleaned data is already available in `Data/processed/` so steps 2–4 
can be skipped if you only want to run the analysis.

1. Clone this repository
2. *(Optional)* Download raw data from https://doi.org/10.2737/RDS-2024-0065 
   and place it in `Data/raw/`
3. *(Optional)* Install R dependencies listed in `requirements-R.txt`
4. *(Optional)* Run `data_cleaning.qmd` to reproduce the cleaning step
5. Install Python dependencies listed in `requirements.txt`
6. Run `analysis.ipynb` to query and visualize the results

## References & Acknowledgements
- Walters, B.F., Domke, G.M., Greenfield, E.J., Smith, J.E., Ogle, S.M. (2024). Greenhouse gas emissions and removals from forest land, woodlands, and urban trees in the United States, 1990–2022. Fort Collins, CO: Forest Service Research Data Archive. https://doi.org/10.2737/RDS-2024-0065
- Lambert, S., Gray, J. A., McCollum, J. M., Brandeis, T. J., & Mark. (2023). Georgia’s Forests, 2019. https://doi.org/10.2737/srs-rb-236
- Pacific Northwest Region - Mature and Old Growth Forests. (2025, March 25). Retrieved May 15, 2026, from Forest Service website: https://www.fs.usda.gov/r06/planning/mature-and-old-growth-forests
- Course: EDS 213 Databases and Data Management, Bren School of Environmental Science & Management, UC Santa Barbara.