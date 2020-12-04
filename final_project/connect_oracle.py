import cx_Oracle
import pandas as pd
import query, cred

"""
Some quick start guides:
* cx_Oracle 8: https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html
* pandas: https://pandas.pydata.org/pandas-docs/stable/user_guide/10min.html
"""
# TODO change path of Oracle Instant Client to yours


# TODO change credentials
# Connect as user "user" with password "mypass" to the "CSC423" service
# running on lawtech.law.miami.edu

# # get column names from cursor
# columns = [c[0] for c in cursor.description]
# # fetch data
# data = cursor.fetchall()
# # bring data into a pandas dataframe for easy data transformation
# df = pd.DataFrame(data, columns = columns)
# print(df) # examine
# print(df.shape)
# print(df.columns)
#print(df['FIRSTNUM']) # example to extract a column
def makeQuery(data):
    cx_Oracle.init_oracle_client(lib_dir = "/Users/joshuawelsh/instantclient_19_8")
    connection = cx_Oracle.connect(
    cred.user , cred.psswd, "lawtech.law.miami.edu/CSC_423")
    cursor = connection.cursor()
    cursor.execute(data)
    columns = [c[0] for c in cursor.description]
    data = cursor.fetchall()
    df = pd.DataFrame(data, columns = columns)
    print(df) # examine
    print(df.shape)
    print(df.columns)



def choice():
    val = int()
    print("Please select the sql query you would like to execute: ")
    print("1) List out all current and past clients")
    print("2) List all the vehicles that are currently available for hire")
    print("3) Display the highest paid employee's first name, last name, date of birth and date joined.")
    print("4) List out all the staff in descending order of salary")
    print("5) List out all vehicle data with more than 1000 milage")
    val = input()
    val = int(val)
    if(val < 1 or val > 5):
        print("Invalid input. Exit......")
    
    if(val == 1):
        makeQuery(query.Q1)
    elif(val == 2):
        makeQuery(query.Q2)
    elif(val == 3):
        makeQuery(query.Q3)
    elif(val == 4):
        makeQuery(query.Q4)
    elif(val == 5):
        makeQuery(query.Q5)



choice()
