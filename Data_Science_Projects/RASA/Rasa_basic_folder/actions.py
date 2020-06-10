from __future__ import absolute_import
from __future__ import division
from __future__ import unicode_literals

import smtplib
from rasa_sdk import Action
from rasa_sdk.events import SlotSet
# Import the email modules we'll need
from email.message import EmailMessage
import zomatopy
import json

class ActionSearchRestaurants(Action):
	def name(self):
		return 'action_search_restaurants'
		
	def run(self, dispatcher, tracker, domain):
		config={ "user_key":"f4924dc9ad672ee8c4f8c84743301af5"}
		zomato = zomatopy.initialize_app(config)
		loc = tracker.get_slot('location')
		cuisine = tracker.get_slot('cuisine')
		min_price = tracker.get_slot('min_price')
		#print("Min price is", min_price)
		max_price = tracker.get_slot('max_price')
		#print("Max price is", max_price)
		number_of_restaurants = float(tracker.get_slot('number_of_restaurants'))
		#print("Customer want restaurant in ", loc, "for cuisine of ", cuisine)
		#print("Total number of restaurants to find are ",number_of_restaurants)
		#print("Customer is looking for restaurant in range ", min_price, max_price)
		location_detail=zomato.get_location(loc, 1)
		d1 = json.loads(location_detail)
		lat=d1["location_suggestions"][0]["latitude"]
		lon=d1["location_suggestions"][0]["longitude"]
		cuisines_dict={'American':1,'Chinese':25,'Italian':55,'Mexican':73,'North Indian':50,'South Indian':85}
		'''
			Getting 20 restaurants from zomato
			As soon as we get required number of restaurants satisfying our criteria, we will exit the loop
			And then just displaying 5/10 depending on whether it has to be displayed on the UI or email has to be sent
		'''
		results=zomato.restaurant_search("", lat, lon, str(cuisines_dict.get(cuisine)), 20)
		d = json.loads(results)
		response=""
		current_restaurants_found = 0
		if d['results_found'] == 0:
			response= "no results"
		else:
			for restaurant in d['restaurants']:
				'''
					Modified zomatopy.py to give output sorted on rating in descending order
					Modifying below code to meet the requirement
				'''
				#print("Price of current restaurant being iterated is ", float(restaurant['restaurant']['average_cost_for_two']))
				if current_restaurants_found < number_of_restaurants:
					'''
						When max price is defined, then we will look for restaurants which fall under min and max price range
					'''
					if min_price is not None and max_price is not None and float(restaurant['restaurant']['average_cost_for_two']) <= float(max_price) and float(restaurant['restaurant']['average_cost_for_two']) >= float(min_price):
						#print("Have both max price and min price", max_price, min_price)
						current_restaurants_found = current_restaurants_found + 1
						#print("Number of restaurants find til now are ",current_restaurants_found)
						#print("Restaurant cost is " + str(restaurant['restaurant']['average_cost_for_two']))
						response=response+ restaurant['restaurant']['name']+ " in "+ restaurant['restaurant']['location']['address']+" has been rated "+ str(restaurant['restaurant']['user_rating']['aggregate_rating']) +"\n"
					elif max_price is None and min_price is not None and float(restaurant['restaurant']['average_cost_for_two']) >= float(min_price):
						'''
							When max price is not defined, we will look for all the restaurants which are above some 
						'''
						#print("Max price is None and min price is provided", max_price, min_price)
						current_restaurants_found = current_restaurants_found + 1
						#print("Number of restaurants find til now are ",current_restaurants_found)
						#print("Restaurant cost is " + str(restaurant['restaurant']['average_cost_for_two']))
						response=response+ restaurant['restaurant']['name']+ " in "+ restaurant['restaurant']['location']['address']+" has been rated "+ str(restaurant['restaurant']['user_rating']['aggregate_rating']) +"\n"
					elif min_price is None and max_price is not None and float(restaurant['restaurant']['average_cost_for_two']) <= float(max_price):
						'''
							When min price is not defined, we will look for all the restaurants which are less then max price
						'''
						#print("Max price is None and min price is provided", max_price, min_price)
						current_restaurants_found = current_restaurants_found + 1
						#print("Number of restaurants find til now are ",current_restaurants_found)
						#print("Restaurant cost is " + str(restaurant['restaurant']['average_cost_for_two']))
						response=response+ restaurant['restaurant']['name']+ " in "+ restaurant['restaurant']['location']['address']+" has been rated "+ str(restaurant['restaurant']['user_rating']['aggregate_rating']) +"\n"
				else:
					break
		
		if response == "":
			response = "No restaurant found with specified filters i.e. location is "+ loc +", cuisine is "+ cuisine +" and provided range of budget"

		'''
			Only displaying restaurant information first time
			When user asks to send information over email, then restaurant information will be emailed and not displayed on screen
		'''
		if number_of_restaurants == 5.0:
			dispatcher.utter_message(response)
		return [SlotSet('restaurant_information', response)]


