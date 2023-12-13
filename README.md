
# Oracle DB Project
## Oracle DB Project: Exploring Oracle DB Features

  
This repository serves as a compilation of scripts developed during my exploration of Oracle DB features. The project not only showcases code I've written specifically for this endeavor but also involves a thorough review of existing scripts. Through this process, I aimed to enhance my understanding of Oracle DB, refine SQL*PLUS skills, and interact with Oracle through the Windows CLI.

The methodology included revisiting pre-existing code, adding clarifying comments, creating new schema objects and scripting queries tailored to this project. While most tables are straightforward, I adhered to best practices by implementing Primary and Foreign Key constraints, emphasising good database design.

### Tools

- Oracle DB 18c

- Oracle SQLDeveloper

- Windows Command Prompt

- ChatGPT


### Challenges and Lessons:

    
- **Additional Learning:** The successful implementation of certain project features required exploration of online resources. Valuable references include:
    - Oracle documentation
    - "OCA Oracle Database SQL Exam Guide (Exam 1Z0-071)" by Steve O'Hearn, providing useful syntax reminders
    - ChatGPT, offering clear explanations of different subquery types
    - learnsql.com, aiding in clarifying inline views

- **Multiple Substitution Variables Challenge:** One notable challenge involved the use of multiple substitution variables in SQL*PLUS. While previous scripts prompted for a single variable, I aimed to advance by prompting for two. Despite initial errors and a lack of external resources, overcoming this challenge involved:
  - Experimenting with different syntax variations
  - Ensuring my variables were called correctly
  - Deepening my understanding of variable definition

My first attempt at scripting this was:

```
accept vName prompt "Please enter a menu item "
accept vSize prompt "Please enter item size "
select *
from monthly_sales_analysis
where item = &Name and item_size = &Size
```


This syntax is correct however, I omitted the "v" in my variables in the WHERE clause (for example: ``&Name`` instead of ``&vName``), causing the script to continue to prompt "Enter value" infinitely.

Second attempt:

```
accept vName, vSize prompt "Please enter item name and size "
select *
from monthly_sales_analysis
where item = &Name and item_size = &Size
```

This syntax is incorrect and the code didn't run.

Final code:

```
accept vName prompt "Please enter a menu item "
accept vSize prompt "Please enter item size "
select *
from monthly_sales_analysis
where item = &vName and item_size = &vSize
```

The syntax is correct and the variables are called correctly in the WHERE clause. This code achieves the intended functionality.

- **Key Takeaways:** The project highlighted areas requiring experimentation, revision, or presenting challenges, including pre-existing code. Key takeaways encompass:

    - Commenting complex code: Meeting the challenge of explaining intricate code functionality in a comprehensive yet concise manner.
    - Navigating nesting conversion functions: Emphasising the necessity for attention to detail in syntax while working with nested conversion functions.
    - Using Non-Equijoin for Range-Based Joins: Employing non-equijoins to connect records from two tables with no matching columns, based on a specified range in the condition.
    - Utilising various types of subqueries: Exploring and implementing different types of subqueries to deepen my overall understanding of each type.
    - Scripting Queries with Multiple Substitution Variables: Overcoming challenges posed by scripting queries with multiple substitution variables, despite limited external resources.
    - Mastering multitable INSERT statements: Developing proficiency in multitable INSERT statements for data insertion, involving troubleshooting errors and experimenting with JOIN clauses.
    - Employing Multitable INSERT Statements for Data Pivoting: Using multitable INSERT statements to pivot data, enabling clearer and more insightful data analysis.
    - Utilising MERGE Statements for Data Update and Insertion:** Employing MERGE statements to efficiently update and insert data in one pass.
    - Utilising Analytic Functions: Exploring and applying various analytic functions, such as ROW_NUMBER(), alongside associated clauses like the OVER() clause, has been a pivotal takeaway. This experience has provided valuable insights into optimising result sets, gaining a nuanced understanding of data distribution, and mastering the finer details of analytic capabilities within Oracle DB.

#### Conclusion 

In conclusion, this project has been instrumental in elevating my proficiency in Oracle Database management. Through this experience, I have gained a solid understanding of various aspects related to working with Oracle DB and its distinctive SQL "dialect." This knowledge has provided a strong foundation, enabling me to navigate through complex tasks and challenges with confidence.

Looking ahead, there are exciting opportunities to further enhance this expertise. While using the Oracle XE product has been beneficial, I am eager to explore additional functionalities that may be available in enterprise versions. This will not only broaden my skill set but also expose me to advanced features and capabilities that could bring added value to future projects.

Moreover, recognising the continuous evolution of Oracle technologies, I plan to deepen my exploration of untapped functionalities within the XE product. This includes delving into functions and features that I may not have fully explored during the course of this project. Regular practice and hands-on experience will be key in solidifying my understanding and ensuring that I stay abreast of any updates or changes in Oracle's offerings.

