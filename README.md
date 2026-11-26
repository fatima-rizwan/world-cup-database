# <p align="center">⚽ World Cup Database</p>

<p align="center">
  A PostgreSQL database project for analyzing FIFA World Cup match data from 2014 and 2018 using SQL and Bash scripting.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PostgreSQL-Database-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-Queries-orange?style=for-the-badge" />
</p>

---

## <p align="center">📌 About The Project</p>

World Cup Database is a relational database project developed as part of the **freeCodeCamp Relational Database Certification**.

It stores FIFA World Cup match records from the 2014 and 2018 tournaments in a PostgreSQL database. Bash scripts automate data insertion and execute SQL queries to extract meaningful statistics about matches, teams, goals, and tournament champions.

## <p align="center">🛠️ Technologies Used</p>

<p align="center">
  PostgreSQL • SQL • Bash • CSV
</p>

## <p align="center">🗄️ Database Structure</p>

The database contains two related tables:

**Teams**
- `team_id` – Primary key
- `name` – Unique team name

**Games**
- `game_id` – Primary key
- `year` – Tournament year
- `round` – Match stage
- `winner_id` – Foreign key referencing the winning team
- `opponent_id` – Foreign key referencing the opposing team
- `winner_goals` – Goals scored by the winning team
- `opponent_goals` – Goals scored by the opposing team

## <p align="center">⚙️ Project Features</p>

- Designed a relational database with primary and foreign key constraints.
- Inserted unique teams and match records from a CSV dataset.
- Automated data insertion using Bash scripts.
- Used SQL aggregate functions: `SUM()`, `AVG()`, `MAX()`, and `COUNT()`.
- Applied `JOIN`, `UNION`, subqueries, `DISTINCT`, and `ORDER BY`.
- Analyzed tournament champions, match results, and team performance.

## <p align="center">📂 Project Files</p>

<table align="center">
  <tr>
    <th align="center">File</th>
    <th align="center">Description</th>
  </tr>
  <tr>
    <td align="center"><code>worldcup.sql</code></td>
    <td align="center">Database schema and data dump</td>
  </tr>
  <tr>
    <td align="center"><code>insert_data.sh</code></td>
    <td align="center">Bash script to populate the database</td>
  </tr>
  <tr>
    <td align="center"><code>queries.sh</code></td>
    <td align="center">SQL queries for World Cup statistics</td>
  </tr>
</table>

## <p align="center">📊 Analysis Highlights</p>

The project answers questions about:

- Total goals scored by winning teams and both teams combined.
- Average goals per match.
- Highest goals scored by one team in a single game.
- Matches where the winning team scored more than two goals.
- The 2018 tournament champion.
- Teams participating in the 2014 Eighth-Final round.
- Unique winning teams across both tournaments.
- Champions of the 2014 and 2018 tournaments.

## <p align="center">🎯 Learning Outcomes</p>

- Relational database design
- Primary and foreign key relationships
- SQL querying and data analysis
- PostgreSQL command-line operations
- Bash scripting and automation
- CSV data processing

## <p align="center">🏆 Certification</p>

<p align="center">
  <strong>freeCodeCamp – Relational Database Certification</strong>
</p>

---

<p align="center">
  Built with 💙 using PostgreSQL, SQL, and Bash
</p>
