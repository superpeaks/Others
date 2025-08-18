ALTER TABLE public.post_invoice_deductions
ALTER COLUMN discounts_pct TYPE NUMERIC(15, 10) USING discounts_pct::NUMERIC(15, 10),
ALTER COLUMN other_deductions_pct TYPE NUMERIC(15, 10) USING other_deductions_pct::NUMERIC(15, 10),
ALTER COLUMN date TYPE DATE USING date::DATE;


--In this statement, the USING clause is used to specify the conversion from the existing text data type to the date data type. The expression date::DATE is used to cast the "date" column's existing values to the date data type.

--Please note that performing this operation will update the data type of the existing "date" column directly. It will convert the text-based dates ('yyyy-mm-dd') to the date data type representation without the need for a new column. Always make sure to back up your data before performing any data type conversion or structural changes to your tables.

--This statement will alter the data type of the "discounts_pct" column to NUMERIC(15, 10), which means it can store values with a total of 15 digits, with 10 of those digits used for the fractional part (decimal places).
