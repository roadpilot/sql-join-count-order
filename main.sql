/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

select h.hacker_id, h.name, count(h.hacker_id) from challenges c
inner join hackers h on h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
order by count(h.hacker_id) desc, h.hacker_id