
--- Question: Which states have the highest average annual carbon stock in aboveground biomass, and how does that compare across regions?
--- STEPS: 
-- Average aboveground biomass carbon stock by state and region
-- Join stock with state and carbon_pool across all years

SELECT
    state.state_name,
    state.region,
    AVG(stock.value) AS avg_carbon_stock_mmt
FROM stock
JOIN state       ON stock.state_id = state.state_id
JOIN carbon_pool ON stock.pool_id  = carbon_pool.pool_id
WHERE carbon_pool.pool_id = 'Aboveground Biomass'
GROUP BY state.state_name, state.region
ORDER BY avg_carbon_stock_mmt DESC;