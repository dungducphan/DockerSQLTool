# Docker-SQLiteTool
Tool to examining CORSIKA simulation output database. Only tested on MacOS. A docker packaging for SQLite tool (https://sqlitebrowser.org/). How to use
```bash
git clone https://github.com/dungducphan/Docker-SQLiteTool.git
cd Docker-SQLiteTool
# Copy your database file into folder "./data" as "database.db"
# If your are a NOvAian, run the "download.sh" script in "./data"
. ./run-deploy.sh
```
The run script instructed the mounting of the data folder `./data` on host machine to `/home/user/sql`. So in the XQuartz window that pop-up, using the file browser to open the mounted data folder. It should be in `/home/user/sql`.

Enjoy!
