cd Exercise
cd Datacopy
cd Hospital_Revised_Flatfiles
tail -n +2 "Hospital General Information.csv" > "hospitals.csv"
tail -n +2 "Timely and Effective Care - Hospital.csv" > "effective_care.csv"
tail -n +2 "Readmissions and Deaths - Hospital.csv" > "readmissions.csv"
tail -n +2 "Measure Dates.csv" > "measuredates.csv"
tail -n +2 "hvbp_hcahps_08_06_2015.csv" > "surveys_responses.csv"

scp -i thisKeyPair2.pem /Users/Doran/Exercise_1_data/effective_care.csv root@ec2-54-84-142-229.compute-1.amazonaws.com:/data/w205/hospitalcare
scp -i thisKeyPair2.pem /Users/Doran/Exercise_1_data/hospitals.csv root@ec2-54-84-142-229.compute-1.amazonaws.com:/data/w205/hospitalcare
scp -i thisKeyPair2.pem /Users/Doran/Exercise_1_data/measuredates.csv root@ec2-54-84-142-229.compute-1.amazonaws.com:/data/w205/hospitalcare
scp -i thisKeyPair2.pem /Users/Doran/Exercise_1_data/readmissions.csv root@ec2-54-84-142-229.compute-1.amazonaws.com:/data/w205/hospitalcare
scp -i thisKeyPair2.pem /Users/Doran/Exercise_1_data/surveys_responses.csv root@ec2-54-84-142-229.compute-1.amazonaws.com:/data/w205/hospitalcare
