from BrainBucket.components.header import Header
from BrainBucket.components.right_menu import RightMenu
from BrainBucket.webelements.UIElement import UIElement as Element
from selenium.webdriver.common.by import By


class ForgottenPasswordPage:
    def __init__(self, browser):
        #self.header = Header(browser)
        self.right_menu = RightMenu(browser)
        self.continue_btn = Element(browser, By.XPATH, '//*[@id="content"]/form/div/div[2]/input')
        self.email_input = Element(browser, By.ID, "input-email")
        self.email_not_exists_text = Element(browser, By.XPATH, "//*[@class='alert alert-danger']")

    def click_continue_btn(self):
        self.continue_btn.click()

    def enter_email(self, email):
        self.email_input.enter_text(email)

    def verify_email_not_exist_text(self):
        self.email_not_exists_text.wait_until_visible()
