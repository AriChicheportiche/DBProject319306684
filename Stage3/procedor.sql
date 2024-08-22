CREATE PROCEDURE UpdateLoanStatus(p_Loan_ID VARCHAR(50))
BEGIN
    DECLARE v_IsPaid BOOLEAN;

    -- קריאה לפונקציה CheckLoanPaid
    SET v_IsPaid = CheckLoanPaid(p_Loan_ID);

    -- עדכון מצב ההלוואה בהתאם לתוצאה
    IF v_IsPaid THEN
        UPDATE Loan
        SET LoanStatus = 'Paid'
        WHERE Loan_ID = p_Loan_ID;
    ELSE
        UPDATE Loan
        SET LoanStatus = 'Unpaid'
        WHERE Loan_ID = p_Loan_ID;
    END IF;
END;
