-- cities and states using joins

SELECT cities.id, cities.name, states.name FROM cities JOIN states ON cities.state_id=states.id;