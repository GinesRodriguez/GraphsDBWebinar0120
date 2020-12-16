SELECT coches.marca
     , alquiler.dias

  FROM coches
     , alquiler
     , persona

 WHERE alquiler.matricula = coches.matricula
   AND alquiler.dni       = personas.dni

   AND personas.nombre = 'Antonio'



SELECT coches.marca
     , alquiler.dias

  FROM alquiler
 INNER JOIN coches  ON alquiler.matricula = coches.matricula
 INNER JOIN persona ON alquiler.dni       = personas.dni

 WHERE personas.nombre = 'Antonio'
