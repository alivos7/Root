# -*- coding: utf-8 -*
#!/usr/bin/python
#####################################
# DEMON KING
##############[LIBS]###################
import requests, re, os, sys, codecs, random               
from multiprocessing.dummy import Pool                          
from time import time as timer  
import time
import warnings
import subprocess
from requests.packages.urllib3.exceptions import InsecureRequestWarning
warnings.simplefilter('ignore',InsecureRequestWarning)
##############
PURPLE = '\033[95m'
CYAN = '\033[96m'
DARKCYAN = '\033[36m'
BLUE = '\033[94m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
RED = '\033[91m'
BOLD = '\033[1m'
UNDERLINE = '\033[4m'
END = '\033[0m'

primer ="""
 ______                                         ___  ____    _                   
|_   _ `.                                      |_  ||_  _|  (_)                  
  | | `. \ .---.  _ .--..--.   .--.   _ .--.     | |_/ /    __   _ .--.   .--./) 
  | |  | |/ /__\\[ `.-. .-. |/ .'`\ \[ `.-. |    |  __'.   [  | [ `.-. | / /'`\; 
 _| |_.' /| \__., | | | | | || \__. | | | | |   _| |  \ \_  | |  | | | | \ \._// 
|______.'  '.__.'[___||__||__]'.__.' [___||__] |____||____|[___][___||__].',__`  
                                                                        ( ( __)) 
                                      - Defend Simple
"""
print(primer)
def cronwar():
	while 1:
		try:
   			lucifer = [
   				"https://pekerti-aa.lp2mp.unm.ac.id/awaw.php"
   				 ]
   			for x in lucifer:
   				Agent = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'}
   				se = requests.session()
   				ktn1 = se.get(x, headers=Agent, verify=False, timeout=10)
   				if ktn1.status_code == 200:
   					print (GREEN + 'DEFEND ON DEMON KING V3! ..... [' + x + ']' + END)
   					time.sleep(5)
   				else:
   					print (RED + 'SORY YOUR DEFEND INVALID  (-) ' + x + END)
   					
		except Exception as e:
   			pass

cronwar()
#python3