class CityValidator(Action):
	def name(self):
		return 'action_validate_location'
		
	def run(self, dispatcher, tracker, domain):
		loc = tracker.get_slot('location')
		valid_location = False
		if loc.upper() in ["AHMEDABAD", "BANGALORE", "CHENNAI", "DELHI", "HYDERABAD", "KOLKATA", "MUMBAI", "PUNE", "AGRA", "AJMER", "ALIGARH", "AMRAVATI", "AMRITSAR", "ASANSOL", "AURANGABAD", "BAREILLY", "BELGAUM", "BHAVNAGAR", "BHIWANDI", "BHOPAL", "BHUBANESWAR", "BIKANER", "BILASPUR", "BOKARO STEEL CITY", "CHANDIGARH", "COIMBATORE", "CUTTACK", "DEHRADUN", "DHANBAD", "BHILAI", "DURGAPUR", "ERODE", "FARIDABAD", "FIROZABAD", "GHAZIABAD", "GORAKHPUR", "GULBARGA", "GUNTUR", "GWALIOR", "GURGAON", "GUWAHATI", "HAMIRPUR", "HUBLI–DHARWAD", "INDORE", "JABALPUR", "JAIPUR", "JALANDHAR", "JAMMU", "JAMNAGAR", "JAMSHEDPUR", "JHANSI", "JODHPUR", "KAKINADA", "KANNUR", "KANPUR", "KOCHI", "KOLHAPUR", "KOLLAM", "KOZHIKODE", "KURNOOL", "LUDHIANA", "LUCKNOW", "MADURAI", "MALAPPURAM", "MATHURA", "GOA", "MANGALORE", "MEERUT", "MORADABAD", "MYSORE", "NAGPUR", "NANDED", "NASHIK", "NELLORE", "NOIDA", "PATNA", "PONDICHERRY", "PURULIA PRAYAGRAJ", "RAIPUR", "RAJKOT", "RAJAHMUNDRY", "RANCHI", "ROURKELA", "SALEM", "SANGLI", "SHIMLA", "SILIGURI", "SOLAPUR", "SRINAGAR", "SURAT", "THIRUVANANTHAPURAM", "THRISSUR", "TIRUCHIRAPPALLI", "TIRUPPUR", "UJJAIN", "BIJAPUR", "VADODARA", "VARANASI", "VASAI-VIRAR CITY", "VIJAYAWADA", "VISAKHAPATNAM", "VELLORE", "WARANGAL"]:
			valid_location = True
		return [SlotSet('valid_location', valid_location)]

class RestaurantCountTen(Action):
	def name(self):
		return 'action_fetch_ten_restaurants'
		
	def run(self, dispatcher, tracker, domain):
		return [SlotSet('number_of_restaurants', 10)]

class RestaurantCountFive(Action):
	def name(self):
		return 'action_fetch_five_restaurants'
		
	def run(self, dispatcher, tracker, domain):
		return [SlotSet('number_of_restaurants', 5)]

class SendEmail(Action):
	def name(self):
		return 'action_send_email'
		
	def run(self, dispatcher, tracker, domain):
		loc = tracker.get_slot('location')
		emailId = tracker.get_slot('email_address')
		min_price = tracker.get_slot('min_price')
		if min_price == None:
			min_price = 0
		max_price = tracker.get_slot('max_price')
		if max_price == None:
			max_price = 'Infinity'
		restaurant_information = "Please find below the restaurant information for the budget spanning between "+str(min_price)+" and "+str(max_price)+" in location - "+loc+"\n "+tracker.get_slot('restaurant_information')
		msg = EmailMessage()
		msg.set_content(restaurant_information)
		msg['Subject'] = f'Restaurant Information'
		msg['From'] = 'akhilminhas@gmail.com'
		msg['To'] = emailId
		s = smtplib.SMTP('localhost')
		s.send_message(msg)
		s.quit()
		return [SlotSet('location',loc)]