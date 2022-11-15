# -*- coding: utf-8 -*
#!/usr/bin/python
#####################################
# DEMON ALIVOS FT DEMON KING
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
   _____                                        _ _                
 |  __ \                                 /\   | (_)               
 | |  | | ___ _ __ ___   ___  _ __      /  \  | |___   _____  ___ 
 | |  | |/ _ \ '_ ` _ \ / _ \| '_ \    / /\ \ | | \ \ / / _ \/ __|
 | |__| |  __/ | | | | | (_) | | | |  / ____ \| | |\ V / (_) \__ \
 |_____/ \___|_| |_| |_|\___/|_| |_| /_/    \_\_|_| \_/ \___/|___/
                                                                  
                                                                  
                                      - Defend Simple
"""
print(primer)
def cronwar():
	while 1:
		try:
   			lucifer = [
   				"https://ppaa.fisip.ui.ac.id/perkuliahan/upload_mk_dosen_form7.php"
   				 ]
   			for x in lucifer:
   				Agent = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'}
   				se = requests.session()
   				ktn1 = se.get(x, headers=Agent, verify=False, timeout=10)
   				if ktn1.status_code == 200:
   					print (GREEN + 'DEFEND ON ALIVOS V3! ..... [' + x + ']' + END)
   					time.sleep(5)
   				else:
   					print (RED + 'SORRY YOUR DEFEND INVALID  (-) ' + x + END)
   					
		except Exception as e:
   			pass

cronwar()
#python3
