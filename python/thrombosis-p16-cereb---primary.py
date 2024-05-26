# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"G661.00","system":"readv2"},{"code":"G669.00","system":"readv2"},{"code":"Gyu6400","system":"readv2"},{"code":"G641.00","system":"readv2"},{"code":"G640.00","system":"readv2"},{"code":"L417100","system":"readv2"},{"code":"G63y000","system":"readv2"},{"code":"G65z000","system":"readv2"},{"code":"G65z100","system":"readv2"},{"code":"G65zz00","system":"readv2"},{"code":"G65..00","system":"readv2"},{"code":"Gyu6300","system":"readv2"},{"code":"G66..13","system":"readv2"},{"code":"G662.00","system":"readv2"},{"code":"L417000","system":"readv2"},{"code":"G65y.00","system":"readv2"},{"code":"G664.00","system":"readv2"},{"code":"G660.00","system":"readv2"},{"code":"G64z200","system":"readv2"},{"code":"G63y100","system":"readv2"},{"code":"G64z300","system":"readv2"},{"code":"G654.00","system":"readv2"},{"code":"G641.11","system":"readv2"},{"code":"G64z.00","system":"readv2"},{"code":"G67A.00","system":"readv2"},{"code":"G65z.00","system":"readv2"},{"code":"G64z.12","system":"readv2"},{"code":"G66..00","system":"readv2"},{"code":"G641000","system":"readv2"},{"code":"L417.00","system":"readv2"},{"code":"G640000","system":"readv2"},{"code":"Gyu6G00","system":"readv2"},{"code":"G676000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('thrombosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["thrombosis-p16-cereb---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["thrombosis-p16-cereb---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["thrombosis-p16-cereb---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
