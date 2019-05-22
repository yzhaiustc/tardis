indexs = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11"]
for ind in indexs:
	query = '''echo sbatch submit_{I}.sjob >> run.sh
'''
        with open("sep_" + ind + ".sh", "w") as f:
            f.write(query.format( I = ind))
