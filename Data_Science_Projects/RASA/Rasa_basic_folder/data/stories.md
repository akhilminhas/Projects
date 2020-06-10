## complete path
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Delhi"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Chinese"}
    - slot{"cuisine": "Chinese"}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## complete path
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Delhi"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Chinese"}
    - slot{"cuisine": "Chinese"}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## complete path
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Mukerian"}
    - slot{"location": "Mukerian"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## location specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Chinese"}
    - slot{"cuisine": "Chinese"}
    - utter_ask_budget
* restaurant_search{"min_price":"300", "max_price": "700"}
    - slot{"min_price": "300"}
    - slot{"max_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - utter_goodbye
    - action_restart

## location specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Chinese"}
    - slot{"cuisine": "Chinese"}
    - utter_ask_budget
* restaurant_search{"min_price":"300", "max_price": "700"}
    - slot{"min_price": "300"}
    - slot{"max_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## location specified
* greet
    - utter_greet
* restaurant_search{"location": "vapi"}
    - slot{"location": "vapi"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## complete path 2
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Delhi"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "North Indian"}
    - slot{"cuisine": "North Indian"}
    - utter_ask_budget
* restaurant_search{"min_price": "300", "max_price": "700"}
    - slot{"min_price": "300"}
    - slot{"max_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## complete path 2
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Marathahalli"}
    - slot{"location": "Marathahalli"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## complete path 3
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Bengaluru"}
    - slot{"location": "Bengaluru"}
    - action_validate_location
    - slot{"valid_location": true}
	- utter_ask_cuisine
* restaurant_search{"cuisine": "American"}
    - slot{"cuisine": "American"}
    - utter_ask_budget
* restaurant_search{"min_price": "300", "max_price": "700"}
    - slot{"min_price": "300"}
    - slot{"max_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## location, cuisine specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi", "cuisine": "South Indian"}
    - slot{"location": "Delhi"}
    - slot{"cuisine": "South Indian"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## location, cuisine specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi", "cuisine": "South Indian"}
    - slot{"location": "Delhi"}
    - slot{"cuisine": "South Indian"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - utter_goodbye
    - action_restart

## location, cuisine specified
* greet
    - utter_greet
* restaurant_search{"location": "Koorg", "cuisine": "South Indian"}
    - slot{"location": "Koorg"}
    - slot{"cuisine": "South Indian"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## location, cuisine, budget specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi", "cuisine": "South Indian", "min_price": "700"}
    - slot{"location": "Delhi"}
    - slot{"cuisine": "South Indian"}
    - slot{"min_price": "700"}
    - action_validate_location
    - slot{"valid_location": true}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - utter_goodbye
    - action_restart

## location, cuisine, budget specified
* greet
    - utter_greet
* restaurant_search{"location": "Delhi", "cuisine": "South Indian", "min_price": "700"}
    - slot{"location": "Delhi"}
    - slot{"cuisine": "South Indian"}
    - slot{"min_price": "700"}
    - action_validate_location
    - slot{"valid_location": true}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## location, cuisine, budget specified
* greet
    - utter_greet
* restaurant_search{"location": "Dasua", "cuisine": "South Indian", "min_price": "700"}
    - slot{"location": "Dasua"}
    - slot{"cuisine": "South Indian"}
    - slot{"min_price": "700"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm OR goodbye
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"cuisine": "Chinese", "location": "Bijapur"}
    - slot{"cuisine": "Chinese"}
    - slot{"location": "Bijapur"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"location": "Mumbai"}
    - slot{"location": "Mumbai"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "American"}
    - slot{"cuisine": "American"}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - slot{"location": "Mumbai"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"location": "Siliguri"}
    - slot{"location": "Siliguri"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Mexican"}
    - slot{"cuisine": "Mexican"}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - slot{"location": "Siliguri"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search
    - utter_ask_location
* restaurant_search{"location": "Bengaluru"}
    - slot{"location": "Bengaluru"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Mexican"}
    - slot{"cuisine": "Mexican"}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - action_search_restaurants
    - slot{"location": "Bengaluru"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somedummyemail@yahoo.in"}
    - slot{"email_address": "somedummyemail@yahoo.in"}
    - action_fetch_ten_restaurants
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"location": "jalandhar", "cuisine": "American"}
    - slot{"cuisine": "American"}
    - slot{"location": "jalandhar"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is jalandhar, cuisine is American and provided range of budget"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "minhas89@gmail.com"}
    - slot{"email_address": "minhas89@gmail.com"}
    - action_fetch_ten_restaurants
    - slot{"number_of_restaurants": 10}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is jalandhar, cuisine is American and provided range of budget"}
    - action_send_email
    - slot{"location": "jalandhar"}
    - utter_goodbye
    - action_restart

## interactive_story_3
* restaurant_search{"location": "rourkela", "cuisine": "Italian"}
    - slot{"cuisine": "Italian"}
    - slot{"location": "rourkela"}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is rourkela, cuisine is Italian and provided range of budget"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somerandomid@co.in"}
    - slot{"email_address": "somerandomid@co.in"}
    - action_fetch_ten_restaurants
    - slot{"number_of_restaurants": 10}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is rourkela, cuisine is Italian and provided range of budget"}
    - action_send_email
    - slot{"location": "rourkela"}
    - utter_goodbye
    - action_restart

## interactive_story_2
* restaurant_search{"cuisine": "Chinese", "location": "Landran"}
    - slot{"cuisine": "Chinese"}
    - slot{"location": "Landran"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm
    - utter_goodbye
    - action_restart

## interactive_story_2
* restaurant_search{"cuisine": "Italian", "location": "Sangli"}
    - slot{"cuisine": "Italian"}
    - slot{"location": "Sangli"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "DacDenil's Burger in s no 13561 Ground Floor Thote Heights Vasant Colony Near Deep Ent Sangli, Sangli Locality, Sangli has been rated 4.3\nHotel Sarovar in Shri Complex, 100ft Road, Vishrambag, Sangli Locality, Sangli has been rated 4.2\nLondon Shakes in CS no 9143/1 Shop no 6 Vision Heights 100 ft road, Sangli Locality, Sangli has been rated 3.9\nLaziz Pizza in Shram Shilpa Bunglow, 100 Feet Road, Vishrambag, Sangli - 416415, Beside Annuradha Eye Hospital, Sangli Locality, Sangli has been rated 3.9\nPanchawati Pure Veg Restaurant in Shop no 1&2 Miraj Sangli Road near bata showroom Sangli municipal corporation has been rated 3.9\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_1
* restaurant_search{"cuisine": "American", "location": "hajipur"}
    - slot{"cuisine": "American"}
    - slot{"location": "hajipur"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"cuisine": "Italian", "location": "Mumbai"}
    - slot{"cuisine": "Italian"}
    - slot{"location": "Mumbai"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Yazu - Pan Asian Supper Club in 9, Ground Floor, Raheja Classic Complex, Near Infinity Mall, Phase D, Shastri Nagar, Oshiwara, Andheri West, Mumbai has been rated 4.9\nVeranda in Hotel Executive Enclave, 331, Dr Ambedkar Road, Pali Hill, Bandra West, Mumbai has been rated 4.9\nCraftbar in Hallmark Business Plaza, Sant Dyaneshwar Marg, Near Chetna College, Kalanagar, Bandra East, Mumbai has been rated 4.9\nPalladium Social in Level 3, Palladium Mall, Senapati Bapat Marg, Lower Parel, Mumbai has been rated 4.9\nHome Chef All Day Dining in 71 Meher Building, Line of Sushrusha Hospital, Ranade Road, Dadar Shivaji Park, Mumbai has been rated 4.8\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"cuisine": "Italian", "location": "chembur"}
    - slot{"cuisine": "Italian"}
    - slot{"location": "chembur"}
    - action_validate_location
    - slot{"valid_location": false}
    - utter_location_not_serviceable
* affirm
    - utter_goodbye
    - action_restart

## interactive_story_2
* greet
    - utter_greet
* restaurant_search{"cuisine": "North Indian", "location": "Bangalore"}
    - slot{"cuisine": "North Indian"}
    - slot{"location": "Bangalore"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Byg Brewski Brewing Company in Behind MK Retail, Sarjapur Road, Bangalore has been rated 4.9\nByg Brewski Brewing Company in 22/123, Byrathi Village, Bidarahalli Hobli, Hennur, Bangalore has been rated 4.9\nTBC- Sky Lounge in 36/1, 5th Floor, Berry's Hotel, Kadubeesanahalli, Opposite JP Morgan, Ring Road, Marathahalli, Bangalore has been rated 4.9\nBiergarten in 2, Doddanekkundi, Whitefield Road, Mahadevpura, Whitefield, Bangalore has been rated 4.9\nTBC Sky Lounge in Astra Hotel, 2795, 27th Main, Sector 1, HSR, Bangalore has been rated 4.9\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_3
* greet
    - utter_greet
* restaurant_search{"location": "kannur", "cuisine": "North Indian"}
    - slot{"cuisine": "North Indian"}
    - slot{"location": "kannur"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is kannur, cuisine is North Indian and provided range of budget"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "xcz@amazon.in"}
    - slot{"email_address": "xcz@amazon.in"}
    - action_fetch_ten_restaurants
    - slot{"number_of_restaurants": 10}
    - action_search_restaurants
    - slot{"restaurant_information": "No restaurant found with specified filters i.e. location is kannur, cuisine is North Indian and provided range of budget"}
    - action_send_email
    - slot{"location": "kannur"}
    - utter_goodbye
    - action_restart

## interactive_story_4
* greet
    - utter_greet
* restaurant_search{"cuisine": "North Indian", "location": "Delhi"}
    - slot{"cuisine": "North Indian"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Ah So Yum in Plot 679, Saraswati Kunj, Sector 53, Golf Course Road, Gurgaon has been rated 4.9\nIndian Accent in The Lodhi, Lodhi Road, New Delhi has been rated 4.9\nMaster Koii's in Shop 19, Flavor Town, Bestech Chambers, Sushant Lok, Gurgaon has been rated 4.8\nCafe Wink in G-1, Plot 9, Sikka Galaxy, Shreshtha Vihar, Anand Vihar, New Delhi has been rated 4.8\nChili's Grill & Bar in 3rd Floor, Ambience Mall, Nelson Madela Road, Vasant Kunj, New Delhi has been rated 4.8\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_2
* restaurant_search{"location": "chennai"}
    - slot{"location": "chennai"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Mexican"}
    - slot{"cuisine": "Mexican"}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Coal Barbecues in 40, 2nd Floor, Bazullah Road, T. Nagar, Chennai has been rated 4.9\nFromage in Somerset Greenway, Lords Avenue, MRC Nagar, Chennai has been rated 4.5\nThe Mayflower in 32, Burkit Road, T. Nagar, Chennai has been rated 4.5\nPantry d'or in 21/11, J Block, 6th Avenue Main Road, Anna Nagar East, Chennai has been rated 4.4\nLittle Italy in E-50, 17th Cross Street, Lane Before Spencers Daily, Besant Nagar, Chennai has been rated 4.4\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart

## interactive_story_1
* restaurant_search{"location": "jalandhar"}
    - slot{"location": "jalandhar"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_cuisine
* restaurant_search{"cuisine": "Mexican"}
    - slot{"cuisine": "Mexican"}
    - utter_ask_budget
* restaurant_search{"min_price": "300", "max_price": "700"}
    - slot{"max_price": "700"}
    - slot{"min_price": "300"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Coal Barbecues in 40, 2nd Floor, Bazullah Road, T. Nagar, Chennai has been rated 4.9\nFromage in Somerset Greenway, Lords Avenue, MRC Nagar, Chennai has been rated 4.5\nThe Mayflower in 32, Burkit Road, T. Nagar, Chennai has been rated 4.5\nPantry d'or in 21/11, J Block, 6th Avenue Main Road, Anna Nagar East, Chennai has been rated 4.4\nLittle Italy in E-50, 17th Cross Street, Lane Before Spencers Daily, Besant Nagar, Chennai has been rated 4.4\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "me@checkemail.com"}
    - slot{"email_address": "me@checkemail.com"}
    - action_fetch_ten_restaurants
    - slot{"number_of_restaurants": 10}
    - action_search_restaurants
    - slot{"restaurant_information": "Dummy restaurant information"}
    - action_send_email
    - slot{"location": "jalandhar"}
    - utter_goodbye
    - action_restart
    
## interactive_story_1
* greet
    - utter_greet
* restaurant_search{"cuisine": "American", "location": "Delhi"}
    - slot{"cuisine": "American"}
    - slot{"location": "Delhi"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"min_price": "700"}
    - slot{"min_price": "700"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - slot{"restaurant_information": "Indian Accent in The Lodhi, Lodhi Road, New Delhi has been rated 4.9\nChili's Grill & Bar in S 8 & 9, 2nd Floor, Pacific Mall, Tagore Garden, New Delhi has been rated 4.9\nMaster Koii's in Shop 19, Flavor Town, Bestech Chambers, Sushant Lok, Gurgaon has been rated 4.8\nCafe Wink in G-1, Plot 9, Sikka Galaxy, Shreshtha Vihar, Anand Vihar, New Delhi has been rated 4.8\nChili's Grill & Bar in 3rd Floor, Ambience Mall, Nelson Madela Road, Vasant Kunj, New Delhi has been rated 4.8\n"}
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "Yes, send"}
    - slot{"email_has_to_be_sent": "Yes, send"}
    - utter_ask_emailId
* restaurant_search{"email_address": "somemailid@gmail.com"}
    - slot{"email_address": "somemailid@gmail.com"}
    - action_fetch_ten_restaurants
    - slot{"number_of_restaurants": 10}
    - action_search_restaurants
    - slot{"restaurant_information": "Indian Accent in The Lodhi, Lodhi Road, New Delhi has been rated 4.9\nChili's Grill & Bar in S 8 & 9, 2nd Floor, Pacific Mall, Tagore Garden, New Delhi has been rated 4.9\nMaster Koii's in Shop 19, Flavor Town, Bestech Chambers, Sushant Lok, Gurgaon has been rated 4.8\nCafe Wink in G-1, Plot 9, Sikka Galaxy, Shreshtha Vihar, Anand Vihar, New Delhi has been rated 4.8\nChili's Grill & Bar in 3rd Floor, Ambience Mall, Nelson Madela Road, Vasant Kunj, New Delhi has been rated 4.8\nChili's Grill & Bar in 3rd Floor, Ambience Mall, DLF Phase 3, Gurgaon has been rated 4.8\nMad Batter in 2nd Floor, The Shopping Mall, Arjun Marg, DLF Phase 1, Gurgaon has been rated 4.8\nHOP House Of Proteins in Shop 33, Ground Floor, Corner Market, Malviya Nagar, New Delhi has been rated 4.8\nPOMP - Pizza On My Plate in Greater Kailash 1 (GK1), New Delhi has been rated 4.7\nQwinny's in DLF Phase 4, Gurgaon has been rated 4.7\n"}
    - action_send_email
    - utter_goodbye
    - action_restart

## interactive_story_1
* restaurant_search{"cuisine": "Italian", "location": "mumbai"}
    - slot{"cuisine": "Italian"}
    - slot{"location": "mumbai"}
    - action_validate_location
    - slot{"valid_location": true}
    - utter_ask_budget
* restaurant_search{"max_price": "300"}
    - slot{"max_price": "300"}
    - action_fetch_five_restaurants
    - slot{"number_of_restaurants": 5}
    - action_search_restaurants
    - utter_if_email_has_to_sent
* restaurant_search{"email_has_to_be_sent": "No, don't"}
    - slot{"email_has_to_be_sent": "No, don't"}
    - utter_goodbye
    - action_restart
