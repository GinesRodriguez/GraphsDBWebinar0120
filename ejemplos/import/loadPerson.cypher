LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/GinesRodriguez/GraphsDBWebinar0120/develop/ejemplos/import/person.csv'
AS line
//RETURN line.name;
CREATE (:Person {name: line.name});