In essence, this project marks a significant milestone in my Oracle development journey. As I move forward, the path is filled with opportunities for growth, and I am enthusiastic about continuing to expand my knowledge and skills in the dynamic realm of Oracle Database management.


## Installation

If you have Oracle DB 12c and above installed, CREATE TABLE scripts are available in relevant files for the tables created specifically for this project.

Some scripts operate against the HR sample schema included in the Oracle DB installation, as indicated in relevant comments.

To unlock the HR schema in SQL*Plus (Windows):

- Run CMD as admin.

- Connect to Oracle as DBA ``sqlplus / sysdba;``

<img width="676" alt="1  connect as DBA" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/741c047a-42c6-42af-93bc-9f35ba432777">

- Check whether you are connected to a container or pluggable DB ``show con_name;``
"CDB" indicates a container DB

<img width="673" alt="2  show container name" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/598d00a2-6296-4e95-a585-b397450e63ba">

- (Optional) set the column name format to a20 for better readability ``column name format a20;``

<img width="674" alt="3  set format" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/0153896d-9ca9-4802-a8d7-977fe5cfb6cb">

- Find the container ID ``select name, con_id from v$pdbs;``
The container DB is displayed in the second row (for example, in this screenshot, the container DB is named XEPDB1 and the container ID is 3)

<img width="679" alt="4  con id" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/25619399-8de7-47a9-a8ae-68f2be08efab">

- Find the service name that corresponds to the container ID ``select name as "Service Name"
			    from v$active_services
			    where con_id = 3;``

<img width="572" alt="5  service name" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/2d4782c2-ac01-4a41-95e6-a88a5ccdc96b">

- Locate the TNS file in your Oracle DB Home folder:
 	- Go to your DB Home folder
 	- Go to Network folder
 	- Go to Admin folder
 	- Open tnsname.ora with a text editor such as Notepad
 	- Copy the first block of of script and paste it at the end of the file for editing
 	- Change the name of the service to the name of your pluggable DB in all caps
 	- If necessary, change the host to localhost, port 1521
 	- Change the SERVICE_NAME to the name of the pluggable DB in small letters
 	- Save and close file

<img width="665" alt="6 tns ora" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/bbedb272-0867-4a7f-99ac-63470f0cb6bd">

- Run a fresh CMD prompt as admin
- Restart Oracle listener ``lsnrctl reload``

<img width="674" alt="7  reload" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/41e8231a-94e8-4991-bfec-d42f9aa94855">

- Run a fresh CMD prompt as admin
- Connect to Oracle as DBA ``sqlplus / sysdba;``
- Switch from the container DB to the pluggable DB ``alter session set container = [CONATINERNAME];``
You can check whether you have switched by issuing the ``show con_name;`` command again

<img width="646" alt="11  con name" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/5eb6e395-4c84-4668-85f8-8051e7381755">

- Ensure the DB is in Open mode ``select name, open_mode from v$pdbs;``

<img width="674" alt="12 open mode" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/a2cfe421-88fe-48b2-8838-2fdc88dfd5cb">

  If the value in the open_mode column is "MOUNTED" and not "READ WRITE", you will need to open the DB by issuing the ``alter pluggable database open;`` command

- Unlock the HR schema ``alter user HR identified by [your chosen password] account unlock;``

<img width="671" alt="14 unlock" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/925d7fe7-072d-459f-9cef-6a118746c180">



The sales_viewer script can be called in SQL Developer. 
   To call the scrip in the command prompt:

- If you have not downloaded the repository, save the sales_viewer.sql file to your Home directory by selecting the file, clicking "Raw" and then "Save as"
- Run CMD as administrator
- Connect to SQL*Plus ``sqlplus``
- Connect to the schema in which you created the monthly_sales_grid and monthly_sales_analysis tables
Enter user-name: ``username@database`` 
Enter password: [enter the password for your username]
- Issue the command ``start sales_viewer`` 

<img width="677" alt="call script" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/2c03b6f3-d542-4bdb-bbda-fdfbe07e69a0">


### Credits

 - Steve O'Hearn
 - [Manish Sharma](https://www.youtube.com/watch?v=maLrgeY0InA)
 - [eCollege](https://www.ecollege.ie/), as ever
 - [learnsql.com](https://learnsql.com)



## License

[MIT](https://choosealicense.com/licenses/mit/)


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)



## Feedback

If you have any feedback, please reach out to me at ashforgit@proton.me


## Disclaimer

All names and data created for this project, including animal names, are either products of the author's imagination, LLM-generated, or otherwise randomiser-generated. Any connection or resemblance to actual persons, living or dead, is entirely coincidental.

Please note that some of the code in this project operates against the HR sample schema that ships with Oracle DB. The disclaimer only applies to the data created specifically for this project and not to the HR sample schema provided by Oracle.
