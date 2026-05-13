# Create Table 
CREATE TABLE IF NOT EXISTS raptors_player_stats (
    player_name VARCHAR(100),
    age INT,
    games_played INT,
    games_started INT, 
    minutes_per_game FLOAT, 
    points_per_game FLOAT, 
    rebounds_per_game FLOAT, 
    assists_per_game FLOAT, 
    steals_per_game FLOAT, 
    blocks_per_game FLOAT, 
    turnovers_per_game FLOAT, 
    field_goal_pct FLOAT, 
    three_point_pct FLOAT, 
    free_throw_pct FLOAT
    ); 


# Team Scoring Leaders
SELECT player_name, points_per_game FROM raptors_player_stats
ORDER BY points_per_game DESC;

#Team Assist Leaders
SELECT player_name, assists_per_game FROM raptors_player_stats
ORDER BY assists_per_game DESC;

#Team Rebound Leaders
SELECT player_name, rebounds_per_game FROM raptors_player_stats
ORDER BY rebounds_per_game DESC; 

#Team steals leader
SELECT player_name, steals_per_game FROM raptors_player_stats
ORDER BY steals_per_game DESC; 

#Team blocks leader
SELECT player_name, blocks_per_game FROM raptors_player_stats
ORDER BY blocks_per_game DESC; 

#All Around Offensive Stats
SELECT player_name,  points_per_game, rebounds_per_game, assists_per_game
FROM raptors_player_stats
ORDER BY (points_per_game + rebounds_per_game + assists_per_game) DESC; 

#All Around Defensive Stats
SELECT player_name, blocks_per_game, steals_per_game
FROM raptors_player_stats
ORDER BY (blocks_per_game + steals_per_game) DESC; 

# Most Efficient Players 
SELECT player_name, field_goal_pct, three_point_pct
FROM raptors_player_stats
ORDER BY field_goal_pct DESC; 