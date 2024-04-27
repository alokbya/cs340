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

## Normalization: 3NF
- 3NF: The table is in 2NF and no non-key attributes determine another non-key attribute of that table
  - Also a simplification of 3NF, but sufficient for our needs
  - In our non-normalized table, telephone number depends on hte customer, not the invoice, so it violates 3NF
- 3NF is related to 1NF as it requires thinking further about whether the table contains one entity

## Summary
- The big idea:
  - Reduce redundancy
  - Design to prevent anomalies
  - If your tables have PKs, represent a single entity and you avoid anomalies, they are 3NF and sufficiently normalized
- Normalization comes at a price
  - more tables increases the performance cost of running queries
  - 3NF may not always be necessary
  - But it s advised to go with 3NF when in doubt

## Resources
- [Database Normalization](https://en.wikipedia.org/wiki/Database_normalization)
- [Database Normalization Video](https://www.youtube.com/watch?v=GFQaEYEc8_8&t=3s)


## Video notes
- When data disagrees with itself its a problem of bad-database design
- When you normalize a database table, you structure it in a way that it can't express redundant information
  - In a normalized table you can't have a customer's name in two places
- Normalized tables are
  - Easier to understand
  - Easier to enhance and extend
  - Protected from
    - insertion anomalies
    - update anomalies
    - deletion anomalies
- Sets of criteria to assess level of danger for database (how unnormalized a table is)
  - 1NF: each column has a single value (min safety guarantee)
  - 2NF: 1NF + no partial dependencies (greater safety guarantee)
- Using row order to convery information violates 1NF
- Mixing data types within the same column violates 1NF (db platform won't let you do it anyway)
- A table without a primary key violates 1NF
- Storing a repeating group of data items on a single row violates First Normal Form
- First Normal Form Rules:
  - Using row order to convey information is not permitted
  - Mixing data types within the same column is not permitted
  - A table without a primary key is not permitted
  - repeating groups of data items on a single row is not permitted
- 2NF is all about how a tables non key columns relate to the primary key
- Non-Formal definition of 2NF: Each non-key attribute must depend on the *entire primary key*
- Third Normal Form: Every non-key attribute in a table should depend on the key, the whole key, and nothing but the key
- Boyce-Codd Normal Form: Every attribute in a table should depend on the key, eh whole key, and nothing but the key
- Fourth Normal Form: Multivalued dependencies in a table must be multivalued dependencies on the key
- Fifth Normal Form: The table (which must be in 4NF) cannot be describable as the logical result of joining some other tables together.