CREATE CONSTRAINT ON (P:Persona) ASSERT P.dni IS UNIQUE;

CREATE (P:Persona { dni:"1R", nombre:"Rosa"   , ciudad:"Roma"       });
CREATE (P:Persona { dni:"2W", nombre:"Walter" , ciudad:"Washington" });
CREATE (P:Persona { dni:"3A", nombre:"Antonio", ciudad:"Almeria"    });
CREATE (P:Persona { dni:"4G", nombre:"Gene"   , ciudad:"Ginebra"    });
CREATE (P:Persona { dni:"5M", nombre:"Maria"  , ciudad:"Ginebra"    });

CREATE CONSTRAINT ON (C:Coche) ASSERT C.matricula IS UNIQUE;

CREATE (C:Coche { matricula:"R1", marca:"Alfa Romeo" });
CREATE (C:Coche { matricula:"W2", marca:"Volkswagen" });
CREATE (C:Coche { matricula:"A3", marca:"Audi"       });
CREATE (C:Coche { matricula:"G4", marca:"GMC"        });
CREATE (C:Coche { matricula:"A4", marca:"Audi"       });


MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "1R" AND C.matricula = "R1"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;

MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "2W" AND C.matricula = "W2"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;

MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "3A" AND C.matricula = "A3"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;

MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "3A" AND C.matricula = "A4"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;

MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "4G" AND C.matricula = "G4"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;

MATCH (P:Persona),(C:Coche)
  WHERE P.dni = "5M" AND C.matricula = "G4"
CREATE (P)-[R:ALQUILA]->(C)
RETURN R;


MATCH (P:Persona)
WHERE (P.nombre = "Rosa")
//RETURN P;
DELETE P;

MATCH (N) RETURN N;