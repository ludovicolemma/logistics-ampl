set Terminals;
set Hubs;

param Distances {Terminals, Hubs};
param Demand {Terminals};
param N_Facilities;

var Decision_Location {Hubs} binary;
var Decision_Linking {Terminals, Hubs} binary;
var Max_Dist;

minimize Costof_Min_Max_Dist: Max_Dist * 2 * 0.74;

subject to Budjet_Constraint: sum {j in Hubs} Decision_Location[j] = N_Facilities;
subject to Assaignment_Constraint {i in Terminals}: sum {j in Hubs} Decision_Linking[i,j] = 1;
subject to Location_Linking_Constraint {i in Terminals, j in Hubs}: Decision_Linking[i,j] <= Decision_Location[j];
subject to Upperbound_Node_Dist {i in Terminals}: sum {j in Hubs} Demand[i] * Distances[i,j] * Decision_Linking[i,j] <= Max_Dist;