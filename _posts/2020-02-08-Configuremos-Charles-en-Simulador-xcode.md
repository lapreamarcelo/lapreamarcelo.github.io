---
layout: post
title: "Configuremos Charles en el simulador de iOS con Xcode"
author: marcelolaprea
tags: [Swift, iOS, Xcode, Networking, Debugging, Spanish]
---

Antes de empezar con este post, tenemos que preguntarnos que es **Charles**. 

> "Charles es un proxy HTTP / monitor HTTP / proxy inverso que permite a un desarrollador ver todo el tráfico HTTP y SSL / HTTPS entre su máquina e Internet. Esto incluye solicitudes, respuestas y los encabezados HTTP (que contienen las cookies y la información de almacenamiento en caché)." 
<a href="https://www.charlesproxy.com" target="_blank">Charles</a>

Ahora, para que podemos usar **Charles**?. Básicamente para depurar solicitudes de red en nuestras aplicaciones. Hay muchas veces que como desarrolladores, queremos cambiar algunas solicitudes para ver si falla o forzar a la aplicación a recibir un valor incorrecto para ver cómo reacciona nuestra aplicación a esa solicitud. En otras ocasiones, solo queremos ver cuáles son las respuestas para descubrir por qué la aplicación falla. Hay muchas cosas que queremos probar, y a veces no sabemos cómo. Podemos hacer todo esto con **Charles**. Así que 
empecemos.

* **Instala <a href="https://www.charlesproxy.com/download/" target="_blank">Charles</a> haciendo click en el link.**

* **Abre Charles y haz click en el Menú: Help > SSL Proxying, y selecciona *Install Charles Root Certificate in iOS Simulators***.

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p1.png" alt="Charles">

* **Ahora verifica que tienes la opción macOS Proxy seleccionada, para que podemos escuchar el trafico de red, así que selecciona en el Menú: Proxy > macOS Proxy**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p2.png" alt="Charles">

* **Reinicie su simulador y asegúrese de estar grabando el tráfico entrante. Deberías ver en la parte inferior derecha la etiqueta *Recording*. Si no, simplemente haga click en *Start Recording* buttom**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p3.png" alt="Charles">

* **Ejecute la aplicación en el simulador, y en este momento, debería ver el tráfico entrante a la izquierda**

* **Ahora, debe asegurarse de habilitar SSL Proxying para las URL que desea probar. Hay dos formas de hacer esto:**


   * La primera forma es haciendo click en Menú: Proxy > SSL Proxying Settings y luego agregue la URL que desee.

   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p4.png" alt="Charles">


   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p5.png" alt="Charles">


   * La segunda forma es cuando ve el tráfico entrante en la parte izquierda, simplemente haga click derecho en la URL que desee y haga click en *Enable SSL Proxying*

   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p6.png" alt="Charles">

* **Ahora reinicie el simulador y verá las respuestas.**

* **Si hace clic en la respuesta y en el *Contenido*, puede ver el JSON que estamos obteniendo. Ahora podemos comprobar por qué recibimos un error en la aplicación si ese es el caso.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p7.png" alt="Charles">

* **Vamos a mapear localmente algunas respuestas para que podamos simularlas. Haga click derecho en la respuesta y haga click *Save Response...***

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p8.png" alt="Charles">

* **Ahora haga click derecho en la solicitud y haga click en *Viewer Mappings...* y copie lo que son el Host, el Port y la Path, porque lo vamos a usar a continuación.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p9.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p10.png" alt="Charles">

* **Ahora haga click en el Menú en: Tools > Map Local... y agrega uno nuevo. Para Local path: seleccionará la respuesta que guardó y para Host, Port y Path la completará con la información que obtuvo en el paso anterior.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p11.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p12.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p13.png" alt="Charles">

* **Ahora puede editar el JSON y comenzar a probar sus respuestas de red**

### Así es como configuras Charles para iOS Simulator. Para cualquier consulta puede contactarme en mi Twitter, Linkedin o correo electrónico. Si cometí algún error en la publicación, no dude en escribirme para que pueda solucionarlo.

## Muchas gracias