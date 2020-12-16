MATCH (N) DELETE N;

CREATE CONSTRAINT ON (p:Person) ASSERT p.name IS UNIQUE;

CREATE (p1:Person {name:"Old Mr. Dashwood"});
CREATE (p2:Person {name:"Old Mrs. Dashwood"});
CREATE (p3:Person {name:"Mr. Henry Dashwood"});
CREATE (p4:Person {name:"Mr. Henry Dasswood's first wife"});
CREATE (p5:Person {name:"Mr. Henry Dasswood's son"});
CREATE (p6:Person {name:"Mr. Henry Dashwood's second wife"});
CREATE (p7:Person {name:"Mr. Henry Dashwood's first daughter"});
CREATE (p8:Person {name:"Mr. Henry Dashwood's second daughter"});
CREATE (p9:Person {name:"Mr. Henry Dashwood's third daughter"});

MATCH (p:Person)
  WHERE p.Name="Old Mr. Dashwood"
RETURN p;

MATCH (p:Person)
  WHERE p.Name="Mr. Henry Dashwood"
RETURN p;
