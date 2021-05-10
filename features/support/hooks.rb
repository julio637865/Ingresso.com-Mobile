
Before do                                             # Gancho que é executado executado antes de cada cenario 
  driver.start_driver                                #--> starta o driver do appium 
  driver.manage.timeouts.implicit_wait = 10         #--> define o timeout implicito  
  
  find_element(xpath: "//android.widget.TextView[@text='ACEITAR']").click
  find_element(xpath: "//android.widget.Button[@text='Only this time']").click
  
end

#After do |scenario|
#  binary_shot = driver.screenshot_as(:base64)
#
#  temp_shot = "logs/temp_shot.png"
#
#  File.open(temp_shot, "wb") do |f|
#    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
#  end
#
#  Allure.add_attachment(
#    name: "screenshot",
#    type: Allure::ContentType::PNG,
#    source: File.open(temp_shot),
#  )
#  driver.quit_driver
#end
