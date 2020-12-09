LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/adam-cowley/northwind-neo4j/master/data/orders.csv" AS row
MATCH (o:Order {orderID: row.orderID})
MATCH (employee:Employee {employeeID: row.employeeID})
MERGE (employee)-[:SOLD]->(o);