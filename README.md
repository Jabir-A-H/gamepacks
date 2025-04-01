# GamePacks
Gonna make a game out of this tutorial project. Learning and using Godot.


gameplan?

| Games                          |     |
| ------------------------------ | --- |
| Maze                           |     |
| Dodge                          |     |
| Platformer fire boy water girl |     |
| Cut the rope                   |     |
| Mouse drag test of patience    |     |
| Snake                          |     |
| 2d shadow fight                |     |
| **Chain Reaction**             |     |

- a character walks in dungeon to play these various mini games.
- pallet town like starting city
- collects tokens from each game
- and that's all...?
- or...
- is it? 


gpt conversation highlights below

1. Difficulty Scaling:

Increase creep spawn rate as the score increases.

Increase creep speed over time.

Add different types of creeps with unique behaviors (e.g., some that chase the player, some that move randomly).

Decrease enemy size

2. Power-ups: later

Temporary speed boost.

Shield that absorbs one hit.

Time slowdown for a few seconds.



3. Game Modes: later

Endless Mode (normal gameplay).

Challenge Mode (specific tasks like surviving for 60 seconds).



4. Visual and Audio Enhancements: meh

Background color changes as the difficulty increases.

Different sound effects when reaching milestones.



5. Achievements & Unlockables: meh

Unlock new skins for the player character.

Special achievements for survival time or high scores.



1. Store Scores: Keep track of scores in an array or save them in a file.


2. Check if the Score is in the Top 10: After a game ends, compare the player's score with the existing top 10.


3. Ask for Player Name: If they qualify for the leaderboard, prompt them to enter their name.


4. Sort & Save: Sort the leaderboard in descending order and store it persistently.


5. Display Leaderboard: Show the top 10 scores on a separate leaderboard screen.




Scoring System Enhancements


2. Time-Based Bonus – Give extra points for surviving longer.



4. Difficulty-Based Score Multipliers – As the difficulty increases, award more points per second.



Leaderboard Features

1. Persistent Storage – Save the top 10 scores in a file so they don’t reset when the game closes.


2. Date & Time Stamp – Show when each high score was achieved.


3. Player Rank Display – If the player doesn’t make it into the top 10, show their rank instead of just their score.


4. Animated Scoreboard – Add a smooth scrolling effect or pop-up animation when a new high score is entered.


5. Online Leaderboard (Optional for Later) – Sync scores online for a global leaderboard.


Main Menu: Play, Leaderboard, Settings, Help, Exit

Leaderboard Screen: Show multiple leaderboards, switch between them (maybe tabs or buttons).

Pause Menu: Resume, Settings, Main Menu, Exit

Settings Menu: Volume control, difficulty settings, maybe key remapping

Help Screen: Controls and gameplay explanation

Retry Menu: Retry, Leaderboard, Main Menu


2. A more detailed leaderboard (Rank, Name, Score, Date/Time)?


3. A small animation when a new high score is entered (like a highlight effect)?

