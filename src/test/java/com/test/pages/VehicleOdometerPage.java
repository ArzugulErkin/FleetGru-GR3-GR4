package com.test.pages;

import com.test.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class VehicleOdometerPage {
    public VehicleOdometerPage (){
        PageFactory.initElements(Driver.getDriver(),this);

    }

    @FindBy(xpath = "(//a[@class='unclickable']/span)[2]")
    public WebElement fleetBtn;

    @FindBy(xpath = "//span[.='Vehicle Odometer']")
    public WebElement vehicleOdometerBtn;
    @FindBy(xpath = "//h1[.='Vehicles Odometers']")
    public WebElement vehiclesOdometersPageTitle;
    @FindBy(partialLinkText = "Create Vehicle Odometer")
    public WebElement createVehicleOdometerBtn;
    @FindBy(xpath = "//h1[.='Create Vehicle OdometerCreate']")
    public WebElement createVehiclesOdometersPageTitle;
    @FindBy(css = "#custom_entity_type_OdometerValue-uid-651c80ae04766")
    public WebElement odometerValueField;
    @FindBy(css = "#custom_entity_type_Driver-uid-651c80ae04913")
    public WebElement driverField;
    @FindBy(css = "#select2-drop-mask")
    public WebElement unitSelect;
    @FindBy(xpath = "//button[@name=\"temp-validation-name-412\"]")
    public WebElement addButton;




}



