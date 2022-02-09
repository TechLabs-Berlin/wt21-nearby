# Nearby - find NGOs, shelters and social services in your area!

## Blog Post


Finding “Nearby”

Where do you go to find social services in your area? Chances are you perform a quick internet search and go from there. The issue, however, is that a broad internet search rarely yields the type of information you’re looking for since many nonprofits and NGOs don’t have all their information publicly available, or are lacking up to date info. 

Throughout our lives, there are many situations that may leave us in need of social assistance. Maybe you’ve recently been laid off and are in need of employment assistance. Or you might be a parent in search of child care. Or maybe you’ve recently moved to town and are curious how to connect with your local community. Sometimes you don’t even know what you are searching for, but you know you need help. The solution? An application that provides comprehensive information and helps users narrow and filter their search by location and type. That’s where “Nearby” comes in! In the course of four months, our team of techies came together to create our own social service locator, aptly named “Nearby.”

We began with a simple question - how can we connect people to local social services? In our initial meetings, we discussed how we wanted to accomplish this, what types of features to include, and development capabilities. We also put a lot of focus on finding location specific data and developing a map feature.


Next, we set forth on track specific tasks. Data Science (DS) looked into where to find data and what data was out there, User Experience Design (UX) began user research, and Web Development (WD) explored development possibilities and capabilities.

In order to learn more about our target audience, UX developed a survey, gathered responses, and performed some informal interviews with social workers to get some more concrete data and direction. From the results, we learned that:

Respondents’ top 3 social services were - women’s health/support, education support/local libraries, mental health services
Note - data slightly skewed because 95% of respondents identified as women
Some important write-ins included - Nature, legal assistance, substance abuse treatment centers, medical/dental
Majority of respondents, 86.4%, perform a general internet search when seeking local services
Important write-ins included - Facebook, friends, word of mouth
79.5% use Google Maps to search
90.9% are seeking information about the services offered, 63% are looking for contact info
61.4% struggle with relevancy of information, 52.3% struggle with availability of information

These results helped guide our next design decisions. Once we began to understand our data limitations, we shifted our focus to be less on the mapping feature and more on the search feature. How people search and access the right information was of utmost priority. We also used the survey info to create a few different personas. These also helped to dictate our design choices:

UX also created some initial designs based on data and personas. We also explored user flow. Focus again was on making information accessible, comprehensive, and relevant.



Then we made the designs on Figma:
 
Meanwhile, DS found some applicable data from Berlin Open Data and info-sozial.de, however there were also a variety of limitations, including:
Location specific data: some neighborhoods had more information than others 
Accuracy and accessibility: where there are definitely more services out there, it's not all readily available, accurate or up to date
Type of data: we had to work with what we could find
Language: we hoped to have both in english and german but ended up only finding German data so we had to work with that for now. 

Due to limitations, we shifted our focus to be on what data was currently accessible which included Family Care, Education, Free time, Aging, Youth, cultural activities, and sport/physical health activities.

Finally, WD and DS came together to figure out how to make this project a reality. Being the smallest group and losing two members of the development team made things very difficult. It was very hard to find a good dataset, at the end we used the dataset from Open Data Berlin. 

On the development side, we had to change the design plan last minute when our frontend developer left us without notice and our backend developer had to step in and do the frontend work leaving our data scientist to fill the backend role. Our initial plan for fronted was to work with HTML, CSS and React, but since we were late on our development there was no way that we could go on with our initial plan. We decided to do the backend using python and flask and frontend using HTML, CSS and Bootstrap. We also had to set our priorities and we decided to implement the main feature which is our search bar with filter options. The development part was a huge challenge for us, but we’re very proud that even though it’s not ideal we were able to pull this off.

## Figma files

Figma Designs Link: https://www.figma.com/file/frUzhMkLoFLDAgL6HfZjGz/Nearby-Initial-Design?node-id=0%3A1
Figma Concept Map: https://www.figma.com/file/j8MZ47gTcgFQJPBfCVCaYQ/Nearby-Concept-Map?node-id=0%3A1
