begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
5
Atom at(food_crate1, location1)
Atom in(food_crate1, person1)
Atom in(food_crate1, person2)
Atom in(food_crate1, person3)
<none of those>
end_variable
begin_variable
var1
-1
5
Atom at(food_crate2, location1)
Atom in(food_crate2, person1)
Atom in(food_crate2, person2)
Atom in(food_crate2, person3)
<none of those>
end_variable
begin_variable
var2
-1
5
Atom at(med_crate3, location1)
Atom in(med_crate3, person1)
Atom in(med_crate3, person2)
Atom in(med_crate3, person3)
<none of those>
end_variable
begin_variable
var3
-1
5
Atom at(uav1, location1)
Atom at(uav1, location2)
Atom at(uav1, location3)
Atom at(uav1, location4)
Atom at(uav1, location5)
end_variable
begin_variable
var4
-1
5
Atom at(uav2, location1)
Atom at(uav2, location2)
Atom at(uav2, location3)
Atom at(uav2, location4)
Atom at(uav2, location5)
end_variable
begin_variable
var5
-1
5
Atom at(water_crate1, location1)
Atom in(water_crate1, person1)
Atom in(water_crate1, person2)
Atom in(water_crate1, person3)
<none of those>
end_variable
begin_variable
var6
-1
5
Atom at(water_crate3, location1)
Atom in(water_crate3, person1)
Atom in(water_crate3, person2)
Atom in(water_crate3, person3)
<none of those>
end_variable
begin_variable
var7
-1
4
Atom in(med_crate1, person1)
Atom in(med_crate1, person2)
Atom in(med_crate1, person3)
<none of those>
end_variable
begin_variable
var8
-1
7
Atom loaded(food_crate1, uav1)
Atom loaded(food_crate2, uav1)
Atom loaded(med_crate1, uav1)
Atom loaded(med_crate3, uav1)
Atom loaded(water_crate1, uav1)
Atom loaded(water_crate3, uav1)
Atom unloaded(uav1)
end_variable
begin_variable
var9
-1
6
Atom loaded(food_crate1, uav2)
Atom loaded(food_crate2, uav2)
Atom loaded(med_crate3, uav2)
Atom loaded(water_crate1, uav2)
Atom loaded(water_crate3, uav2)
Atom unloaded(uav2)
end_variable
19
begin_mutex_group
6
0 0
0 1
0 2
0 3
8 0
9 0
end_mutex_group
begin_mutex_group
3
0 0
8 0
9 0
end_mutex_group
begin_mutex_group
6
1 0
1 1
1 2
1 3
8 1
9 1
end_mutex_group
begin_mutex_group
3
1 0
8 1
9 1
end_mutex_group
begin_mutex_group
6
2 0
2 1
2 2
2 3
8 3
9 2
end_mutex_group
begin_mutex_group
3
2 0
8 3
9 2
end_mutex_group
begin_mutex_group
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
end_mutex_group
begin_mutex_group
6
5 0
5 1
5 2
5 3
8 4
9 3
end_mutex_group
begin_mutex_group
3
5 0
8 4
9 3
end_mutex_group
begin_mutex_group
6
6 0
6 1
6 2
6 3
8 5
9 4
end_mutex_group
begin_mutex_group
3
6 0
8 5
9 4
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
8 2
end_mutex_group
begin_mutex_group
7
8 0
8 1
8 2
8 3
8 4
8 5
8 6
end_mutex_group
begin_mutex_group
6
9 0
9 1
9 2
9 3
9 4
9 5
end_mutex_group
begin_state
0
0
0
0
1
0
0
3
2
5
end_state
begin_goal
6
0 1
1 2
2 3
5 1
6 3
7 0
end_goal
83
begin_operator
fly uav1 location1 location2
0
1
0 3 0 1
0
end_operator
begin_operator
fly uav1 location1 location3
0
1
0 3 0 2
0
end_operator
begin_operator
fly uav1 location1 location4
0
1
0 3 0 3
0
end_operator
begin_operator
fly uav1 location1 location5
0
1
0 3 0 4
0
end_operator
begin_operator
fly uav1 location2 location1
0
1
0 3 1 0
0
end_operator
begin_operator
fly uav1 location2 location3
0
1
0 3 1 2
0
end_operator
begin_operator
fly uav1 location2 location4
0
1
0 3 1 3
0
end_operator
begin_operator
fly uav1 location2 location5
0
1
0 3 1 4
0
end_operator
begin_operator
fly uav1 location3 location1
0
1
0 3 2 0
0
end_operator
begin_operator
fly uav1 location3 location2
0
1
0 3 2 1
0
end_operator
begin_operator
fly uav1 location3 location4
0
1
0 3 2 3
0
end_operator
begin_operator
fly uav1 location3 location5
0
1
0 3 2 4
0
end_operator
begin_operator
fly uav1 location4 location1
0
1
0 3 3 0
0
end_operator
begin_operator
fly uav1 location4 location2
0
1
0 3 3 1
0
end_operator
begin_operator
fly uav1 location4 location3
0
1
0 3 3 2
0
end_operator
begin_operator
fly uav1 location4 location5
0
1
0 3 3 4
0
end_operator
begin_operator
fly uav1 location5 location1
0
1
0 3 4 0
0
end_operator
begin_operator
fly uav1 location5 location2
0
1
0 3 4 1
0
end_operator
begin_operator
fly uav1 location5 location3
0
1
0 3 4 2
0
end_operator
begin_operator
fly uav1 location5 location4
0
1
0 3 4 3
0
end_operator
begin_operator
fly uav2 location1 location2
0
1
0 4 0 1
0
end_operator
begin_operator
fly uav2 location1 location3
0
1
0 4 0 2
0
end_operator
begin_operator
fly uav2 location1 location4
0
1
0 4 0 3
0
end_operator
begin_operator
fly uav2 location1 location5
0
1
0 4 0 4
0
end_operator
begin_operator
fly uav2 location2 location1
0
1
0 4 1 0
0
end_operator
begin_operator
fly uav2 location2 location3
0
1
0 4 1 2
0
end_operator
begin_operator
fly uav2 location2 location4
0
1
0 4 1 3
0
end_operator
begin_operator
fly uav2 location2 location5
0
1
0 4 1 4
0
end_operator
begin_operator
fly uav2 location3 location1
0
1
0 4 2 0
0
end_operator
begin_operator
fly uav2 location3 location2
0
1
0 4 2 1
0
end_operator
begin_operator
fly uav2 location3 location4
0
1
0 4 2 3
0
end_operator
begin_operator
fly uav2 location3 location5
0
1
0 4 2 4
0
end_operator
begin_operator
fly uav2 location4 location1
0
1
0 4 3 0
0
end_operator
begin_operator
fly uav2 location4 location2
0
1
0 4 3 1
0
end_operator
begin_operator
fly uav2 location4 location3
0
1
0 4 3 2
0
end_operator
begin_operator
fly uav2 location4 location5
0
1
0 4 3 4
0
end_operator
begin_operator
fly uav2 location5 location1
0
1
0 4 4 0
0
end_operator
begin_operator
fly uav2 location5 location2
0
1
0 4 4 1
0
end_operator
begin_operator
fly uav2 location5 location3
0
1
0 4 4 2
0
end_operator
begin_operator
fly uav2 location5 location4
0
1
0 4 4 3
0
end_operator
begin_operator
load food_crate1 uav1 location1
1
3 0
2
0 0 0 4
0 8 6 0
0
end_operator
begin_operator
load food_crate1 uav2 location1
1
4 0
2
0 0 0 4
0 9 5 0
0
end_operator
begin_operator
load food_crate2 uav1 location1
1
3 0
2
0 1 0 4
0 8 6 1
0
end_operator
begin_operator
load food_crate2 uav2 location1
1
4 0
2
0 1 0 4
0 9 5 1
0
end_operator
begin_operator
load med_crate3 uav1 location1
1
3 0
2
0 2 0 4
0 8 6 3
0
end_operator
begin_operator
load med_crate3 uav2 location1
1
4 0
2
0 2 0 4
0 9 5 2
0
end_operator
begin_operator
load water_crate1 uav1 location1
1
3 0
2
0 5 0 4
0 8 6 4
0
end_operator
begin_operator
load water_crate1 uav2 location1
1
4 0
2
0 5 0 4
0 9 5 3
0
end_operator
begin_operator
load water_crate3 uav1 location1
1
3 0
2
0 6 0 4
0 8 6 5
0
end_operator
begin_operator
load water_crate3 uav2 location1
1
4 0
2
0 6 0 4
0 9 5 4
0
end_operator
begin_operator
unload food_crate1 uav1 location2 person3
1
3 1
2
0 0 -1 3
0 8 0 6
0
end_operator
begin_operator
unload food_crate1 uav1 location3 person1
1
3 2
2
0 0 -1 1
0 8 0 6
0
end_operator
begin_operator
unload food_crate1 uav1 location3 person2
1
3 2
2
0 0 -1 2
0 8 0 6
0
end_operator
begin_operator
unload food_crate1 uav2 location2 person3
1
4 1
2
0 0 -1 3
0 9 0 5
0
end_operator
begin_operator
unload food_crate1 uav2 location3 person1
1
4 2
2
0 0 -1 1
0 9 0 5
0
end_operator
begin_operator
unload food_crate1 uav2 location3 person2
1
4 2
2
0 0 -1 2
0 9 0 5
0
end_operator
begin_operator
unload food_crate2 uav1 location2 person3
1
3 1
2
0 1 -1 3
0 8 1 6
0
end_operator
begin_operator
unload food_crate2 uav1 location3 person1
1
3 2
2
0 1 -1 1
0 8 1 6
0
end_operator
begin_operator
unload food_crate2 uav1 location3 person2
1
3 2
2
0 1 -1 2
0 8 1 6
0
end_operator
begin_operator
unload food_crate2 uav2 location2 person3
1
4 1
2
0 1 -1 3
0 9 1 5
0
end_operator
begin_operator
unload food_crate2 uav2 location3 person1
1
4 2
2
0 1 -1 1
0 9 1 5
0
end_operator
begin_operator
unload food_crate2 uav2 location3 person2
1
4 2
2
0 1 -1 2
0 9 1 5
0
end_operator
begin_operator
unload med_crate1 uav1 location2 person3
1
3 1
2
0 7 -1 2
0 8 2 6
0
end_operator
begin_operator
unload med_crate1 uav1 location3 person1
1
3 2
2
0 7 -1 0
0 8 2 6
0
end_operator
begin_operator
unload med_crate1 uav1 location3 person2
1
3 2
2
0 7 -1 1
0 8 2 6
0
end_operator
begin_operator
unload med_crate3 uav1 location2 person3
1
3 1
2
0 2 -1 3
0 8 3 6
0
end_operator
begin_operator
unload med_crate3 uav1 location3 person1
1
3 2
2
0 2 -1 1
0 8 3 6
0
end_operator
begin_operator
unload med_crate3 uav1 location3 person2
1
3 2
2
0 2 -1 2
0 8 3 6
0
end_operator
begin_operator
unload med_crate3 uav2 location2 person3
1
4 1
2
0 2 -1 3
0 9 2 5
0
end_operator
begin_operator
unload med_crate3 uav2 location3 person1
1
4 2
2
0 2 -1 1
0 9 2 5
0
end_operator
begin_operator
unload med_crate3 uav2 location3 person2
1
4 2
2
0 2 -1 2
0 9 2 5
0
end_operator
begin_operator
unload water_crate1 uav1 location2 person3
1
3 1
2
0 5 -1 3
0 8 4 6
0
end_operator
begin_operator
unload water_crate1 uav1 location3 person1
1
3 2
2
0 5 -1 1
0 8 4 6
0
end_operator
begin_operator
unload water_crate1 uav1 location3 person2
1
3 2
2
0 5 -1 2
0 8 4 6
0
end_operator
begin_operator
unload water_crate1 uav2 location2 person3
1
4 1
2
0 5 -1 3
0 9 3 5
0
end_operator
begin_operator
unload water_crate1 uav2 location3 person1
1
4 2
2
0 5 -1 1
0 9 3 5
0
end_operator
begin_operator
unload water_crate1 uav2 location3 person2
1
4 2
2
0 5 -1 2
0 9 3 5
0
end_operator
begin_operator
unload water_crate3 uav1 location2 person3
1
3 1
2
0 6 -1 3
0 8 5 6
0
end_operator
begin_operator
unload water_crate3 uav1 location3 person1
1
3 2
2
0 6 -1 1
0 8 5 6
0
end_operator
begin_operator
unload water_crate3 uav1 location3 person2
1
3 2
2
0 6 -1 2
0 8 5 6
0
end_operator
begin_operator
unload water_crate3 uav2 location2 person3
1
4 1
2
0 6 -1 3
0 9 4 5
0
end_operator
begin_operator
unload water_crate3 uav2 location3 person1
1
4 2
2
0 6 -1 1
0 9 4 5
0
end_operator
begin_operator
unload water_crate3 uav2 location3 person2
1
4 2
2
0 6 -1 2
0 9 4 5
0
end_operator
0
