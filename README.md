# Hotel-Management-System
This is a Hotel Management System Console Based Project made using Java and JDBC. The Database used is MySql.

## Details of the Project:
1. The Hotel has 8 types of rooms. 
They are as follows:
  - Single Room [AC / NON-AC]
  - Double Room [AC / NON-AC]
  - Triple Room [AC / NON-AC]
  - Quad Room [AC / NON-AC]
2. When the application starts, the Customer has two options: 
  - To just View All the Room Details. 
  - To Book a Room.
3. While Booking the Room, the Customer is asked for the room number he is interested in. Then, the availability of the following room is checked and following room is assigned to him. The customer is also asked for his personal details which are then stored in database.
4. The hotel also provides Food Ordering. The Customer has to first Login to Order Food. 
5. The Customer Login asks for Room number and customer's Aadhar Number which are first validated and then allows the Customer to access the Food Ordering Feature.
6. Customer can Order any Food as many times as he likes. The Bill amount of these Food Orders will be added in Customer's Final Bill Amount which he has to be pay before Checking out of the Hotel.
7. If the Customer wishes to Checkout, Customer can access this Feature by logging in. During Checkout customer has to do the payment for all the expenses which includes Room Charges + Food Charges.
8. Upon Successful Payment, the Room shall be again made Available for other Customers. 


## Future Additions in Project:
To Add **Manager Login** which includes -
  1. To see all customer details
  2. To see all food ordered by customer
  3. CRUD operations on Room Details
  4. CRUD operations on Food Menu Card
  5. Get old Customer's Final bill 
