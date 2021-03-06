---
layout: post
title: "Let's setup Charles in iOS simulator with Xcode"
author: marcelolaprea
tags: [Swift, iOS, Xcode, Networking, Debugging, English]
header-img: "/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/header.png"
---

Before starting with this post, we should ask ourselves what is **Charles**.

> "Charles is an HTTP proxy / HTTP monitor / Reverse Proxy that enables a developer to view all of the HTTP and SSL / HTTPS traffic between their machine and the Internet. This includes requests, responses and the HTTP headers (which contain the cookies and caching information)."
> <a href="https://www.charlesproxy.com" target="_blank">Charles</a>

Now, for what we can use **Charles**?. Basically to debug network requests in our apps. There are a lot of time that we as a Developer, wants to change some requests to see if it fails, or force the app to receive a wrong value to see how our app reacts to that request. Other time we just want to see what are the responses to figure it out why the app is failing. There are a lot of things we want to test, and sometimes we don't know how. We can do all of this with **Charles**. So let's begin.

- **Install <a href="https://www.charlesproxy.com/download/" target="_blank">Charles</a> by clicking in the link.**

- **Open Charles and click in the Menu: Help > SSL Proxying, and select _Install Charles Root Certificate in iOS Simulators_**.

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p1.png" alt="Charles">

- **Now make sure you have the option macOS Proxy selected, so we can listen traffic, so click in the Menu: Proxy > macOS Proxy**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p2.png" alt="Charles">

- **Restart your simulator and make sure you are recording the incoming traffic. You should see in the right bottom a _Recording_ label. If not, just click in _Start Recording_ buttom**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p3.png" alt="Charles">

- **Run the app in the simulator, and at this moment, you should see the incoming traffic at the left**

- **Now, you have to make sure to enable SSL Proxying for the URLs that you want to test. There are two ways of doing this:**

* The first way is by clicking in the Menu: Proxy > SSL Proxying Settings and then add the URL that you want.

   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p4.png" alt="Charles">

   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p5.png" alt="Charles">

- The second way is when you see the incoming traffic in the left view of Charles, just right click the URL that you want and click _Enable SSL Proxying_

   <img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p6.png" alt="Charles">

- **Now restart the simulator, and you will see the responses**

- **If you click the response, and the _Contents_ you can see the JSON that we are getting. Now we can check why we are getting an error in the app if that is the case.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p7.png" alt="Charles">

- **Let's map locally some responses so we can mock them. Right click in the response, and click _Save Response..._**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p8.png" alt="Charles">

- **Now right click in the request and click _Viewer Mappings..._ and copy what the Host, Port and Path are, because we are going to use it next.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p9.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p10.png" alt="Charles">

- **Now in the Menu click: Tools > Map Local... and add a new one. For Local path: you will select the response that you saved and for Host, Port and Path you will fill it with the information that you got in the previous step.**

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p11.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p12.png" alt="Charles">

<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p13.png" alt="Charles">

- **Now you can edit the JSON and start testing your network responses**

### That's how you setup Charles for iOS Simulator. For any questions you can contact me at my Twitter, Linkedin or Email.

## Thanks again
