# Bubbles and Butterflies

## Overview

The Fight for Happiness is a psychological narrative game built in GameMaker.
The game focuses on dialogue, perception, and mental state.
You move through shifting environments that reflect therapy, medication, depression, and distorted reality.

The experience starts grounded and slowly becomes unstable.
Gameplay evolves alongside the character’s mental state.

---

## Development

Built using GameMaker.

Core structure:

* Rooms for each level and sequence
* Sprites for characters, environments, and visual distortion
* Scripts for dialogue, inventory, combat, and progression systems

Design approach:

* Modular rooms for each stage of the story
* Reusable scripts for dialogue and interaction
* Visual changes driven by state changes and progression

---

## Core Features

### Dialogue System

* Drives the narrative
* Controls pacing and transitions
* Used heavily in early gameplay

### Inventory System

* Stores pills and weapons
* Supports progression and interaction

### Combat System

* Introduced in Wonderland
* Expands with enemies and bosses

### Visual State Changes

* Environments shift over time
* Sprites become damaged or altered
* Reflects mental deterioration

---

## Level Structure

### 1. Introduction

* Psychological dialogue focus
* Establishes tone and themes
* Minimal gameplay

### 2. Doctor’s Office

* Interior environment
* Introduces:

  * Inventory system
  * Pills as key item
  * Doctor character
* Dialogue transitions to next area

### 3. Open Street

* Free movement
* Normal world state
* Player is instructed to take pills

### 4. Wonderland

* Free-roam environment
* Introduces:

  * Enemies
  * Weapons
  * Winding paths
* Slightly saturated visuals
* Enemy 1 appears

### 5. Wonderland Variant

* Increased difficulty
* Enemy 2 introduced

### 6. Distorted Wonderland

* Higher difficulty
* Damaged environments
* Altered sprites
* Enemy 3 introduced

### 7. Boss Fight: Doctor

* Moving boss
* Attacks using pills and pill bottles

### 8. Return Path

* Backtracking through altered levels
* Connected to Level 6

### 9. Continued Return

* Further environmental distortion
* Connected to Level 5

### 10. Final Boss: Depression

* Void-like white stage
* Laser-based attacks
* Represents internal struggle

---

## Systems

### Timeline System

* Text-driven progression
* Events trigger in sequence

Key events:

* Therapy diagnosis
* Receiving pills
* Entering Wonderland
* Boss encounters
* Doctor reappearance, possibly fake

---

### Flashbacks System

* Triggered during gameplay
* Shows past events and damage
* Alters visuals and mechanics

---

### Progression

#### Items

* Pills are central
* Affect perception and gameplay

#### Weapons

* Found in Wonderland
* Used for combat

#### Enemies

* Increase in difficulty each level
* Change visually over time

---

## Choices and Endings

### Player Choices

* Fix reality
* Embrace depression

### Outcomes

* Good ending:

  * Player changes themselves
* Bad ending:

  * Player changes the world

Final moments may use text-only sequences.

---

## Mechanics

### Inventory

* Holds pills and weapons
* Supports interaction and progression

### EXP System

* Pun-based design
* Inspired by Undertale
* LOVE represents Level of Violence

---

## Design Notes

* Atmosphere comes first
* Gameplay ramps up gradually
* Visual storytelling carries meaning
* Reality becomes less reliable over time

---

## Summary

The Fight for Happiness blends narrative and gameplay to reflect mental struggle.
Each system supports the core idea of perception versus reality.
The player experiences change through mechanics, visuals, and choice.
