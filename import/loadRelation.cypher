LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/GinesRodriguez/GraphsDBWebinar0120/develop/import/relations.csv" AS row
//RETURN row.nameFrom, row.relation, row.nameTo
MATCH (pFrom:Person {name: row.nameFrom})
MATCH (pTo:Person   {name: row.nameTo})
//RETURN pFrom.name, pTo.name
MERGE (pFrom)-[:_IS_UNCLE_OF]->(pTo)
;
