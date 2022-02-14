# The Project
I used AMPL and CPLEX to solve an optimization problem. In the folder "Project Files" there are the ".dat" and ".mod" AMPL files while the full report I wrote with LaTex is called "Logistics_Project_Report.pdf". <br/>
The mathematical formulations used to solve the problem are the well-known p-median and p-center models (Hakimi 1964-1965).

# Description of the problem
A U.S. based company has to organize a distribution network composed of operating terminals in Altus, Ardmore, Bartlesville, Duncan, Edmond, Enid, Lawton, Muskogee, Oklahoma City, Ponca City, Stillwater and Tulsa. <br/> <br/>
The managers has the budjet to open two hubs in the aforementioned cities and they face the problem of assigning each terminal to one of the two hubs by minimizing the transportation cost between the terminal, the hub and vice versa. Finally they also wants to compare a case in which, instead of minimizing the total costs, it is minimized the maximum cost of a terminal-hub connection. <br/> <br/>
The transportation cost is 0,74$ per mile while the overall cost of a terminal-hub connection is twice that number times the distance of the terminal-hub connection. <br/> <br/>
The distances in miles between the Terminals were provided as it follows:

|               | Altus | Ardmore | Bartlesville | Duncan | Edmond | Enid  | Lawton | Muskogee | Oklahoma City | Ponca City | Stillwater | Tulsa |
|---------------|-------|---------|--------------|--------|--------|-------|--------|----------|---------------|------------|------------|-------|
| Altus         | 0     | 169,8   | 291,8        | 88,2   | 153,9  | 208,2 | 54,2   | 274,2    | 141,1         | 245        | 209,2      | 248   |
| Ardmore       | 169,8 | 0       | 248,6        | 75,9   | 112,5  | 199   | 115,8  | 230,4    | 100,5         | 202,2      | 162,6      | 204,6 |
| Bartlesville  | 291,8 | 248,6   | 0            | 231,5  | 146    | 132,4 | 238,7  | 92,2     | 151,4         | 70,2       | 115        | 45,6  |
| Duncan        | 88,2  | 75,9    | 231,5        | 0      | 93,5   | 137,5 | 34,1   | 213,5    | 80,9          | 184,8      | 145,3      | 187,8 |
| Edmond        | 153,9 | 112,5   | 146          | 93,5   | 0      | 88,8  | 100,7  | 145,7    | 14,4          | 91,9       | 53         | 102,2 |
| Enid          | 208,2 | 199     | 132,4        | 137,5  | 88,8   | 0     | 145    | 166,4    | 87,6          | 64,5       | 65,8       | 118,4 |
| Lawton        | 54,2  | 115,8   | 238,7        | 34,1   | 100,7  | 145   | 0      | 220,6    | 88            | 191,9      | 152,5      | 194,9 |
| Muskogee      | 274,2 | 230,4   | 92,2         | 213,5  | 145,7  | 166,4 | 220,6  | 0        | 140,4         | 142,5      | 119,2      | 48,1  |
| Oklahoma City | 141,1 | 100,5   | 151,4        | 80,9   | 14,4   | 87,6  | 88     | 140,4    | 0             | 104,7      | 66,6       | 107,6 |
| Ponca City    | 245   | 202,2   | 70,2         | 184,8  | 91,9   | 64,5  | 191,9  | 142,5    | 104,7         | 0          | 41,9       | 96,5  |
| Stillwater    | 209,2 | 162,6   | 115          | 145,3  | 53     | 65,8  | 152,5  | 119,2    | 66,6          | 41,9       | 0          | 71,2  |
| Tulsa         | 248   | 204,6   | 45,6         | 187,8  | 102,2  | 118,4 | 194,9  | 48,1     | 107,6         | 96,5       | 71,2       | 0     |
