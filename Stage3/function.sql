CREATE FUNCTION CheckLoanPaid(p_Loan_ID VARCHAR(50))
RETURNS BOOLEAN
BEGIN
    DECLARE v_TotalPayments INT;
    DECLARE v_PaidPayments INT;

    -- ספירת התשלומים הכוללים
    SELECT COUNT(*)
    INTO v_TotalPayments
    FROM PaymentSchedule
    WHERE Loan_ID = p_Loan_ID;

    -- ספירת התשלומים ששולמו
    SELECT COUNT(*)
    INTO v_PaidPayments
    FROM Payments
    WHERE Loan_ID = p_Loan_ID AND PaymentStatus = 'Paid';

    -- השוואת התוצאות והחזרת התוצאה
    RETURN (v_TotalPayments = v_PaidPayments);
END;
