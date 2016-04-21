%% EECS 395
%% Assignment 3
%% Star Wars Theme
%% Eric Hao, ezh825
%% LuoLei Zhao, lzg431
%% Shuai He, shb786

%
% Roles
% 
roles_relation(secret_parent/unknowing_child).

roles_relation(bounty_hunter/target).
conflicting_roles(bounty_hunter,sith_lord).

roles_relation(master/apprentice).
implies(role(X,master),role(X,force_sensitive)).
implies(role(X,apprentice),role(X,force_sensitive)).
contradiction(needs(X,realize_potential_as_jedi),role(X,master)).
left_unique(master/apprentice).
conflicting_roles(apprentice,sith_lord).

roles_relation(sith_lord/evil_minion).
implies(role(X, sith_lord),
	role(X, imperial)).
implies(role(X, evil_minion),
	role(X, imperial)).
implies(role(X,sith_lord),
	role(X,force_sensitive)).
conflicting_roles(sith_lord,rebel).
conflicting_roles(evil_minion,rebel).
conflicting_roles(evil_minion,sith_lord).
right_unique(evil_minion,sith_lord).

roles_relation(rebel_commander/rebel_soldier).
implies(role(X, rebel_soldier),
	role(X, rebel)).
implies(role(X, rebel_commander),
	role(X, rebel)).
left_unique(rebel_commander/rebel_soldier).
conflicting_roles([rebel_commander,rebel_soldier,stormtroopers_in_same_unit,sith_lord]).
conflicting_roles(rebel_commander,apprentice).

roles_relation(droid/owner).
conflicting_roles(droid,secret_parent).
conflicting_roles(droid,master).
conflicting_roles(droid,apprentice).
conflicting_roles(droid,sith_lord).
conflicting_roles(droid,stormtroopers_in_same_unit).
conflicting_roles(droid,alien_crime_lord).
conflicting_roles(droid,unknowing_child).
conflicting_roles(droid,rebel_commander).
conflicting_roles(droid,rebel_soldier).
right_unique(droid/owner).

symmetric(stormtroopers_in_same_unit).
implies(relationship(X, stormtroopers_in_same_unit, _),
	role(X, imperial)).
implies(relationship(_, stormtroopers_in_same_unit, Y),
	role(Y, imperial)).
conflicting_roles(stormtroopers_in_same_unit,rebel).
conflicting_roles(stormtroopers_in_same_unit,sith_lord).

roles_relation(force_sensitive/skeptic_of_the_force).
conflicting_roles(force_sensitive,skeptic_of_the_force).
implies(role(X,sith_lord),role(X,force_sensitive)).
implies(role(X,master),role(X,force_sensitive)).
implies(role(X,apprentice),role(X,force_sensitive)).

roles_relation(imperial/rebel).
conflicting_roles(imperial, rebel).
conflicting_roles(imperial,alien_crime_lord).
conflicting_roles(rebel,alien_crime_lord).

roles_relation(alien_crime_lord/bounty_hunter).
conflicting_roles(alien_crime_lord,bounty_hunter).

roles_relation(clumsy_galaxy_food_deliverer/customer).
conflicting_roles(sith_lord,clumsy_galaxy_food_deliverer).
conflicting_roles(master,clumsy_galaxy_food_deliverer).
conflicting_roles(alien_crime_lord,clumsy_galaxy_food_deliverer).
conflicting_roles(bounty_hunter,clumsy_galaxy_food_deliverer).
conflicting_roles(rebel_commander,clumsy_galaxy_food_deliverer).

roles_relation(bartender/alcoholic).
conflicting_roles(master,bartender).
conflicting_roles(sith_lord,bartender).
conflicting_roles(droid,alcoholic).
implies(role(X,alcoholic),at(X,inside_theed_hangar)).
conflicting_roles([bartender,former_galactic_senator,imperial_senator]).
conflicting_roles(bartender,alien_crime_lord).

roles_relation(secret_admirer/heart_broken_loner).

roles_relation(rich_sibling/homeless_sibling).
conflicting_roles([rich_sibling,homeless_sibling,droid]).


roles_relation(former_galactic_senator/imperial_senator).
conflicting_roles(imperial_senator,rebel).
conflicting_roles(imperial_senator,rebel_commander).
conflicting_roles(imperial_senator,rebel_soldier).
implies(role(X,imperial_senator),
	role(X,imperial)).



%
% Needs
%
need(suppress_anger_issues).

need(bring_balance_to_the_force).
contradiction(needs(X,bring_balance_to_the_force),needs(X,crush_the_rebellion)).

need(crush_the_rebellion).

role_need(imperial, crush_the_rebellion).

role_need(apprentice, realize_potential_as_jedi).

role_need(rebel, deliver_secret_message_to_rebels).

role_need(target, escape_from_old_debts_to_crime_lord).
contradiction(role(X, rich_sibling),needs(X,escape_from_old_debts_to_crime_lord)).

need(destroy_death_star).
contradiction(needs(C, destroy_death_star),role(C, imperial)).

role_need(bounty_hunter,hunt_for_bounty).

need(make_quick_and_dirty_fortune).
contradiction(needs(C, destroy_death_star),role(C, sith_lord)).

role_need(sith_lord,convert_everyone_to_dark_side).

need(to_satisfy_bloodthirst).

need(to_find_love).

role_need(alcoholic,alcohol).

role_need(skeptic_of_the_force,to_find_the_truth).

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
implies(has(X,controls_to_a_planet_destroying_laser), at(X,inside_the_death_star)).
object(bag_of_live_midi-chlorians).
object(container_of_bacta).
object(golden_anklet).
object(pitcher_of_lum).
object(basket_of_wookiee_ookiees).
object(rangefinder).
object(holojournal).

%
% Locations
%
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
location(inside_theed_hangar).
location(crowd_in_outlander_club).
location(top_of_great_temple).
location(yodas_house).
location(balcony_of_ewok_treehouse).