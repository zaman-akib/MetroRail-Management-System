CREATE or REPLACE PROCEDURE FUND_PROC
AS 
TYPE FUND_TYPE
IS 
RECORD (
 FUND_ID fund.fund_id%type,
 FUND_AMOUNT fund.amount%type,
 COMPOENENT_NAME repair.Repair_parts%type,
 FUNDING_DATE fund.TRANSFER_DATE%type
);
FUND_REC FUND_TYPE;
BEGIN
 SELECT fund_id,amount,Repair_parts,transfer_date
 INTO FUND_REC FROM 
 fund JOIN needs_fund USING (fund_id)
JOIN repair USING (Train_id,Component_id)
WHERE fund_id='FUND00001';

DBMS_OUTPUT.PUT_LINE('Fund ID : '||FUND_REC.FUND_ID);
DBMS_OUTPUT.PUT_LINE('Fund Amount : '||FUND_REC.FUND_AMOUNT);
DBMS_OUTPUT.PUT_LINE('Component Name : '||FUND_REC.COMPOENENT_NAME);
DBMS_OUTPUT.PUT_LINE('Funding Date : '||FUND_REC.FUNDING_DATE);

END;


/////

BEGIN
FUND_PROC;
end;