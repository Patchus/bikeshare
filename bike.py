

def converttonew(infile):
	bike = open(infile+'.csv','r+')
	out = []
	for i in bike:
		line = i.split(',') 
		station = line[3].split('(3')
		station_id = line[4].split('(3')
		if len(station) == 2:
			line.insert(3,station[0])
			line.insert(4,'3'+station[1].split(')')[0])
			line.remove(line[5])
		else:
			line.insert(4,'NA')
		if  len(station_id) ==2:
			line.insert(5,station_id[0])
			line.insert(6,'3'+station_id[1].split(')')[0])
			line.remove(line[7])
		else:
			line.insert(6,'NA')
		#print line
		out.append(line)

	bike.close()
	bikeout = open(infile+'2.csv','w+')

	for i in out:
		bikeout.writelines(','.join(i))

	bikeout.close()


converttonew('2010-4th-quarter')
converttonew('2011-1st-quarter')
converttonew('2011-2nd-quarter')
converttonew('2011-3rd-quarter')
converttonew('2011-4th-quarter')
