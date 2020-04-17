---
date: 2020-03-27 4:39 PM
title: Configuremos Charles en el simulador de iOS con Xcode
description: Con Charles podremos depurar solicitudes de red en nuestras apps y poder testear de una forma rápida y sencilla nuestra capa de red. 
tags: Swift, Debugging, Spanish
---

# Configuremos Charles en el simulador de iOS con Xcode

### Antes de empezar con este post, tenemos que preguntarnos que es **Charles**.

<br />

"Charles es un proxy HTTP / monitor HTTP / proxy inverso que permite a un desarrollador ver todo el tráfico HTTP y SSL / HTTPS entre su máquina e Internet. Esto incluye solicitudes, respuestas y los encabezados HTTP (que contienen las cookies y la información de almacenamiento en caché)." <a href="https://www.charlesproxy.com" target="_blank">Charles</a>

<br />

Ahora, para que podemos usar **Charles**?. Básicamente para depurar solicitudes de red en nuestras aplicaciones. Hay muchas veces que como desarrolladores, queremos cambiar algunas solicitudes para ver si falla o forzar a la aplicación a recibir un valor incorrecto para ver cómo reacciona nuestra aplicación a esa solicitud. En otras ocasiones, solo queremos ver cuáles son las respuestas para descubrir por qué la aplicación falla. Hay muchas cosas que queremos probar, y a veces no sabemos cómo. Podemos hacer todo esto con **Charles**. Así que
empecemos.

<br />

- **Instala <a href="https://www.charlesproxy.com/download/" target="_blank">Charles</a> haciendo click en el link.**

<br />

- **Abre Charles y haz click en el Menú: Help > SSL Proxying, y selecciona _Install Charles Root Certificate in iOS Simulators_**.

<br />

<p align="center">
    <img src="/images/charles-tutorial/p1.png" width="70%" max-width="50%" alt="Charles" />
</p>

<br />

- **Ahora verifica que tienes la opción macOS Proxy seleccionada, para que podemos escuchar el trafico de red, así que selecciona en el Menú: Proxy > macOS Proxy**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p2.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- **Reinicie su simulador y asegúrese de estar grabando el tráfico entrante. Deberías ver en la parte inferior derecha la etiqueta _Recording_. Si no, simplemente haga click en _Start Recording_ buttom**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p3.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- **Ejecute la aplicación en el simulador, y en este momento, debería ver el tráfico entrante a la izquierda**

<br />

- **Ahora, debe asegurarse de habilitar SSL Proxying para las URL que desea probar. Hay dos formas de hacer esto:**

<br />

* La primera forma es haciendo click en Menú: Proxy > SSL Proxying Settings y luego agregue la URL que desee.

<br />

<p align="center">
    <img src="/images/charles-tutorial/p4.png" width="50%" max-width="50%" alt="Charles" />
    <img src="/images/charles-tutorial/p5.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- La segunda forma es cuando ve el tráfico entrante en la parte izquierda, simplemente haga click derecho en la URL que desee y haga click en _Enable SSL Proxying_

<br />

   <p align="center">
       <img src="/images/charles-tutorial/p6.png" width="30%" max-width="50%" alt="Charles" />
   </p>

<br />

- **Ahora reinicie el simulador y verá las respuestas.**

<br />

- **Si hace click en la respuesta y en el _Contenido_, puede ver el JSON que estamos obteniendo. Ahora podemos comprobar por qué recibimos un error en la aplicación si ese es el caso.**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p7.png" width="90%" max-width="50%" alt="Charles" />
</p>

<br />

- **Vamos a mapear localmente algunas respuestas para que podamos simularlas. Haga click derecho en la respuesta y haga click _Save Response..._**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p8.png" width="30%" max-width="50%" alt="Charles" />
</p>

<br />

- **Ahora haga click derecho en la solicitud y haga click en _Viewer Mappings..._ y copie lo que son el Host, el Port y la Path, porque lo vamos a usar a continuación.**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p9.png" width="30%" max-width="50%" alt="Charles" />
    <img src="/images/charles-tutorial/p10.png" width="30%" max-width="50%" alt="Charles" />
</p>

<br />

- **Ahora haga click en el Menú en: Tools > Map Local... y agrega uno nuevo. Para Local path: seleccionará la respuesta que guardó y para Host, Port y Path la completará con la información que obtuvo en el paso anterior.**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p11.png" width="30%" max-width="50%" alt="Charles" />
    <img src="/images/charles-tutorial/p12.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

<p align="center">
    <img src="/images/charles-tutorial/p13.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- **Ahora puede editar el JSON y comenzar a probar sus respuestas de red**

<br />

### Así es como configuras Charles para iOS Simulator. Para cualquier consulta puede contactarme en mi Twitter, Linkedin o correo electrónico.

<br />

## Muchas gracias
