

LINUX - New LINUX BASH Script
######################################################################
mkdir ~/Documents/All-In-One-Invoice-Spreadsheets/;
csvArray=("Title, Date, Customer, Form No., Labor, Goods, Other, Sales Tax, Subtotal, % Amt, Total, Paid/Unpaid, Notes");
for f in ~/Documents/All-In-One-Invoices/*.pdf; do 
     filename=$(basename -- "$f");
     filename="${filename%.*}";
     csvArray+=("$filename");
done;
csvArray+=(", , , , , , , , , , , , ");
csvArray+=("TOTALS, , , , , , , , , , , , ");
csvArray+=("Total Labor,=SUM(E:E), , , , , , , , , , , ");
csvArray+=("Total Goods,=SUM(F:F), , , , , , , , , , , ");
csvArray+=("Other,=SUM(G:G), , , , , , , , , , , ");
csvArray+=("Sales Tax,=SUM(H:H), , , , , , , , , , , ");
csvArray+=("Subtotal,=SUM(I:I), , , , , , , , , , , ");
csvArray+=("% Amt,=SUM(J:J), , , , , , , , , , , ");
csvArray+=("Total Sales,=SUM(K:K), , , , , , , , , , , ");
printf "%s\n" "${csvArray[@]}" > ~/Documents/All-In-One-Invoice-Spreadsheets/All-In-One-Invoice-Spreadsheet$(date +'%Y-%m-%d_%H-%M-%S').csv;
xdg-open ~/Documents/All-In-One-Invoice-Spreadsheets/
######################################################################
# Same as above in one a Liner
mkdir ~/Documents/All-In-One-Invoice-Spreadsheets/; csvArray=("Title, Date, Customer, Form No., Labor, Goods, Other, Sales Tax, Subtotal, % Amt, Total, Paid/Unpaid, Notes"); for f in ~/Documents/All-In-One-Invoices/*.pdf; do filename=$(basename -- "$f"); filename="${filename%.*}"; csvArray+=("$filename"); done; csvArray+=(", , , , , , , , , , , , "); csvArray+=("TOTALS, , , , , , , , , , , , "); csvArray+=("Total Labor,=SUM(E:E), , , , , , , , , , , "); csvArray+=("Total Goods,=SUM(F:F), , , , , , , , , , , "); csvArray+=("Other,=SUM(G:G), , , , , , , , , , , "); csvArray+=("Sales Tax,=SUM(H:H), , , , , , , , , , , "); csvArray+=("Subtotal,=SUM(I:I), , , , , , , , , , , "); csvArray+=("% Amt,=SUM(J:J), , , , , , , , , , , "); csvArray+=("Total Sales,=SUM(K:K), , , , , , , , , , , "); printf "%s\n" "${csvArray[@]}" > ~/Documents/All-In-One-Invoice-Spreadsheets/All-In-One-Invoice-Spreadsheet$(date +'%Y-%m-%d_%H-%M-%S').csv; xdg-open ~/Documents/All-In-One-Invoice-Spreadsheets/


