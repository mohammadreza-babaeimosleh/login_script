from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import logging
import coloredlogs

logger = logging.getLogger(__name__)
coloredlogs.install(level="INFO")


username = ""
password = ""


chrome_options = Options()
chrome_options.add_argument("--headless")
# for handling errors
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--disable-dev-shm-usage")
# openning chrome
logger.info("runnning chrome driver")
driver = webdriver.Chrome("/usr/bin/chromedriver", options=chrome_options)

logger.info("requesting to website")
driver.get("https://internet.aut.ac.ir/")

# find password input field and insert password as well
logger.info("setting username")
driver.find_element("name", "username").send_keys(username)
# find password input field and insert password as well
logger.info("setting password")
driver.find_element("name", "password").send_keys(password)
# click login button
driver.find_element("id", "internetbutton").click()

driver.quit()

logger.info("You are now connected to internet")
