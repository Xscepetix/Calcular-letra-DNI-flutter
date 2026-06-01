Calculador de DNI Español

Este es un ejercicio realizado en el curso de DAM

El objetivo principal de este programa es aplicar la lógica matemática y el control de flujos para calcular de forma automática la letra correspondiente a cualquier número de DNI español, siguiendo el algoritmo oficial.

---

¿Cómo funciona?
El programa solicita al usuario el número de su DNI (sin la letra) y aplica las reglas del Ministerio del Interior:
1. Toma el número completo del DNI.
2. Calcula el resto que da al dividir ese número entre 23.
3. Según el resultado (un número del 0 al 22), el algoritmo asigna la letra correspondiente utilizando una cadena de caracteres indexada ("TRWAGMYFPDXBNJZSQVHLCKE").

Aquí puedes ver una captura del programa en funcionamiento:
<img width="504" height="229" alt="image" src="https://github.com/user-attachments/assets/b144bb46-cd0c-45a2-aa72-b7a8d7abc69d" />
<img width="503" height="230" alt="image" src="https://github.com/user-attachments/assets/10654f57-9bf3-4fd3-ab6c-0ef9f3415ea3" />

En caso que se introducca un valor de menos o de más, el programa le mostrará un mensaje al usuario
<img width="503" height="233" alt="image" src="https://github.com/user-attachments/assets/64a629e0-25e7-4a40-b51c-1bfb0e8c282d" />

---

Tecnologías y conceptos practicados
* **Lenguaje:** Java 
* **Entorno:** Ejecución por consola / Terminal.
* **Conceptos clave de programación:**
  * Uso del operador de módulo (`%`) para aritmética.
  * Manipulación de strings y arrays/vectores para la asignación de letras.
  * Control de flujos y condicionales.
  * Captura y validación de datos de entrada (para asegurar que el usuario introduce un número válido de 8 dígitos).

---

Futuras Actualizaciones
- Añadir soporte para el cálculo de NIE.
- Implementar un validador completo que verifique si un DNI entero (con letra incluida) es real o falso.
