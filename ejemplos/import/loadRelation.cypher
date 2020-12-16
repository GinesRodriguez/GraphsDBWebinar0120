LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/GinesRodriguez/GraphsDBWebinar0120/develop/ejemplos/import/relation.csv" AS row
//RETURN row.nameFrom, row.relation, row.nameTo;
MATCH (pFrom:Person {name: row.nameFrom})
MATCH (pTo:Person   {name: row.nameTo})
//RETURN pFrom, pTo
MERGE (pFrom)-[:_RELATED_]->(pTo);