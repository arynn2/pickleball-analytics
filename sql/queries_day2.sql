-- 1. Missing ratings
SELECT *
FROM players
WHERE dupr_rating IS NULL;

-- 2. Count missing ratings
SELECT COUNT(*) AS missing_count
FROM players
WHERE dupr_rating IS NULL;

-- 3. Win rate
SELECT winner_id, COUNT(*) AS wins
FROM matches
GROUP BY winner_id
ORDER BY wins DESC;

-- 4. Average session duration
SELECT AVG(duration_minutes) AS avg_session_duration
FROM sessions;

-- 5. Player sessions and serve accuracy
SELECT player_id, COUNT(*) AS total_sessions, AVG(serve_accuracy) AS avg_serve_accuracy
FROM sessions
GROUP BY player_id;

-- 6. Courts used more than 40 times
SELECT *
FROM courts
WHERE usage_count > 40;

-- 7. Serve accuracy improvement
SELECT player_id,
       MIN(serve_accuracy) AS lowest_accuracy,
       MAX(serve_accuracy) AS highest_accuracy
FROM sessions
GROUP BY player_id;
