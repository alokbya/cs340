# Normalization
The process of designing databases in well structured tables that allow updates without introducting anomalies or creating redundancy. There are three common forms of normalization widely used in RDBMS design:
- 1st normal form (1NF)
- 2nd normal form (2NF)
- 3rd normal form (3NF)

Normalization forms go all the way to 6NF, but 3NF is the most commonly used. All databases should be in first and second normal form. Third normal form requires performance considerations to be taken into account.

## Common database design problems
- Redundancy: data is duplicated in the database
  - It makes it hard to change
  - It makes it hard to find
  - It wastes space (and therefore money!)
- Anomalies: inconsistencies in the data that create problems for the organization in poorly planned databases
- Good relational database design seeks to eliminate redundancy and anomalies

>"A process that we go through to try and identify all separate entities in our design, and we do that by talking to the customers (clients) and think deeply about what this db is supposed to solve. We also add sample data which allows us to go through the steps of normalization.
Normalization is designed to help us prevent data redundancy, and the three types of anomolies: update, insert, and delete."

**Creating separate tables for separate entitites.**

### Normalization helps to prevent:
- **Data redundancy:** duplicated data wastes space and increases the likelihood of errors. It can cause *update anomalies*
- **Update anomalies:** it is difficult to update duplicated data
- **Insert anomalies:** e.g. having to create a dummy invoice in order to add a customer
- **Delete anomalies:** e.g. deletin an invoice deletes information about the customer as well

Normalization forms go all the way to 6NF, but 3NF is the most commonly used. All databases should be in first and second normal form. Third normal form requires performance considerations are taken into account.

## A simpllified version:**
- Organize data into lists
  - Each list provides details about one kind of thing
  - Each item (row) in the list is uniquely identified
- Each list has multiple columns capturing 'attributes' that describe the listed things; allow only one value for an attribute in each row
- The value in one column is not to determine the value in another column

## Normalization: 1NF
- 1NF: Each table represents a single entity (or idea)
  - Our table combining customers, invoices and terms code violates 1NF
  - We would need to create three tables to comply with 1NF
- Thinking about the requirements of your database and carefully dividing into discrete entitites takes time and careful consideration

## Normalization: 2NF
- 2NF: The database is in 1NF and each table ahs its own unique primary key
  - This is a simplification of 2NF, but sufficient for our needs
  - Sometimes tables are designed without primary keys, and combinations of attributes are used to create a PK (e.g. building name + room number = PK for a *Rooms* table); in those cases you may need to deal with 2NF differently
  - For our purposes in this class, we always create a primary key to satisfy 2NF