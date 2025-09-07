# Mensajeros de Película
## Contexto

  Steven Spielberg está por cumplir años y George Lucas quiere realizarle un regalo. 
  Por eso compró un álbum de figuritas de ET y lo envolvió en un paquete para ser entregado por una empresa de mensajería, que tiene 3 personas empleadas: Jean Gray, Neo y Sara Connor. 
  George pagó $10 por el envío, pero no estaba seguro del paradero de Steven, pues es posible que ande paseando por Brooklyn o que esté haciendo de las suyas en la matrix. 

## Requerimiento del sistema:  

La empresa utiliza un sistema desarrollado en objetos para identificar que persona llevará ese paquete. De todos los requerimientos que tiene el sistema, en este ejercicio sólo se pide resolver el siguiente: **Determinar si ese _paquete_ puede ser entregado por una _persona_ en un determinado _destino_**, teniendo en cuenta las siguientes reglas.

### Reglas
  - Para que el paquete pueda ser entregado debe estar pago. En el ejemplo mencionado está pago, pero no siempre es así. Puede variar. 
  - Cada destino le pone restricciones a las personas que quieren llegar a él. Existen dos destinos posibles:
    1. *Puente de Brooklyn*: deja pasar a todo lo que pese hasta una tonelada (1000 kilos).
    2. *La Matrix*: deja entrar a quien pueda hacer una llamada.

 - Las personas mensajeras tienen características particulares:
   1. *Jean Gray*:Posee poderes telepáticos y telequinesicos, es decir que puede comunicarse con cualquier persona en cualquier momento (puede llamar siempre). Su peso es de 65 kg.
   2. *Neo*: Neo vuela, así que no pesa nada. Y anda con celular, el muy canchero. El tema es que a veces no puede llamar porque se queda sin crédito.
   3. *Sara Connor*:  Tiene un peso propio que varía con el tiempo (es configurable). Viaja en moto ó camión. A ese peso propio se le suma el peso de su vehículo. La moto pesa 100kg. En cambio, el camión pesa media tonelada. Si el camión tiene acoplados, hay que agregar media tonelada adicional por cada uno de ellos. Sara no puede llamar a nadie.

**Aclaración:** Para el cálculo del peso, el peso del paquete es despreciable.

## Algunos casos de prueba:
1. El paquete de George que no está pago no puede ser llevado por Neo a la matrix.
2. El paquete de George que sí está pago puede ser llevado por Jean a la matrix
3. El paquete de George que sí está pago no puede ser llevado por Sara (que pesa 70kg) a Brooklyn si es que utiliza un camión con un acoplado .
4. La entrega anterior puede hacerse si Sara usa una moto
