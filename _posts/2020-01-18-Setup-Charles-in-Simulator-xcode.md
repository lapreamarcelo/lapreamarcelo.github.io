---
layout: post
title: "Let's setup Charles in iOS simulator with Xcode"
author: marcelolaprea
tags: [Swift, iOS, Xcode, Networking, Debugging, English]
---

Before starting with this post, we should ask ourselves what is **Charles**. 

> "Charles is an HTTP proxy / HTTP monitor / Reverse Proxy that enables a developer to view all of the HTTP and SSL / HTTPS traffic between their machine and the Internet. This includes requests, responses and the HTTP headers (which contain the cookies and caching information)." 
<a href="https://www.charlesproxy.com" target="_blank">Charles</a>

Now, for what we can use **Charles**?. Basically to debug network requests in our apps. There are a lot of time that we as a Developer, wants to change some requests to see if it fails, or force the app to receive a wrong value to see how our app reacts to that request. Other time we just want to see what are the responses to figure it out why the app is failing. There are a lot of things we want to test, and sometimes we don't know how. We can do all of this with **Charles**. So let's begin. 

1. **Install <a href="https://www.charlesproxy.com/download/" target="_blank">Charles</a> by clicking in the link.**

2. **Open Charles and click in the Menu: Help > SSL Proxying, and select *Install Charles Root Certificate in iOS Simulators***.
<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p1.png" alt="Charles">

3. **Now make sure you have the option macOS Proxy selected, so we can listen traffic, so click in the Menu: Proxy > macOS Proxy**
<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p2.png" alt="Charles">

4. **Restart your simulator and make sure you are recording the incoming traffic. You should see in the right bottom a *Recording* label. If not, just click in *Start Recording* buttom**
<img src="/assets/img/posts/2020-01-18-Setup-Charles-in-Simulator-xcode/p3.png" alt="Charles">

5. **Run the app in the simulator, and at this moment, you should see the incoming traffic at the left**