# Interpolación

El problema de construir una función continua a partir de datos discretos es inevitable cuando estos datos deben ser manipulados de cierta manera que se necesita información no incluida explícitamente. Para resolver este problema, el esquema más utilizado es la **interpolación** que consiste en construir una función que aproxime de la manera más perfecta a la función original desconocida en los puntos de la medición.

La interpolación de imágenes es una operación muy importante usada en imagenología médica, procesamiento de imágenes y graficación por computadora. Existe una gran variedad de métodos de interpolación reportados en la literatura. La interpolación de imágenes es necesaria en una gran variedad de situaciones como las que se mencionan a continuación:

1) Representar imágenes o volúmenes a un nivel deseado de discretización modificando para ello la tasa de muestreo de los pixeles o voxels (voxel, elemento de volumen equivalente a pixel en 2D).

2) Cambiar la orientación de alguna rejilla de discretización.

3) Combinar la información sobre un mismo objeto desde múltiples modalidades en una sola imagen (fusión de imágenes). Por ejemplo, una resonancia magnética (MRI) y una Tomografía por Emisión de Positrones (PET) del cerebro de un paciente.

4) Cambio de rejilla de discretización, por ejemplo de polares a rectangulares.

Probablemente el uso más común de la interpolación sea la mencionada en el punto número 1, donde por lo regular se desean analizar ciertos detalles de una imagen a una escala y otros detalles a una escala más fina (zoom).

Algunas transformaciones pueden involucrar un cambio de coordenadas, por ejemplo, la función de conversión de coordenadas polares, adquiridas a través de un transductor de ultrasonido, a coordenadas cartesianas necesario para la visualización de la imagen en un monitor. En general, casi cualquier transformación geométrica sobre una imagen o un volumen necesita que se efectué una interpolación.

La calidad de la imagen o volumen obtenidos dependerá del proceso utilizado para realizar la interpolación así como también del trabajo necesario para que una computadora lo ejecute en un tiempo razonable.
