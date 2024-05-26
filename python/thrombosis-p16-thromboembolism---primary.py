# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"G823.00","system":"readv2"},{"code":"G74y000","system":"readv2"},{"code":"F050100","system":"readv2"},{"code":"G74..00","system":"readv2"},{"code":"G741.00","system":"readv2"},{"code":"F050300","system":"readv2"},{"code":"G74y900","system":"readv2"},{"code":"G743.00","system":"readv2"},{"code":"G41y100","system":"readv2"},{"code":"G742200","system":"readv2"},{"code":"G74y200","system":"readv2"},{"code":"L430.00","system":"readv2"},{"code":"G742600","system":"readv2"},{"code":"Gyu8200","system":"readv2"},{"code":"G742900","system":"readv2"},{"code":"G74y500","system":"readv2"},{"code":"G74y800","system":"readv2"},{"code":"J420.17","system":"readv2"},{"code":"L433.12","system":"readv2"},{"code":"14A8.00","system":"readv2"},{"code":"G82z.00","system":"readv2"},{"code":"G742800","system":"readv2"},{"code":"SP32100","system":"readv2"},{"code":"L43z400","system":"readv2"},{"code":"L43z.00","system":"readv2"},{"code":"G742300","system":"readv2"},{"code":"G742500","system":"readv2"},{"code":"G74y600","system":"readv2"},{"code":"L432.00","system":"readv2"},{"code":"G742.00","system":"readv2"},{"code":"K138000","system":"readv2"},{"code":"G740.00","system":"readv2"},{"code":"G82zz00","system":"readv2"},{"code":"G82z011","system":"readv2"},{"code":"G74yz00","system":"readv2"},{"code":"L431200","system":"readv2"},{"code":"F050.00","system":"readv2"},{"code":"L43z000","system":"readv2"},{"code":"L43zz00","system":"readv2"},{"code":"G742400","system":"readv2"},{"code":"G742z00","system":"readv2"},{"code":"L43z100","system":"readv2"},{"code":"G82..00","system":"readv2"},{"code":"14A8.11","system":"readv2"},{"code":"G82y.00","system":"readv2"},{"code":"G742000","system":"readv2"},{"code":"G822.00","system":"readv2"},{"code":"G401.00","system":"readv2"},{"code":"G74y.00","system":"readv2"},{"code":"G74z.00","system":"readv2"},{"code":"L43..00","system":"readv2"},{"code":"G74y300","system":"readv2"},{"code":"L431100","system":"readv2"},{"code":"G742100","system":"readv2"},{"code":"L431.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('thrombosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["thrombosis-p16-thromboembolism---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["thrombosis-p16-thromboembolism---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["thrombosis-p16-thromboembolism---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
