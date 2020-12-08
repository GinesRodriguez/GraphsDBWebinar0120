LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/GinesRodriguez/GraphsDBWebinar0120/develop/dat/family.csv'
AS line
RETURN line.id,line.person
