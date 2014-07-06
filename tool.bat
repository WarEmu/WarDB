:TOP
@CLS
@ECHO OFF

ECHO Welcome to WarDB database installer.
ECHO.
ECHO Please enter your MySQL information.

set /p user=   Database login: 
set /p pass=   Password: 

SET dumppath=.\dump\
SET port=3306
SET host=127.0.0.1
SET mysqlpath=.\MySQL
SET devsql=.\development\war_world
SET changsql=.\development\changesets

:Begin
CLS
ECHO.
ECHO    http://www.waremu.com
ECHO.
ECHO 	i - Import World Database, NOTE! Whole db will be overwritten!
ECHO 	W - Backup World Database.
ECHO 	C - Backup Character Database.
ECHO 	R - Import Changeset.
ECHO.
ECHO 	D - Dump your table.
ECHO.
ECHO 	X - Exit this tool
ECHO.
SET /p v= 		Enter a char:
IF %v%==* GOTO error
IF %v%==i GOTO import
IF %v%==I GOTO import
IF %v%==w GOTO dumpworld
IF %v%==W GOTO dumpworld
IF %v%==c GOTO dumpchar
IF %v%==C GOTO dumpchar
IF %v%==r GOTO changeset
IF %v%==R GOTO changeset
IF %v%==D GOTO dumpever
IF %v%==d GOTO dumpever
IF %v%==x GOTO exit
IF %v%==X GOTO exit
GOTO error

:import
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p world_db=           Name:
IF %world_db%=="" GOTO error
CLS
Echo.
echo Importing..
echo.
ECHO import: ability_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_infos.sql

ECHO import: ability_stats.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_stats.sql

ECHO import: chapter_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\chapter_infos.sql

ECHO import: chapter_rewards.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\chapter_rewards.sql

ECHO import: characterinfo.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo.sql

ECHO import: characterinfo_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo_items.sql

ECHO import: characterinfo_stats.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo_stats.sql

ECHO import: creature_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_items.sql

ECHO import: creature_loots.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_loots.sql

ECHO import: creature_protos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_protos.sql

ECHO import: creature_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_spawns.sql

ECHO import: creature_texts.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_texts.sql

ECHO import: creature_vendors.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_vendors.sql

ECHO import: entries.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\entries.sql

ECHO import: gameobject_loots.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_loots.sql

ECHO import: gameobject_protos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_protos.sql

ECHO import: gameobject_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_spawns.sql

ECHO import: gmcommandlogs.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gmcommandlogs.sql

ECHO import: item_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\item_infos.sql

ECHO import: mount_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\mount_infos.sql

ECHO import: pquest_info.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_info.sql

ECHO import: pquest_objectives.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_objectives.sql

ECHO import: pquest_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_spawns.sql

ECHO import: quests.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests.sql

ECHO import: quests_creature_finisher.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_creature_finisher.sql

ECHO import: quests_creature_starter.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_creature_starter.sql

ECHO import: quests_objectives.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_objectives.sql

ECHO import: random_names.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\random_names.sql

ECHO import: renown_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\renown_infos.sql

ECHO import: timedannounces.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\timedannounces.sql

ECHO import: tok_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\tok_infos.sql

ECHO import: waypoints.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\waypoints.sql

ECHO import: xp_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\xp_infos.sql

ECHO import: zone_areas.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_areas.sql

ECHO import: zone_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_infos.sql

ECHO import: zone_jumps.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_jumps.sql

ECHO import: zone_respawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_respawns.sql

ECHO import: zone_taxis.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_taxis.sql

ECHO Done.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO exit

