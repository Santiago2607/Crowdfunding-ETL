-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT cf_id, backers_count, outcome
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT cf_id, COUNT(backer_id) AS "backers_count"
FROM "backers"
GROUP BY cf_id
ORDER BY "backers_count" DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT c.first_name, 
c.last_name,
c.email,
(ca.goal-ca.pledged) AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts AS c
JOIN campaign AS ca
ON c.contact_id=ca.contact_id
WHERE outcome = 'live'
ORDER BY "Remaining Goal Amount" DESC;

-- Check the table

SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT b.email,
b.first_name, 
b.last_name,
ca.cf_id,
ca.company_name,
ca.description,
ca.end_date,
(ca.goal-ca.pledged) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers AS b
JOIN campaign AS ca
ON b.cf_id=ca.cf_id
WHERE outcome = 'live'
ORDER BY b.last_name ASC;

-- Check the table

SELECT * FROM email_backers_remaining_goal_amount;
