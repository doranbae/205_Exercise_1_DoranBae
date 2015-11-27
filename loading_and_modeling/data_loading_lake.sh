#This is script for downlading datafiles

#create a new Directory
mkdir /data/w205/hospitalcare

cd /data/w205/hospitalcare

#download hospital data
wget https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip

#unzip files
unzip Hospital_Revised_Flatfiles.zip

cd Hospital_Revised_Flatfiles
#modify file name & remove header

tail -n +2 "Hospital General Information.csv" > "hospitals.csv"
tail -n +2 "Timely and Effective Care - Hospital.csv" > "effective_care.csv"
tail -n +2 "Readmissions and Deaths - Hospital.csv" > "readmissions.csv"
tail -n +2 "Measure Dates.csv" > "measuredates.csv"
tail -n +2 "hvbp_hcahps_08_06_2015.csv" > "surveys_responses.csv"

#copy files back to hospitalcare Directory
cp /data/w205/hospitalcare/Hospital_Revised_Flatfiles/"hospitals.csv" /data/w205/hospitalcare/
cp /data/w205/hospitalcare/Hospital_Revised_Flatfiles/"effective_care.csv" /data/w205/hospitalcare/
cp /data/w205/hospitalcare/Hospital_Revised_Flatfiles/"readmissions.csv" /data/w205/hospitalcare/
cp /data/w205/hospitalcare/Hospital_Revised_Flatfiles/"measuredates.csv" /data/w205/hospitalcare/
cp /data/w205/hospitalcare/Hospital_Revised_Flatfiles/"surveys_responses.csv" /data/w205/hospitalcare/