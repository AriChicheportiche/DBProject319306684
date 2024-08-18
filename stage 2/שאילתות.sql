SELECT Loan.Loan_ID, Loan.LoanStartDate, Borrower.BorrowerName, Borrower.BorrowerAddress
FROM Loan
JOIN Borrower ON Loan.Borrower_ID = Borrower.Borrower_ID
WHERE YEAR(Loan.LoanStartDate) = 2024;


SELECT PaymentSchedule.Schedule_ID, PaymentSchedule.DueDate, Loan.Loan_ID, Borrower.BorrowerName
FROM PaymentSchedule
JOIN Loan ON PaymentSchedule.Loan_ID = Loan.Loan_ID
JOIN Borrower ON Loan.Borrower_ID = Borrower.Borrower_ID
WHERE MONTH(PaymentSchedule.DueDate) = 8;


DELETE FROM Loan
WHERE YEAR(LoanStartDate) < 2020;


DELETE FROM PaymentSchedule
WHERE DueDate < CURDATE();


UPDATE Borrower
SET BorrowerAddress = 'New Address'
WHERE Borrower_ID IN (
    SELECT Borrower_ID FROM Loan WHERE YEAR(LoanStartDate) = 2023
);



UPDATE PaymentSchedule
SET DueDate = DATE_ADD(DueDate, INTERVAL 30 DAY)
WHERE DueDate < CURDATE();
