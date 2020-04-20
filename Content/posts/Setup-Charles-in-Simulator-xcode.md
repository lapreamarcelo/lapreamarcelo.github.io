---
date: 2020-03-27 4:39
title: Let's setup Charles in iOS simulator with Xcode
description: With Charles with can debug the network requests in our apps so we can test in a simple way our network layer.
tags: Swift, Debugging, English
---

<link href="/MyTheme/MarkDown.css" rel="stylesheet"></link>

# Let's setup Charles in iOS simulator with Xcode

### Before starting with this post, we should ask ourselves what is **Charles**.

<br />

> "Charles is an HTTP proxy / HTTP monitor / Reverse Proxy that enables a developer to view all of the HTTP and SSL / HTTPS traffic between their machine and the Internet. This includes requests, responses and the HTTP headers (which contain the cookies and caching information)." <a href="https://www.charlesproxy.com" target="_blank">Charles</a>

<br />

Now, for what we can use **Charles**?. Basically to debug network requests in our apps. There are a lot of time that we as a Developer, wants to change some requests to see if it fails, or force the app to receive a wrong value to see how our app reacts to that request. Other time we just want to see what are the responses to figure it out why the app is failing. There are a lot of things we want to test, and sometimes we don't know how. We can do all of this with **Charles**. So let's begin.

<br />

- **Install <a href="https://www.charlesproxy.com/download/" target="_blank">Charles</a> by clicking in the link.**

<br />

- **Open Charles and click in the Menu: Help > SSL Proxying, and select _Install Charles Root Certificate in iOS Simulators_**.

<br />

<p align="center">
    <img src="/images/charles-tutorial/p1.png" width="70%" max-width="50%" alt="Charles" />
</p>

<br />

- **Now make sure you have the option macOS Proxy selected, so we can listen traffic, so click in the Menu: Proxy > macOS Proxy**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p2.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- **Restart your simulator and make sure you are recording the incoming traffic. You should see in the right bottom a _Recording_ label. If not, just click in _Start Recording_ buttom**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p3.png" width="50%" max-width="50%" alt="Charles" />
</p>

<br />

- **Run the app in the simulator, and at this moment, you should see the incoming traffic at the left**

<br />

- **Now, you have to make sure to enable SSL Proxying for the URLs that you want to test. There are two ways of doing this:**

<br />

* The first way is by clicking in the Menu: Proxy > SSL Proxying Settings and then add the URL that you want.

<br />

   <p align="center">
       <img src="/images/charles-tutorial/p4.png" width="50%" max-width="50%" alt="Charles" />
       <img src="/images/charles-tutorial/p5.png" width="50%" max-width="50%" alt="Charles" />
   </p>

<br />

- The second way is when you see the incoming traffic in the left view of Charles, just right click the URL that you want and click _Enable SSL Proxying_

<br />

   <p align="center">
       <img src="/images/charles-tutorial/p6.png" width="30%" max-width="50%" alt="Charles" />
   </p>

<br />

- **Now restart the simulator, and you will see the responses**

<br />

- **If you click the response, and the _Contents_ you can see the JSON that we are getting. Now we can check why we are getting an error in the app if that is the case.**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p7.png" width="90%" max-width="50%" alt="Charles" />
</p>

<br />

- **Let's map locally some responses so we can mock them. Right click in the response, and click _Save Response..._**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p8.png" width="30%" max-width="50%" alt="Charles" />
</p>

<br />

- **Now right click in the request and click _Viewer Mappings..._ and copy what the Host, Port and Path are, because we are going to use it next.**

<br />

<p align="center">
    <img src="/images/charles-tutorial/p9.png" width="30%" max-width="50%" alt="Charles" />
    <img src="/images/charles-tutorial/p10.png" width="30%" max-width="50%" alt="Charles" />
</p>

<br />

- **Now in the Menu click: Tools > Map Local... and add a new one. For Local path: you will select the response that you saved and for Host, Port and Path you will fill it with the information that you got in the previous step.**

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


- **Now you can edit the JSON and start testing your network responses**

<br />

### That's how you setup Charles for iOS Simulator. For any questions you can contact me at my Twitter, Linkedin or Email.

<br />

## Thanks again
