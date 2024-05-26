# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"G740.11","system":"readv2"},{"code":"G82z100","system":"readv2"},{"code":"G802000","system":"readv2"},{"code":"14A8100","system":"readv2"},{"code":"G82z111","system":"readv2"},{"code":"G820.00","system":"readv2"},{"code":"G801.13","system":"readv2"},{"code":"G801.11","system":"readv2"},{"code":"G81..00","system":"readv2"},{"code":"G801.12","system":"readv2"},{"code":"G801F00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('thrombosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["thrombosis-p16---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["thrombosis-p16---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["thrombosis-p16---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)