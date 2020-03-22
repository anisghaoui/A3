from glob import glob 
import re 

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl

def extract():
	file_paths = sorted(glob("*.csv"))
	x = []
	y = []
	for f in file_paths:
		x.append(f.strip(".csv"))
		pattern = re.compile(r'\d+,?\d*')
		with open(f,'r') as file:
			lines = file.readlines()
			print(lines[23])
			data = re.findall(pattern,lines[23])
			y.append(int(data[2]))
	x = x[1:]+[x[0]]
	y = y[1:]+[y[0]]
	plt.bar(x,y)
	plt.grid()
	plt.xlabel("version du Nios")
	plt.ylabel("élement logique utilisé (%)")
	plt.show()
	
mpl.rcParams['figure.figsize']=(11,8)

def plot():
	df_o = pd.read_csv("quartus_perf.csv",sep='\t',decimal=',').reset_index()
	cols = df_o.columns.to_list()
	df = df_o[[cols[0]]+cols[2:]].astype('float')
	for index,col in enumerate(cols[2:]):
		my_plt = df.plot(x=cols[0], y= col,kind ='bar',color =['r']*4+['b']*4)
		plt.xticks(my_plt.get_xticks(),labels=df_o[cols[1]].to_list(),rotation=30)
		plt.grid()
		plt.savefig(str(index)+'.png')
	plt.show()

if __name__ == '__main__':
	extract()
	# plot()