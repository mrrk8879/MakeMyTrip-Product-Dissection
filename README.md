# Product-Dissection-for-MakeMyTrip.com

## Overview

MakeMyTrip is India's leading online travel company and a top player in the online travel space. Founded in 2000 by Deep Kalra, MakeMyTrip provides online travel services including domestic and international flight tickets, hotel reservations, holiday packages, bus and train tickets, and car rentals.

### Product Dissection
MakeMyTrip aims to provide a convenient and hassle-free experience for travellers to research, plan, book and manage their trips. 
Some of the key problems solved by MakeMyTrip:
#### One-stop travel planning: 
MakeMyTrip integrates flights, hotels, holiday packages, buses, trains and car rentals on a single platform. This saves time and simplifies travel planning.

#### Transparent pricing: 
MakeMyTrip provides complete breakdowns of fares and fees for flights, hotels, packages etc. This ensures transparency in pricing.

#### Massive inventory: 
MakeMyTrip has partnerships across travel verticals giving users more options to choose from, even during peak travel seasons.

#### Seamless experience: 
Features like flexible travel search, real-time pricing, instant confirmation, and trip management tools like itinerary builder provide a smooth booking experience.

#### Reviews and ratings: 
Authentic user-generated content helps make informed booking decisions.

#### Customer support: 
Dedicated customer support via call, chat, email assists with pre- and post-booking needs.

#### Technology focus: 
Adoption of technology like AI, ML and data analytics enhances user experience.

## Key Features
Some of the key features of MakeMyTrip are:

1. User-friendly interface for searching, comparing and booking flights, hotels, packages etc.
2. Real-time pricing and availability of travel services.
3. Flexible date search to find the best fares.
4. Filters for preferred airline, hotel brand, trip duration etc.
5. Mobile app for iOS and Android.
6. Recommendations based on past bookings and searches.
7. Price alerts and notifications on travel services.
8. Multiple payment options including credit cards, netbanking, e-wallets.
9. Multilingual platform.
10. Multi-currency conversion.
11. Comprehensive travel itineraries.
12. Real-time order tracking and support.
13. User reviews and ratings.
14. Regular deals, discounts and cashback offers.


## Impact on Travel Industry
MakeMyTrip has transformed the travel industry in multiple ways:

1. Increased transparency and ease of accessing travel services through online booking.
2. Provided a platform connecting travellers and travel suppliers directly.
3. Enabled growth of India's travel and tourism industry by improving discoverability.
4. Increased competitiveness in the travel industry with transparent pricing.
5. Improved efficiency and cost savings in travel bookings.
6. Enhanced consumer access to even remote and international destinations.


## Schema Description
The key entities in MakeMyTrip's schema are:

#### User: 
Stores user details like name, contact info, credentials etc.
#### Booking: 
Manages bookings done by a user including details like total cost, status etc.
#### Flight: 
Captures flight details like airline, timings, cost etc.
#### Hotel: 
Details like hotel name, location, room tariffs etc.
#### Bus: 
Covers bus operator, source, destination, timings, fares etc.
#### Train: 
Train details like operator, stations, timings, fares etc.
#### CarRental: 
Information on car type, pickup/dropoff details, cost etc.
#### Review: 
User reviews linked to specific bookings.
#### Payment: 
Payment mode and details for a booking.
#### DiscountCoupon: 
Coupon codes, discounts, validity details etc.


### The key relationships between entities:
One-to-many between User and Booking, User and Review.

One-to-many between Booking and Payment, Booking and Review.

One-to-many between Flight and Booking, Hotel and Booking, similarly for Bus, Train, CarRental.

## Conclusion
MakeMyTrip has redefined online travel with its user-centric booking experience, transparent pricing, and wide array of travel offerings. The analysis of its schema and data model provides insights into the platform's capabilities in efficiently managing travel bookings and enhancing convenience for users.

## Feedback:
For any feedback, feel free to reach out to me at mrrk7977@gmail.com
