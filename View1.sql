/* 3)View Playerawards with more attributes */

CREATE VIEW PlayerAwards 
AS SELECT P.JerseyNo, P.firstName, P.lastName, A.AwardName 
FROM Players P 
JOIN Awards A 
ON P.JerseyNo = A.JerseyNo AND P.firstName = A.firstName ORDER BY P.JerseyNo;
