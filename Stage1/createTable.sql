-- Create the Loan table
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    LoanStartDate DATE NOT NULL,
    BorrowerID INT,
    FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID)
);

-- Create the PaymentSchedule table
CREATE TABLE PaymentSchedule (
    ScheduleID INT PRIMARY KEY,
    DueDate DATE NOT NULL,
    LoanID INT,
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);

-- Create the Borrower table
CREATE TABLE Borrower (
    BorrowerID INT PRIMARY KEY,
    BorrowerName VARCHAR(100) NOT NULL,
    BorrowerAddress VARCHAR(255) NOT NULL
);

