-- Insert data into Borrower table
INSERT INTO Borrower (BorrowerID, BorrowerName, BorrowerAddress) VALUES (1, 'John Doe', '123 Elm Street');
-- Repeat with at least 200 records

-- Insert data into Loan table
INSERT INTO Loan (LoanID, LoanStartDate, BorrowerID) VALUES (1, '2024-01-01', 1);
-- Repeat with at least 200 records

-- Insert data into PaymentSchedule table
INSERT INTO PaymentSchedule (ScheduleID, DueDate, LoanID) VALUES (1, '2024-02-01', 1);
-- Repeat with at least 200 records

