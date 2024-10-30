create database health_analysis;
use health_analysis;
describe table health_care;
select * from Health_analysis.health_care;

# 1.Retrieve all patient names who were admitted for cancer.

select * from health_analysis.health_care where Medical_Condition = 'Cancer';
select Name,Medical_condition from health_analysis.health_care where Medical_Condition = 'Cancer';

# 2. What is the total billing amount for all patients admitted under "Urgent" admission type

select sum(Billing_Amount) as total_amt from health_analysis.health_care total where Admission_Type = 'Urgent';

# 3.Find the number of male patients with diabetes

select count(Gender) as male_count,Medical_Condition from health_analysis.health_care where Medical_Condition ='diabetes' and Gender = 'Male';

# 4.List the patients who stayed in the hospital for more than 10 days.

select name,datediff(Date_of_Admission,Discharge_date) as stay from health_analysis.health_care where datediff(Date_of_Admission,Discharge_date) >10;

# 5.Which insurance provider covers the highest number of patients?

select Insurance_Provider, count(*) as Patient_count from health_analysis.health_care group by Insurance_Provider order by patient_count desc limit 5;

# 6.Find the average billing amount for patients diagnosed with asthma.

select Medical_condition,avg(billing_Amount) from health_analysis.health_care where Medical_Condition = 'asthma';

# 7.Retrieve the details of patients whose test results are abnormal

select * from health_care where Test_Results = 'abnormal';

# 8.Get the list of unique doctors treating cancer patients.

select distinct(Doctor),Medical_Condition from health_care where medical_condition = 'Cancer';

# 9.List the names of patients admitted in the year 2022

select * from health_care where year(Date_of_Admission)=2022;

# 10.Find patients who were prescribed "Ibuprofen" and their test results were inconclusive

select * from health_care where Medication = 'Ibuprofen' and Test_Results = 'inconclusive';

# 11.Get the average length of hospital stay for "Emergency" admissions.

select * from health_care;

# 12.Which hospital has treated the most patients.

select hospital,count(*) as uniq from health_care group by hospital order by uniq desc limit 1;

# 13.Find the minimum and maximum billing amounts for patients with cancer.

select min(billing_amount) as Minimum, max(billing_amount) as maximum  from health_care where Medical_Condition = 'Cancer';

# 14.Retrieve the list of male patients who were prescribed "Paracetamol".

select * from health_care where Medication = 'paracetamol' and gender = 'male';

# 15.List the details of patients whose billing amount exceeds the average billing amount

select name, avg(billing_amount) as average from health_care;

# 16.Find the doctor who treated the most patients

select doctor,count(*) as Most from health_care group by doctor order by most desc limit 1;

# 17.What is the total billing amount covered by "Aetna" insurance provider?

select sum(billing_Amount) as Total from health_care where Insurance_Provider = 'Aetna';

# 18.List patients who stayed in room number "389"

select Name,room_number from health_care where room_number = 389;

# 19. Which medical condition has the highest number of patients?

select medical_condition,count(medical_condition) as Highest from health_care group by medical_condition order by highest desc;

# 20. List all female patients with abnormal test results.

select * from health_care where gender ='female' and test_results ='abnormal';

# 21.Find the oldest patient in the dataset

select age from health_care order by age desc limit 10;

# 22.What is the total number of patients with diabetes?

select count(name)  from health_care where Medical_Condition = 'diabetes';

# 23. Retrieve all unique blood types from the dataset.

select distinct(blood_type) as unique_blood from health_care;

# 24.Get the details of patients admitted by "Samantha Davies".

select * from health_care where Doctor ='samantha davies';

# 25.Which doctor handled the most cancer patients?

select doctor,count(*)as most from health_care where Medical_Condition ='cancer' group by Doctor order by most desc limit 2;