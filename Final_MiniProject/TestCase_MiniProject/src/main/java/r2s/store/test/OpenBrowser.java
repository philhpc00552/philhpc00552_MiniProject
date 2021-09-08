package r2s.store.test;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;

public class OpenBrowser {

	public static void main(String[] args) throws InterruptedException {
	    // khai báo và khởi tạo đối tượng/ biến
			System.setProperty("webdriver.chrome.driver",
					"D:\\TaiLieu_JAVA_WEB\\Tai_Lieu_JAVA6\\result\\PC00552_JAVA6\\Test\\src\\main\\resources\\document\\openBrowser\\chromedriver.exe");
			WebDriver driver = new ChromeDriver();
			String url = "http://localhost:8080/home/index";			
			driver.get(url);

			String expectedTitle = "R2S";
			Thread.sleep(3000);
	        // getTitle() hàm lấy title của trang web
			String actualTitle = driver.getTitle();

	        // So sánh kết quả thực tế với mong đợi
			if (expectedTitle.contentEquals(actualTitle)) {
				Assert.assertTrue(true);
				System.out.println("Pass");
			} else {
				Assert.assertTrue(false);
				System.out.println("Fail");
			}
			driver.close();
		}
}