:dumpworld
@ECHO OFF
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p world_db=           Name:
IF %world_db%=="" GOTO error
CLS
if not exist "%dumppath%" mkdir %dumppath%
echo %world_db% Database Export started...
ECHO Dumping: ability_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_infos > %dumppath%\ability_infos.sql
ECHO Dumping: ability_stats
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_stats > %dumppath%\ability_stats.sql
ECHO Dumping: chapter_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% chapter_infos > %dumppath%\chapter_infos.sql
ECHO Dumping: chapter_rewards
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% chapter_rewards > %dumppath%\chapter_rewards.sql
ECHO Dumping: characterinfo
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo > %dumppath%\characterinfo.sql
ECHO Dumping: characterinfo_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo_items > %dumppath%\characterinfo_items.sql
ECHO Dumping: characterinfo_stats
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo_stats > %dumppath%\characterinfo_stats.sql
ECHO Dumping: creature_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_items > %dumppath%\creature_items.sql
ECHO Dumping: creature_loots
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_loots > %dumppath%\creature_loots.sql
ECHO Dumping: creature_protos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_protos > %dumppath%\creature_protos.sql
ECHO Dumping: creature_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_spawns > %dumppath%\creature_spawns.sql
ECHO Dumping: creature_texts
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_texts > %dumppath%\creature_texts.sql
ECHO Dumping: creature_vendors
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_vendors > %dumppath%\creature_vendors.sql
ECHO Dumping: entries
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% entries > %dumppath%\entries.sql
ECHO Dumping: gameobject_loots
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_loots > %dumppath%\gameobject_loots.sql
ECHO Dumping: gameobject_protos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_protos > %dumppath%\gameobject_protos.sql
ECHO Dumping: gameobject_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_spawns > %dumppath%\gameobject_spawns.sql
ECHO Dumping: gmcommandlogs
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gmcommandlogs > %dumppath%\gmcommandlogs.sql
ECHO Dumping: item_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_infos > %dumppath%\item_infos.sql
ECHO Dumping: mount_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% mount_infos > %dumppath%\mount_infos.sql
ECHO Dumping: pquest_info
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_info > %dumppath%\pquest_info.sql
ECHO Dumping: pquest_objectives
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_objectives > %dumppath%\pquest_objectives.sql
ECHO Dumping: pquest_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_spawns > %dumppath%\pquest_spawns.sql
ECHO Dumping: quests
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests > %dumppath%\quests.sql
ECHO Dumping: quests_creature_finisher
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_creature_finisher > %dumppath%\quests_creature_finisher.sql
ECHO Dumping: quests_creature_starter
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_creature_starter > %dumppath%\quests_creature_starter.sql
ECHO Dumping: quests_objectives
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_objectives > %dumppath%\quests_objectives.sql
ECHO Dumping: random_names
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% random_names > %dumppath%\random_names.sql
ECHO Dumping: renown_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% renown_infos > %dumppath%\renown_infos.sql
ECHO Dumping: timedannounces
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% timedannounces > %dumppath%\timedannounces.sql
ECHO Dumping: tok_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% tok_infos > %dumppath%\tok_infos.sql
ECHO Dumping: waypoints
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% waypoints > %dumppath%\waypoints.sql
ECHO Dumping: xp_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% xp_infos > %dumppath%\xp_infos.sql
ECHO Dumping: zone_areas
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_areas > %dumppath%\zone_areas.sql
ECHO Dumping: zone_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_infos > %dumppath%\zone_infos.sql
ECHO Dumping: zone_jumps
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_jumps > %dumppath%\zone_jumps.sql
ECHO Dumping: zone_respawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_respawns > %dumppath%\zone_respawns.sql
ECHO Dumping: zone_taxis
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_taxis > %dumppath%\zone_taxis.sql


echo  Finished ... %world_db% exported to %dumppath% folder...
pause 
GOTO begin

:dumpchar
@ECHO OFF
CLS
SET sqlname=char-%DATE:~0,3% - %DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%--%TIME:~0,2%-%TIME:~3,2%
SET /p chardb=   Enter name of your character DB:
ECHO.
ECHO Dumping %sqlname%.sql to %dumppath%
%mysqlpath%\mysqldump -u%user% -p%pass% --result-file="%dumppath%\%sqlname%.sql" %chardb%
ECHO Done.
PAUSE
GOTO begin

:changeset
CLS
ECHO   Please Write down number of changeset (not the number of rev!!!)
ECHO.
ECHO.
set /p ch=      Number:
ECHO.
ECHO      Importing...
if not exist "%changsql%\changeset_%ch%.sql" GOTO error2
ECHO.

%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %changsql%\changeset_%ch%.sql
ECHO.
ECHO      File changeset_%ch%.sql imported sucesfully!
ECHO.
PAUSE
GOTO begin

:dumpever
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p db=           Name:
IF %db%=="" GOTO error 
echo.
echo.
echo          Type there name of table, which you want to dump
echo          (if you want to dump more tables, type space between names):
echo.
set /p z=           Name(s):
IF %z%=="" GOTO error 
echo              Processing....
echo.
set bu1="%z%"

if not exist "%dumppath%" mkdir %dumppath%

%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% --add-drop-table %db% "%bu1%" > "%dumppath%"\"%z%.sql"

@echo              Dump table(s) %z% from database %db% is/are succesfull !
set bu1=
set z=
echo.
pause
goto begin

:error
ECHO 	Please enter a correct database.
ECHO.
PAUSE
GOTO begin

:error2
ECHO 	Changeset with this number not found.
ECHO.
PAUSE
GOTO changeset

:exit