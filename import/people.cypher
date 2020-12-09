LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/GinesRodriguez/GraphsDBWebinar0120/develop/import/people.csv'
AS line
CREATE (:person {personId: line.id, personName: line.name});
//RETURN line.id, line.person;
