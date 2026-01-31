# Virtual Room – Real-Time Desktop World (Godot)

# 

##### &nbsp;This project is an ongoing 3D recreation of my real-world room inside Godot, where almost all models were created by me and the environment is designed to function as a live, interactive digital space rather than a static scene.

##### 

##### &nbsp;A key feature of the project is the inclusion of a real-time view of my actual desktop, embedded directly into the 3D world.

# 

## Project Overview

# 

##### &nbsp;-Fully modeled 3D room, based on my real environment

##### 

##### &nbsp;-Almost all assets and models created manually

##### 

##### &nbsp;-Designed as a functional space, not just a visual replica

##### 

##### &nbsp;-Integrates a live desktop feed into the world

##### 

##### &nbsp;-Built with future VR support in mind

# 

## Live Desktop Integration

# 

##### &nbsp;The desktop shown inside the 3D room is a live feed of my actual Windows desktop, captured in real time and displayed as a texture in Godot.

##### 

##### &nbsp;Current Setup

##### 

##### &nbsp; -OBS captures the desktop

##### 

##### &nbsp; -Spout is used for GPU-based texture sharing

##### 

##### &nbsp; -spout-gd plugin receives the stream directly in Godot

##### 

##### &nbsp;This approach allows the desktop to appear in-world with very low latency and minimal performance impact.

# 

## Why Spout-GD Instead of a Custom Module

# 

##### &nbsp;Earlier in development, I created my own custom Godot screen capture module.

##### &nbsp;However, for this project I switched to spout-gd because it provides:

##### 

##### &nbsp; -More features out of the box

##### 

##### &nbsp; -Easier setup and iteration

##### 

##### &nbsp; -Better tooling and stability

##### 

##### &nbsp; -Lower performance overhead in practice

##### 

##### &nbsp;Using Spout through OBS also makes it easier to:

##### 

##### &nbsp; -Control capture sources

##### 

##### &nbsp; -Apply transforms and filters

##### 

##### &nbsp; -Debug and adjust the pipeline without rebuilding Godot

# 

## VR Focus (Work in Progress)

# 

##### &nbsp;One of the main goals of this project is to experiment with VR interaction inside a familiar, real-world environment.

##### 

##### &nbsp;The project is being structured to:

##### 

##### &nbsp; -Support VR camera setups

##### 

##### &nbsp; -Train interaction layouts and spatial design

##### 

##### &nbsp; -Prepare for room-scale and seated VR testing

##### 

### ⚠️ Note:

##### &nbsp;VR hardware has not arrived yet, so VR-specific testing and implementation are currently limited to preparation and design work.

# 

## Technology Stack

# 

##### &nbsp;-Godot Engine

##### 

##### &nbsp;-Custom 3D models

##### 

##### &nbsp;-OBS + Spout

##### 

##### &nbsp;-spout-gd plugin

##### 

##### &nbsp;-Windows platform

# 

# Goals

# 

##### &nbsp;-Create a functional digital twin of a real room

##### 

##### &nbsp;-Blend real-time desktop content into a 3D environment

##### 

##### &nbsp;-Experiment with productivity and immersion concepts

##### 

##### &nbsp;-Prepare a foundation for VR interaction and testing

# 

## Planned Improvements

# 

##### &nbsp;-Full VR interaction once hardware arrives

##### 

##### &nbsp;-Improved interaction with desktop surfaces

##### 

##### &nbsp;-Lighting and performance optimizations

##### 

##### &nbsp;-Expanded room functionality

##### 



## Images





##### \### 3D Room Overview

##### !\[3D Room Overview](images/full\_room\_overview.png)

##### 

##### \### Live Desktop Inside 3D Room Overview

##### !\[Live Desktop Inside 3D Room Overview](runtime\_screenshit\_overview.png)

##### 

##### \### Live Desktop Closeup

##### !\[Live Desktop Closeup](runtime\_screenshot\_screen\_closeup.png)





## Credits



##### PolyHaven (https://polyhaven.com/): for textures

##### 

##### Computer Liquid Cooler (suffered modifications): https://sketchfab.com/3d-models/liquid-cooler-1c60872e45144239aadb4e188c43bce3

##### 

##### Computer Fan (suffered modifications): https://sketchfab.com/3d-models/computer-cooler-pc-fan-50adf2b7b06f42588825ab7f31f7ca87

##### 

##### Computer Ram Sticks (suffered modifications): https://sketchfab.com/3d-models/ram-corsair-vengeance-lpx-ee11e1926e514075a70642ecb5dc5c2d

##### 

##### Computer Motherboard: https://sketchfab.com/3d-models/msi-b550-gaming-plus-a7f6a35bca4a4d01a010a6b8ded6bc93

