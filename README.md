This project constitutes a significant element of the Google Data Analytics Certification course capstone. The scenario entails the analysis of trip data for Cyclistic, a bike-share organization headquartered in Chicago. Since its inception in 2016, Cyclistic has successfully expanded its bike-share program to encompass a fleet of 5,824 tracked bicycles and a network of 692 stations throughout the city. Users can unlock a bicycle from one station and return it to any other station within the system.

**Scenario**  
As a junior data analyst within the marketing analytics team at Cyclistic, my primary objective is to understand the differing usage patterns between casual riders and annual members. The marketing director asserts that the organization's ongoing success is dependent upon maximizing the number of annual memberships.

**Data**  
The data for this analysis was collected over the period from January 2021 to December 2021. Due to file size restrictions, certain data elements were uploaded to Google Cloud Storage after surpassing the 100MB limit.

**Processing and Cleaning**  
**Merging Tables:**  
The data was imported into BigQuery, resulting in the establishment of 12 tables, which were subsequently combined into a comprehensive table containing 5,529,943 rows.  
**Filtering Data:**  
The dataset was filtered to identify duplicate entries and null values, as well as to verify the uniformity of the ID lengths.

**Cleaning Data:**  
Following the identification of these issues, a data-cleaning process was initiated. A new table was created to eliminate all null values, and the ID column was enhanced to ensure that all entries consist of 16-character IDs. In addition, three new columns were introduced to augment the dataset's utility. Following the cleaning process, the dataset was reduced to 4,451,166 rows.

**Analyze:**  
After thoroughly cleansing and preparing the data, I proceeded to analyze it by executing a series of SQL queries. The results of this analysis are presented [here](https://public.tableau.com/app/profile/jonathan.petty/viz/CasestudyHowdoesabike-sharenavigatespeedysuccess_17392023398220/Sheet1) for your review.

**Conclusion:**  
Implementing discounts for casual members who utilize our services during weekends may serve as an effective strategy to incentivize their transition to annual memberships. Furthermore, instituting sales discounts during the winter season could further entice and increase the number of annual members.
