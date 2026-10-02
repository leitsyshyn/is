:- use_module(library(lists), [member/2, memberchk/2]).
:- use_module(library(dif), [dif/2]).

:- dynamic class/1, subclass_of/2, instance_of/2, attribute/3,
    class_requires_ingredient/2, class_requires_method/2,
    direct_requires_method/2, class_supports_method/2,
    direct_supports_method/2, class_requires_accessory/2,
    direct_requires_method_accessory/3, optional_ingredient/2,
    preparation_steps/2.

class(coffee_drink).
class(black_coffee).
class(milk_coffee).
class(ingredient).
class(coffee_beans).
class(water).
class(milk_base).
class(dairy_milk).
class(plant_based_milk).
class(citrus_ingredient).
class(equipment).
class(brewer).
class(espresso_machine).
class(french_press).
class(pour_over_brewer).
class(grinder).
class(manual_grinder).
class(electric_grinder).
class(kettle).
class(milk_frother).
class(accessory).
class(paper_filter).
class(milk_pitcher).
class(preparation_method).
class(brewing_method).
class(supporting_method).

subclass_of(black_coffee, coffee_drink).
subclass_of(milk_coffee, coffee_drink).
subclass_of(coffee_beans, ingredient).
subclass_of(water, ingredient).
subclass_of(milk_base, ingredient).
subclass_of(dairy_milk, milk_base).
subclass_of(plant_based_milk, milk_base).
subclass_of(citrus_ingredient, ingredient).
subclass_of(brewer, equipment).
subclass_of(espresso_machine, brewer).
subclass_of(french_press, brewer).
subclass_of(pour_over_brewer, brewer).
subclass_of(grinder, equipment).
subclass_of(manual_grinder, grinder).
subclass_of(electric_grinder, grinder).
subclass_of(kettle, equipment).
subclass_of(milk_frother, equipment).
subclass_of(accessory, equipment).
subclass_of(paper_filter, accessory).
subclass_of(milk_pitcher, accessory).
subclass_of(brewing_method, preparation_method).
subclass_of(supporting_method, preparation_method).

instance_of(espresso, black_coffee).
instance_of(americano, black_coffee).
instance_of(cappuccino, milk_coffee).
instance_of(latte, milk_coffee).
instance_of(filter_coffee, black_coffee).
instance_of(french_press_coffee, black_coffee).
instance_of(brazil_medium, coffee_beans).
instance_of(ethiopia_light, coffee_beans).
instance_of(house_blend_dark, coffee_beans).
instance_of(drinking_water, water).
instance_of(filtered_water, water).
instance_of(whole_milk, dairy_milk).
instance_of(lactose_free_milk, dairy_milk).
instance_of(almond_milk, plant_based_milk).
instance_of(banana_milk, plant_based_milk).
instance_of(lemon_slice, citrus_ingredient).
instance_of(orange_slice, citrus_ingredient).
instance_of(espresso_extraction, brewing_method).
instance_of(gravity_pour_over, brewing_method).
instance_of(immersion_brewing, brewing_method).
instance_of(water_heating, supporting_method).
instance_of(milk_frothing, supporting_method).
instance_of(espresso_machine_01, espresso_machine).
instance_of(espresso_machine_02, espresso_machine).
instance_of(french_press_01, french_press).
instance_of(french_press_02, french_press).
instance_of(pour_over_01, pour_over_brewer).
instance_of(pour_over_02, pour_over_brewer).
instance_of(manual_grinder_01, manual_grinder).
instance_of(manual_grinder_02, manual_grinder).
instance_of(electric_grinder_01, electric_grinder).
instance_of(electric_grinder_02, electric_grinder).
instance_of(kettle_01, kettle).
instance_of(kettle_02, kettle).
instance_of(milk_frother_01, milk_frother).
instance_of(milk_frother_02, milk_frother).
instance_of(paper_filter_01, paper_filter).
instance_of(paper_filter_02, paper_filter).
instance_of(milk_pitcher_01, milk_pitcher).
instance_of(milk_pitcher_02, milk_pitcher).

