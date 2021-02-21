SELECT
  name
  , JSON_EXTRACT(
    unstructured_form_data, 
    "$.finances.balance.bank['hsbc'].amount"
  ) AS hsbc_amount
FROM employees