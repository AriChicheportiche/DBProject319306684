
CREATE PROCEDURE ProcessLoanUpdates(p_Loan_ID VARCHAR(50))
BEGIN
    -- קריאה לפונקציה CheckLoanPaid ולפרוצדורה UpdateLoanStatus
    CALL UpdateLoanStatus(p_Loan_ID);
END;