attribute(espresso, serving_volume_ml, 30).
attribute(americano, serving_volume_ml, 150).
attribute(cappuccino, serving_volume_ml, 180).
attribute(latte, serving_volume_ml, 250).
attribute(filter_coffee, serving_volume_ml, 250).
attribute(french_press_coffee, serving_volume_ml, 250).
attribute(brazil_medium, origin, brazil).
attribute(brazil_medium, roast_level, medium).
attribute(brazil_medium, bean_composition, [arabica]).
attribute(ethiopia_light, origin, ethiopia).
attribute(ethiopia_light, roast_level, light).
attribute(ethiopia_light, bean_composition, [arabica]).
attribute(house_blend_dark, origin, brazil).
attribute(house_blend_dark, origin, vietnam).
attribute(house_blend_dark, roast_level, dark).
attribute(house_blend_dark, bean_composition, [arabica, robusta]).
attribute(whole_milk, lactose_free, false).
attribute(whole_milk, dairy_free, false).
attribute(whole_milk, frothable, true).
attribute(lactose_free_milk, lactose_free, true).
attribute(lactose_free_milk, dairy_free, false).
attribute(lactose_free_milk, frothable, true).
attribute(almond_milk, base, almond).
attribute(almond_milk, lactose_free, true).
attribute(almond_milk, dairy_free, true).
attribute(almond_milk, frothable, true).
attribute(banana_milk, base, banana).
attribute(banana_milk, lactose_free, true).
attribute(banana_milk, dairy_free, true).
attribute(banana_milk, frothable, true).
attribute(espresso_extraction, grind_size, fine).
attribute(gravity_pour_over, grind_size, medium).
attribute(immersion_brewing, grind_size, coarse).
attribute(french_press_01, capacity_ml, 600).
attribute(french_press_02, capacity_ml, 350).
attribute(pour_over_01, capacity_ml, 500).
attribute(pour_over_01, filter_shape, conical).
attribute(pour_over_01, filter_size, 2).
attribute(pour_over_02, capacity_ml, 300).
attribute(pour_over_02, filter_shape, conical).
attribute(pour_over_02, filter_size, 1).
attribute(manual_grinder_01, grind_settings, [medium, coarse]).
attribute(manual_grinder_02, grind_settings, [fine, medium, coarse]).
attribute(electric_grinder_01, grind_settings, [fine, medium, coarse]).
attribute(electric_grinder_02, grind_settings, [fine, medium]).
attribute(kettle_01, capacity_ml, 1000).
attribute(kettle_02, capacity_ml, 600).
attribute(paper_filter_01, filter_shape, conical).
attribute(paper_filter_01, filter_size, 1).
attribute(paper_filter_02, filter_shape, conical).
attribute(paper_filter_02, filter_size, 2).
attribute(milk_pitcher_01, capacity_ml, 350).
attribute(milk_pitcher_01, material, stainless_steel).
attribute(milk_pitcher_02, capacity_ml, 600).
attribute(milk_pitcher_02, material, stainless_steel).

class_requires_ingredient(coffee_drink, coffee_beans).
class_requires_ingredient(coffee_drink, water).
class_requires_ingredient(milk_coffee, milk_base).

class_requires_method(coffee_drink, water_heating).

direct_requires_method(espresso, espresso_extraction).
direct_requires_method(americano, espresso_extraction).
direct_requires_method(cappuccino, espresso_extraction).
direct_requires_method(cappuccino, milk_frothing).
direct_requires_method(latte, espresso_extraction).
direct_requires_method(latte, milk_frothing).
direct_requires_method(filter_coffee, gravity_pour_over).
direct_requires_method(french_press_coffee, immersion_brewing).

class_supports_method(espresso_machine, espresso_extraction).
class_supports_method(espresso_machine, water_heating).
class_supports_method(french_press, immersion_brewing).
class_supports_method(pour_over_brewer, gravity_pour_over).
class_supports_method(kettle, water_heating).
class_supports_method(milk_frother, milk_frothing).

direct_supports_method(espresso_machine_01, milk_frothing).

class_requires_accessory(pour_over_brewer, paper_filter).

direct_requires_method_accessory(espresso_machine_01, milk_frothing, milk_pitcher).

optional_ingredient(filter_coffee, lemon_slice).
optional_ingredient(filter_coffee, orange_slice).

preparation_steps(espresso,
    [grind_finely, heat_water, extract_espresso]).
preparation_steps(americano,
    [grind_finely, heat_water, extract_espresso, add_hot_water]).
preparation_steps(cappuccino,
    [grind_finely, heat_water, extract_espresso, froth_milk, combine_milk_and_foam]).
preparation_steps(latte,
    [grind_finely, heat_water, extract_espresso, froth_milk, add_milk_and_thin_foam]).
preparation_steps(filter_coffee,
    [grind_medium, heat_water, place_filter, add_grounds, pour_water, optionally_add_citrus]).
