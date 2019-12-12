;; This is a problem for the Emergency Services Logistics problem in TDDC17
;; as defined in "domainFile.pddl".

(define (problem C3_2)
  (:domain logistics)
  (:objects
   uav1 uav2                                              ;; there are two uavs
   med_crate1 med_crate2 med_crate3                       ;; There are 3 medical crates
   water_crate1 water_crate2 water_crate3                 ;; There are 3 water crates
   food_crate1 food_crate2 food_crate3                    ;; There are 3 food crates
   person1 person2 person3                                ;; There are 3 persons
   location1 location2 location3 location4 location5      ;; There are 5 locations

   )
  (:init
   ;; Type declarations:
   ;; all med/water/food crates are crates and that specific crate.
   (crate med_crate1) (crate med_crate2) (crate med_crate3)
   (crate water_crate1) (crate water_crate2) (crate water_crate3)
   (crate food_crate1) (crate food_crate2) (crate food_crate3)
   (med_crate med_crate1) (med_crate med_crate2) (med_crate med_crate3)
   (water_crate water_crate1) (water_crate water_crate2) (water_crate water_crate3)
   (food_crate food_crate1) (food_crate food_crate2) (food_crate food_crate3)

   ;;a person is a person
   (person person1) (person person2) (person person3)
   ;an uav is an uav.
   (uav uav1) (uav uav2)
   ;; locations are locations.
   (location location1) (location location2) (location location3) (location location4) (location location5) ;; there are 2 empty locations in this problem instance.

   ;; one uav starts unloaded in this problem instance.
   (unloaded uav2)
   (loaded med_crate1 uav1) ;; an uav starts loaded in this problem instance

   ;; initial locations of all crates, uavs and people
   (at med_crate3 location1)
   (at water_crate1 location1)  (at water_crate3 location1)
   (at food_crate1 location1) (at food_crate2 location1)
   (at uav1 location1) (at uav2 location2)
   (at person1 location3) (at person2 location3) (at person3 location2)
   (in med_crate2 person2) (in water_crate2 person2) (in food_crate3 person3)
   )

  ;; The goal is to have all people have their corresponding crates:
  (:goal (and (in med_crate1 person1) (in food_crate1 person1) (in water_crate1 person1)
              (in med_crate2 person2) (in food_crate2 person2) (in water_crate2 person2)
              (in med_crate3 person3) (in food_crate3 person3) (in water_crate3 person3)))
  )
