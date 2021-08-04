#  Futbol

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Learning Goals](#learning-goals)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Contact](#contact)

## General info
This project is uses uses data from a fictional sports league to analyze team performance and other statistics. The current iteration of the project runs a number of available stats from the command line, utilizing the pry REPL. Further iterations would integrate this functionality into a website.

## Screenshots
![CLI Image](https://user-images.githubusercontent.com/826189/128260706-8add5a1b-99a8-454c-b568-5602066a080d.png)

## Learning Goals
* Build classes with single responsibilities.
* Write organized readable code.
* Use TDD as a design strategy
* Design an Object Oriented Solution to a problem
* Practice algorithmic thinking
* Work in a group
* Use Pull Requests to collaborate among multiple partners

## Technologies
Project is created with:
* Ruby version: 2.7.2

## Setup
To run this program, save a copy of this repository locally. In the MacOS
application 'Terminal,' navigate into the _futbol_ directory.
Stats can be viewed by running `ruby runner.rb`.

## List of viewable statistics:
Any statistic can be viewed by running the following list of methods on the preloaded `stat_tracker` instance.

### Game Statistics
* highest_total_score
* lowest_total_score
* percentage_home_wins
* percentage_visitor_wins
* percentage_ties
* count_of_games_by_season
* average_goals_per_game
* average_goals_by_season

### League Statistics
* count_of_teams
* best_offense
* worst_offense
* highest_scoring_visitor
* highest_scoring_home_team
* lowest_scoring_visitor
* lowest_scoring_home_team

### Season Statistics
These methods each take a season id as an argument and return the values described below.
* winningest_coach
* worst_coach
* most_accurate_team
* least_accurate_team
* most_tackles
* fewest_tackles

### Team Statistics
Each of the methods below take a team id as an argument. Using that team id, your instance of StatTracker will provide statistics for a specific team.
* team_info
* best_season
* worst_season
* average_win_percentage
* most_goals_scored
* fewest_goals_scored
* favorite_opponent
* rival

## Features
List of features ready:
* __Futbol__ runs each of the above methods.
* Test coverage at 100%.

To-do list:
* Website utilizing ERB not yet constructed.
* Response time is not currently as efficient as desired.
* GameTeamManager in particular is managing too many responsibilities.

## Status
Project is: _in progress_

## Contact
Created by
* [@equinn125](https://github.com/equinn125)
* [@matthewjholmes](https://github.com/matthewjholmes)
* [@Rteske](https://github.com/Rteske)
* [@michaelpmattson](https://github.com/michaelpmattson)

~ feel free to contact us! ~