preparation_steps(french_press_coffee,
    [grind_coarsely, heat_water, add_grounds_and_water, steep, press_plunger, pour]).

is_subclass_of(Child, Ancestor) :-
    class_path(Child, Ancestor, [Child]),
    dif(Child, Ancestor).

class_path(Child, Ancestor, _) :-
    subclass_of(Child, Ancestor).
class_path(Child, Ancestor, Visited) :-
    subclass_of(Child, Parent),
    \+ memberchk(Parent, Visited),
    class_path(Parent, Ancestor, [Parent | Visited]).

is_instance_of(Object, Class) :-
    instance_of(Object, Class).
is_instance_of(Object, Class) :-
    instance_of(Object, DirectClass),
    is_subclass_of(DirectClass, Class).

requires_ingredient(Drink, IngredientClass) :-
    is_instance_of(Drink, Class),
    class_requires_ingredient(Class, IngredientClass).

requires_method(Drink, Method) :-
    direct_requires_method(Drink, Method).
requires_method(Drink, Method) :-
    is_instance_of(Drink, Class),
    class_requires_method(Class, Method).

supports_method(Device, Method) :-
    direct_supports_method(Device, Method).
supports_method(Device, Method) :-
    is_instance_of(Device, Class),
    class_supports_method(Class, Method).

requires_accessory(Device, Method, AccessoryClass) :-
    supports_method(Device, Method),
    (   is_instance_of(Device, Class),
        class_requires_accessory(Class, AccessoryClass)
    ;   direct_requires_method_accessory(Device, Method, AccessoryClass)
    ).

required_grind(Drink, Grind) :-
    requires_method(Drink, Method),
    is_instance_of(Method, brewing_method),
    attribute(Method, grind_size, Grind).

suitable_grinder(Drink, Grinder) :-
    required_grind(Drink, Grind),
    is_instance_of(Grinder, grinder),
    attribute(Grinder, grind_settings, Settings),
    memberchk(Grind, Settings).

compatible_milk(Drink, Milk) :-
    requires_ingredient(Drink, milk_base),
    is_instance_of(Milk, milk_base),
    (   requires_method(Drink, milk_frothing)
    ->  attribute(Milk, frothable, true)
    ;   true
    ).

compatible_filter(Brewer, Filter) :-
    is_instance_of(Brewer, pour_over_brewer),
    is_instance_of(Filter, paper_filter),
    attribute(Brewer, filter_shape, Shape),
    attribute(Filter, filter_shape, Shape),
    attribute(Brewer, filter_size, Size),
    attribute(Filter, filter_size, Size).

method_available(Method, Equipment) :-
    member(Device, Equipment),
    supports_method(Device, Method),
    forall(requires_accessory(Device, Method, Class),
        (   member(Accessory, Equipment),
            is_instance_of(Accessory, Class),
            (   Class == paper_filter
            ->  compatible_filter(Device, Accessory)
            ;   true
            )
        )).

can_prepare(Drink, Ingredients, Equipment) :-
    ground(Ingredients-Equipment),
    is_list(Ingredients),
    is_list(Equipment),
    forall(member(Ingredient, Ingredients), is_instance_of(Ingredient, ingredient)),
    forall(member(Device, Equipment), is_instance_of(Device, equipment)),
    is_instance_of(Drink, coffee_drink),
    forall(requires_ingredient(Drink, Class),
        (   member(Ingredient, Ingredients),
            is_instance_of(Ingredient, Class),
            (   Class == milk_base
            ->  compatible_milk(Drink, Ingredient)
            ;   true
            )
        )),
    once((member(Grinder, Equipment), suitable_grinder(Drink, Grinder))),
    forall(requires_method(Drink, Method), method_available(Method, Equipment)).

disjoint_class(black_coffee, milk_coffee).
disjoint_class(dairy_milk, plant_based_milk).

invalid_class_name(Class) :-
    class(Class),
    \+ atom(Class).

class_instance_collision(Object) :-
    class(Object),
    instance_of(Object, _).

invalid_subclass_relation(Child, Parent) :-
    subclass_of(Child, Parent),
    \+ (ground(Child-Parent), class(Child), class(Parent)).

invalid_instance_declaration(Object, Class) :-
    instance_of(Object, Class),
    \+ (ground(Object-Class), atom(Object), class(Class)).

invalid_equipment_method(Device, Method) :-
    direct_supports_method(Device, Method),
    \+ (   ground(Device-Method),
           is_instance_of(Device, equipment),
           is_instance_of(Method, preparation_method)
       ).

