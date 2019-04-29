# UCSD News Hub

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Through this app, users will be able to see various news articles about what is being done UCSD researchers and alumni in various disciplines. News articles are provided by the Google News API.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:** News is consumed primarily through mobile devices. By taking advantage of this fact, and by replicating features used by major news organizations, we can create a uniquely mobile experience.
- **Story:** Though a lot of UCSD students understand that their school has a reputation for important research, it's hard to know exactly what that means.  This app would provide insight into what major breakthroughs are happening on our campus.
- **Market:** Marketed towards UCSD students, alumni, and incoming freshman, this app would be catering to a niche market.  There would also be potential to broaden the scope and include other UC campuses within our app to scale our idea up
- **Habit:**  By using push-notifications for important news stories, we can anticipate that users see the app and open it at least once per week.
- **Scope:**  The Scope of this project is not large.  There is a lot of potential to create a working prototype for this app, then build on it if we have more time. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can view list of stories 
* User can choose between different departments


**Optional Nice-to-have Stories**

* User can choose to view news from other UC's
* User can receive notifications when new stories are added
* User can save stories


### 2. Screen Archetypes

* Loading Screen
   * Logo
* Home Screen
   * User can choose between different departments, or general UCSD news
* News feed
    * User can click on news story to read full story
    * User can double tap a story to favorite (save)
 

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* News Feed
* Home Screen

**Flow Navigation** (Screen to Screen)

* Home Screen
   * News Feed
* News Feed
   * Clicking on a story will navigate to that story in a browser
   * => Home Screen

## Wireframes
<img src="https://i.imgur.com/yYWRlbE.png" width=600>

## Schema
### Models

 | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | headline      | String   | Headline for story |
   | author        | String   | story author |
   | image         | File     | image that accompanies story |
   | caption       | String   | story caption  |
   | createdAt     | DateTime | date when post is created (default field) |
   | (bonus)saved  | Boolean  | Whether post has been saved by user |
   
### Networking

  #### Google News API
    - Base URL: newsapi.org/v2
      
   | HTTP Verb | Endpoint | Description |
  | ----------|----------|------------ |
   | `GET`    | /top-headlines | gets top headlines |
   | `GET`    | /top-headlines?q=keyword | returns top headlines with keyword |



