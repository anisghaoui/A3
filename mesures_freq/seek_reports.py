from glob import glob 
import re 

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl

def extract():
	file_paths = glob("./Quartus_projects/*/output_files/*.fit.summary")
	for f in file_paths:
		data_dict = {}
		pattern = re.compile(r'\d+,?\d*')
		with open(f,'r') as file:
			lines = file.readlines()
			data_dict['name'] = lines[3].split(':')[1].strip()
			matches = re.findall(pattern,lines[7])
			data_dict['tel'] = int(matches[0].replace(',',''))
			data_dict['max_tel'] = int(matches[1].replace(',',''))
			matches = re.findall(pattern,lines[8])
			data_dict['cf'] = int(matches[0].replace(',',''))
			matches = re.findall(pattern,lines[9])
			data_dict['lr'] =int(matches[0].replace(',',''))
			matches = re.findall(pattern,lines[10])
			data_dict['reg'] = int(matches[0].replace(',',''))
			matches = re.findall(pattern,lines[10])
			data_dict['reg'] = int(matches[0].replace(',',''))
			matches = re.findall(pattern,lines[11])
			data_dict['pin'] = int(matches[0].replace(',',''))
			for k,v in data_dict.items():
				if k != 'max_tel':
					print(v)
	
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
	# extract()
	plot()