hierarchy_cycle(Class) :-
    class(Class),
    class_path(Class, Class, [Class]).

multiple_direct_classes(Object, Classes) :-
    setof(Class, instance_of(Object, Class), Classes),
    Classes = [_, _ | _].

incompatible_membership(Object, First, Second) :-
    disjoint_class(First, Second),
    is_instance_of(Object, First),
    is_instance_of(Object, Second).

invalid_roast_level(Beans, Level) :-
    attribute(Beans, roast_level, Level),
    \+ (   ground(Beans-Level),
           is_instance_of(Beans, coffee_beans),
           memberchk(Level, [light, medium, dark])
       ).

missing_roast_level(Beans) :-
    is_instance_of(Beans, coffee_beans),
    \+ attribute(Beans, roast_level, _).

conflicting_roast_levels(Beans, First, Second) :-
    attribute(Beans, roast_level, First),
    attribute(Beans, roast_level, Second),
    First @< Second.

invalid_brewing_method_count(Drink, Methods) :-
    is_instance_of(Drink, coffee_drink),
    findall(Method,
        (requires_method(Drink, Method), is_instance_of(Method, brewing_method)),
        Found),
    sort(Found, Methods),
    Methods \= [_].

missing_preparation_steps(Drink) :-
    is_instance_of(Drink, coffee_drink),
    \+ preparation_steps(Drink, _).

unsupported_accessory_method(Device, Method) :-
    direct_requires_method_accessory(Device, Method, _),
    \+ supports_method(Device, Method).

contradictory_dairy_property(Milk, Value) :-
    is_instance_of(Milk, dairy_milk),
    attribute(Milk, dairy_free, Value),
    Value \== false.

consistent_model :-
    \+ invalid_class_name(_),
    \+ class_instance_collision(_),
    \+ invalid_subclass_relation(_, _),
    \+ invalid_instance_declaration(_, _),
    \+ invalid_equipment_method(_, _),
    \+ hierarchy_cycle(_),
    \+ multiple_direct_classes(_, _),
    \+ incompatible_membership(_, _, _),
    \+ invalid_roast_level(_, _),
    \+ missing_roast_level(_),
    \+ conflicting_roast_levels(_, _, _),
    \+ invalid_brewing_method_count(_, _),
    \+ missing_preparation_steps(_),
    \+ unsupported_accessory_method(_, _),
    \+ contradictory_dairy_property(_, _).

example_query(drinks,
    setof(Drink, is_instance_of(Drink, coffee_drink), _)).
example_query(cappuccino_ingredients,
    setof(Class, requires_ingredient(cappuccino, Class), _)).
example_query(latte_methods,
    setof(Method, requires_method(latte, Method), _)).
example_query(americano_steps,
    preparation_steps(americano, _)).
example_query(light_roast,
    setof(Beans, attribute(Beans, roast_level, light), _)).
example_query(blend_origins,
    setof(Origin, attribute(house_blend_dark, origin, Origin), _)).
example_query(espresso_grinders,
    setof(Grinder, suitable_grinder(espresso, Grinder), _)).
example_query(lactose_free_latte_options,
    setof(Milk, (compatible_milk(latte, Milk), attribute(Milk, lactose_free, true)), _)).
example_query(dairy_free_latte_options,
    setof(Milk, (compatible_milk(latte, Milk), attribute(Milk, dairy_free, true)), _)).
example_query(filter_additions,
    setof(Ingredient, optional_ingredient(filter_coffee, Ingredient), _)).
example_query(matching_filters,
    setof(Filter, compatible_filter(pour_over_01, Filter), _)).
example_query(available_drinks,
    setof(Drink,
        can_prepare(Drink,
            [brazil_medium, drinking_water, almond_milk],
            [espresso_machine_01, electric_grinder_01, milk_pitcher_01]),
        _)).
example_query(filter_without_lemon,
    can_prepare(filter_coffee,
        [ethiopia_light, filtered_water],
        [pour_over_01, manual_grinder_01, kettle_01, paper_filter_02])).
example_query(missing_milk,
    can_prepare(cappuccino,
        [brazil_medium, drinking_water],
        [espresso_machine_01, electric_grinder_01, milk_pitcher_01])).
example_query(wrong_filter,
    can_prepare(filter_coffee,
        [ethiopia_light, filtered_water],
        [pour_over_01, manual_grinder_01, kettle_01, paper_filter_01])).
example_query(model_consistency,
    consistent_model).
