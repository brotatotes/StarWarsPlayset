%% EECS 395
%% Assignment 3
%% Star Wars Theme
%% Eric Hao
%% LuoLei Zhao


conflicting_roles([politician, strategist, staffer, opposition_researcher, intern,
		   lobbyist, journalist, billionaire, foreign_dictator, televangelist, activist,
		   special_prosecutor, supreme_court_justice, lawyer,
		   drug_dealer, madam, hired_burgler, hacker, honey_trap, 'PR strategist',
		   militia_member ]).
		   
roles_relation(secret_parent/unknowing_child).
roles_relation(bounty_hunter/target).
roles_relation(master/apprentice).
	implies(role(X,master),role(X,force_sensitive))
	implies(role(X,apprentice,role(X,force_sensitive))
roles_relation(sith_lord/evil_minion).
	implies(role(X, sith_lord),
		role(X, imperial)).
	implies(role(X, evil_minion),
		role(X, imperial)).
	implies(role(X,sith_lord),
		role(X,force_sensitive))
roles_relation(rebel_commander/rebel_soldier).
	implies(role(X, rebel_soldier),
		role(X, rebel)).
	implies(role(X, rebel_commander),
		role(X, rebel)).
	roles_relation(droid/owner).
symmetric(stormtroopers_in_same_unit).
	implies(relationship(X, stormtroopers_in_same_unit, _),
		role(X, imperial)).
	implies(relationship(_, stormtroopers_in_same_unit, Y),
		role(Y, imperial)).
		
roles_relation(force_sensitive/skeptic_of_the_force).
conflicting_roles(force_sensitive,skeptic_of_the_force).
	
roles_relation(imperial/rebel).
	conflicting_roles(imperial, rebel).

roles_relation(alien_crime_lord/bounty_hunter).
roles_relation(clumsy_galaxy_food_deliverer/customer).

%
% Needs
%
need(get_revenge_on(X)) :-
	rival(X).
rival(enemy_commander).
rival(sith_lord).
rival(bounty_hunter).
drug(alien_crime_lord).

need(bring_balance_to_the_force).
need(crush_the_rebellion).
role_need(imperial, crush_the_rebellion).
role_need(apprentice, realize_potential_as_jedi).
role_need(rebel, deliver_secret_message_to_rebels).
role_need(target, escape_from_old_debts_to_crime_lord).

need(destroy_death_star).
contradiction(needs(C, destroy_death_star),
	      role(C, imperial)).
role_need(bounty_hunter,hunt_for_bounty).
need(make_quick_and_dirty_fortune).
contradiction(needs(C, destroy_death_star),
	      role(C, sith_lord)).
role_need(sith_lord,convert_everyone_to_dark_side).


%
% Objects
%
object(lightsaber).
object(dl_44_blaster_pistol).
object(secret_plans_to_the_death_star).
object(x_wing_starfighter).
object(broken_r2_series_droid).
object(locked_chest_only_the_force_can_open).
object(han_solo_frozen_in_carbonite).
object(controls_to_a_planet_destroying_laser).
	implies( has(X,controls_to_a_planet_destroying_laser), at(X,inside_the_death_star))
object(bag_of_live_midi-chlorians).
object(container_of_bacta).

location(inside_the_death_star).
location(middle_of_an_asteroid_field).
location(stranded_on_dagobah).
location(prison_in_Jabbas_Palace).
location(busy_street_in_cloud_city).
location(mos_eisley_cantina).
location(command_bridge_of_rebel_space_cruiser).
location(secret_factory_on_sullust).
location(audience_at_pod_race).
location(pit_of_carkoon_execution_platform).