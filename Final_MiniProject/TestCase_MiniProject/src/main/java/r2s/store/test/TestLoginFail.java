package r2s.store.test;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;


public class TestLoginFail {
	public WebDriver driver;
	
	@Test(description = "Opens Website", priority = 1)	
	public void LaunchWebSite() throws Exception {
		try {
			driver.get("http://localhost:8080/home/index");
			driver.manage().window().maximize();
			Thread.sleep(3000);	
		} catch (Exception e) {
			Assert.assertTrue(false);
		}
	}
	
	@Test(description = "Open form Login", priority = 2)
	public void DoLoginGoogle() throws Exception {
		try {			
			WebElement askViblo = driver.findElement(By.linkText("Đăng Nhập"));
			askViblo.click();
			Thread.sleep(2000);		
		} catch (Exception e) {
			Assert.assertTrue(false);
		}
	}
	
	@Test(description = "Enter username", priority = 3)
	public void LoginWith_Usrname() throws Exception {
		try {
			WebElement login = driver.findElement(By.name("username"));// name of text filed
			login.sendKeys("philh");
			
			Thread.sleep(1000);			
		} catch (Exception e) {
			Assert.assertTrue(false);
		}
	}
	
	@Test(description = "Enter password", priority = 4)
	public void LoginWith_Password() throws Exception {
		try {
			WebElement login = driver.findElement(By.name("password"));// name of text filed
			login.sendKeys("567");
			
			Thread.sleep(1000);			
		} catch (Exception e) {
			Assert.assertTrue(false);
		}
	}
	
	@Test(description = "Login With Login", priority = 5)
	public void NextLoginWithPassword() throws Exception {
		try {
			WebElement login = driver.findElement(By.xpath("//button[@name='username']"));// name of text filed
			login.click();
			Thread.sleep(3000);			
		} catch (Exception e) {
			Assert.assertTrue(true);
		}
	}
	@BeforeClass(alwaysRun = true)
	public void suiteSetUp() {
		try {
			System.setProperty("webdriver.chrome.driver",
					"D:\\TaiLieu_JAVA_WEB\\Tai_Lieu_JAVA6\\result\\PC00552_JAVA6\\Test\\src\\main\\resources\\document\\openBrowser\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		} catch (Exception e) {
			throw new IllegalStateException("Can not start the Chrome wen driver", e);
		}
	}
	
	@AfterClass
	public void suiteTearDown() {
		driver.close();
		driver.quit();
	}
	
}
