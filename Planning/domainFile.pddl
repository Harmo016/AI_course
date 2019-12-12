;; This is a domain for the Emergency Services Logistics problem in TDDC17

;; In this domain we have 3 type of crates(med,food,water)
;; One or more uavs fly between locations and load/unload crates.
;; Crates are unloaded to people.

(define (domain logistics)
  (:requirements :strips)
  (:predicates

   ;; Static predicates:
   (med_crate ?m) (food_crate ?f) (uav ?u) (water_crate ?w)
   (person ?p) (crate ?c) (location ?l)

   ;; Non-static predicates:
   (at ?x ?l) ;; ?x (crates, uav, people) is at location ?l
   (in ?k ?u) ;; ?k (crates in people)
   (loaded ?c ?u) ;; crates loaded on uavs.
   (unloaded ?u) ;; unloaded if uavs are empty.
   )

  ;; Actions for loading and unloading crates.
  ;; By declaring all crates to be a crate we can use load/unload for them all
  ;; we check if uav is at the same location as crate and if uav is unloaded.
  (:action load
    :parameters (?c ?u ?l) ;; all types of crates can be loaded to the uav
    :precondition (and (crate ?c) (uav ?u) (location ?l)
		       (at ?u ?l) (at ?c ?l)(unloaded ?u))
    :effect (and (loaded ?c ?u) (not (at ?c ?l)) (not (unloaded ?u))))

  ;; We check if uav is at a location with a person and unload the crate at it. If the crate is the one that the person
  ;; needs is something that is handled in the problem file definition.
  (:action unload
    :parameters (?c ?u ?l ?p)
    :precondition (and (crate ?c) (uav ?u) (location ?l) (person ?p)
		       (at ?u ?l) (loaded ?c ?u) (at ?p ?l))
    :effect (and (in ?c ?p) (not(loaded ?c ?u)) (unloaded ?u)))

  ;;Flies between locations. Since they are drones adjacency is not accounted for
  (:action fly
      :parameters (?u ?l1 ?l2)
      :precondition (and (uav ?u) (location ?l1) (location ?l2)
  		       (at ?u ?l1))
      :effect (and (at ?u ?l2) (not (at ?u ?l1))))
    )
