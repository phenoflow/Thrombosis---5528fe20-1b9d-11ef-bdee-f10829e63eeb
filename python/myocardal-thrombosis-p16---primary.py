# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"14AT.00","system":"readv2"},{"code":"G30X.00","system":"readv2"},{"code":"G350.00","system":"readv2"},{"code":"G380.00","system":"readv2"},{"code":"G301z00","system":"readv2"},{"code":"G307100","system":"readv2"},{"code":"G30y.00","system":"readv2"},{"code":"G384.00","system":"readv2"},{"code":"G306.00","system":"readv2"},{"code":"G30..17","system":"readv2"},{"code":"G30yz00","system":"readv2"},{"code":"G304.00","system":"readv2"},{"code":"G383.00","system":"readv2"},{"code":"G32..00","system":"readv2"},{"code":"G305.00","system":"readv2"},{"code":"G35X.00","system":"readv2"},{"code":"G30z.00","system":"readv2"},{"code":"14A4.00","system":"readv2"},{"code":"G301.00","system":"readv2"},{"code":"G38..00","system":"readv2"},{"code":"G30..00","system":"readv2"},{"code":"G308.00","system":"readv2"},{"code":"G351.00","system":"readv2"},{"code":"G353.00","system":"readv2"},{"code":"G381.00","system":"readv2"},{"code":"G35..00","system":"readv2"},{"code":"G32..11","system":"readv2"},{"code":"Gyu3400","system":"readv2"},{"code":"G38z.00","system":"readv2"},{"code":"G32..12","system":"readv2"},{"code":"G30B.00","system":"readv2"},{"code":"14A3.00","system":"readv2"},{"code":"G312.00","system":"readv2"},{"code":"G30X000","system":"readv2"},{"code":"14AH.00","system":"readv2"},{"code":"G30..15","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('thrombosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["myocardal-thrombosis-p16---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["myocardal-thrombosis-p16---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["myocardal-thrombosis-p16---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
