package hotelmanagementsystem;

public class StartApp {
	public static void main(String[] args)
	{
		try
		{
			DBHotel.dbConnect();
			UIHotel.startApp();
		} 
		catch (Exception e)
		{

			System.out.println(e.getMessage());
		} 
		finally
		{
			try
			{
				DBHotel.dbDisconnect();
			} 
			catch (Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
	}
}
