SELECT distinct c.company_code, c.founder, count(distinct lm.lead_manager_code), count(distinct sm.senior_manager_code), count(distinct m.manager_code), count(distinct e.employee_code)
FROM Employee AS e, Manager AS m, Senior_Manager AS sm, Lead_Manager AS lm, Company AS c
WHERE e.manager_code = m.manager_code AND
      m.senior_manager_code = sm.senior_manager_code AND
      sm.lead_manager_code = lm.lead_manager_code AND
      lm.company_code = c.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;