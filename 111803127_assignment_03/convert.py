count = 0
try:
    with open("input.csv", 'r') as csvfile:
        with open("output.vcf", 'w') as vcffile:
            for line in csvfile.readlines():
                count += 1
                if count == 1:
                    continue
                values = line.split(",")
                name = values[0].split(" ")
                vcffile.write("BEGIN:VCARD\n")
                vcffile.write("VERSION:3.0\n")
                insert = ";".join(name[::-1])
                vcffile.write("N:;{0}".format(insert.upper()))
                vcffile.write(";;;\n")
                vcffile.write("FN:{0}\n".format(" ".join(name).upper()))
                vcffile.write("ORG:{0}".format(values[3].upper()))
                vcffile.write("TEL;TYPE={0}:{1}\n".format(
                    values[2].upper(), values[1]))
                vcffile.write("END:VCARD\n")
except:
    print("CSV File Not Found")
