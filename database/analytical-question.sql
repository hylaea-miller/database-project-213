
-- Question: What are the top 5 states with the highest average annual carbon stock in aboveground biomass, and what region are they in?

-- Average aboveground biomass carbon stock by state and region
-- Joins stock with state across all years (1990-2023)
SELECT
    state.State_Name,
    state.Region,
    AVG(stock.Value) AS avg_carbon_stock_mmt
FROM stock
JOIN state ON stock.State_ID = state.State_ID
WHERE stock.Pool_ID = 'Aboveground Biomass'
GROUP BY state.State_Name, state.Region
ORDER BY avg_carbon_stock_mmt DESC
LIMIT 5;



