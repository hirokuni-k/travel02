require "./methods.rb"
plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

disp(plans)
chosen_plan = choose(plans)
number_of_people = determine_the_number_of_people(chosen_plan)
caluculate_charges(chosen_plan, number_of_people)
