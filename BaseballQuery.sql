--selecting all records
select *
from BaseballData

--ordering teams by wins
select team, wins,total_attnd,avg_Filled,Capacity
from BaseballData
order by Wins desc

--selecting teams that made the playoffs
select Team,total_attnd,avg_Filled,Capacity
from BaseballData
where Playoffs_Y_N = 'y'
order by Total_Attnd desc

--selecting teams that did not make the playoffs
select Team,total_attnd,avg_Filled,Capacity
from BaseballData
where Playoffs_Y_N = 'n'
order by Total_Attnd desc

--Selecting teams with more than 1 all star player
select team,Amt_Allstars, wins, Total_Attnd,Avg_Filled,Capacity 
from BaseballData
where Amt_Allstars > 1
order by Total_Attnd desc

--Selecting teams with only 1 all star player
select team,Amt_Allstars, wins, Total_Attnd,Avg_Filled,Capacity 
from BaseballData
where Amt_Allstars = 1
order by Total_Attnd desc

--Ordering teams by pay roll
select team, cast(replace(replace(team_payroll,',',''),'$','') as int) as pay, wins, Total_Attnd,Avg_Attnd,Avg_Filled, Capacity
from BaseballData
order by pay desc

--ordering teams by strength of schedule
select team, Schedule_Strength, wins, Total_Attnd, Avg_Attnd, Avg_Filled, Capacity
from BaseballData
order by Schedule_Strength desc