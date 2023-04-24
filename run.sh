# first we download the datasets
# unzip the datasets

cur_dir=$(pwd)

mkdir -p ${cur_dir}/data && wget https://data.caltech.edu/records/nyy15-4j048/files/256_ObjectCategories.tar?download=1 && tar -xvf  256_ObjectCategories.tar?download=1 && rm -r 256_ObjectCategories.tar?download=1

# delete some file for it 
cd ${cur_dir}/256_ObjectCategories && rm -r ./056.dog/greg && rm -r ./198.spider/RENAME2

cd ${cur_dir} && python pictureclassifier.py
