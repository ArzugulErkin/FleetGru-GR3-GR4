package com.test.pages;

import com.test.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DashBoardPage {

    public DashBoardPage(){
        PageFactory.initElements(Driver.getDriver(),this);

    }

    @FindBy(xpath = "//span[@class='title title-level-1'][normalize-space()='Fleet']")
    public WebElement fleetBtn;

    @FindBy(xpath = "//span[.='Vehicles']")
    public WebElement vehiclesBtn;
}
