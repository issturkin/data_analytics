/*
Курс: Karpov.Courses — Аналитика данных
https://karpov.courses/analytics

Тема: JOIN + WHERE 
Условие: Найдите всех клиентов, которые зарегистрировались в системе, но ещё не совершили ни одного действия в таблице customer_actions. Выведите их customer_id и дату регистрации created_at. Отсортируйте по возрастанию customer_id.

Поля в результирующей таблице: customer_id,created_at.
*/

SELECT
cust.customer_id, 
cust.created_at
From
  customers AS cust
  LEFT JOIN customer_actions AS action ON cust.customer_id = action.customer_id
  WHERE event_type IS NULL
ORDER BY customer_id

git commit -m"Добавление решения задачи 3 модуля 5"