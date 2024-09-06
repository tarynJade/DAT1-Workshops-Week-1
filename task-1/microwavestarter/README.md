# Microwave Models
Show all data in the "microwaves" table.

**Hint:** Select all columns from the "microwaves" table.

**Expected Output Example:**
| id | maker | model | power |
|-----|-------|---------|-------|
| 1 | Sharp | R6545L | 800 |
| 2 | Sharp | R33STM | 900 |
| 3 | Sanyo | EMS3553 | 900 |
| 4 | Daewoo| KDR3000 | 800 |

---

# RETRIEVE A COLUMN

## Task 1: Show all data in the "maker" column.

**Hint:** Focus on retrieving a specific column from the table.

**Expected Output Example:**
| maker |
|--------|
| Sharp |
| Sharp |
| Sanyo |
| Daewoo |

---

## Task 2: Show all data in the "model" column.

**Hint:** Select the "model" column from the "microwaves" table.

**Expected Output Example:**
| model |
|---------|
| R6545L |
| R33STM |
| EMS3553 |
| KDR3000 |

---

# RETRIEVE MULTIPLE COLUMNS

## Task 3: Show all data in the "id" and "maker" columns.

**Hint:** Select multiple columns by listing them in the `SELECT` clause.

**Expected Output Example:**
| id | maker |
|-----|--------|
| 1 | Sharp |
| 2 | Sharp |
| 3 | Sanyo |
| 4 | Daewoo |

---

## Task 4: Show all data in the "model" and "power" columns.

**Hint:** Specify the columns you want to retrieve in the `SELECT` statement.

**Expected Output Example:**
| model | power |
|---------|-------|
| R6545L | 800 |
| R33STM | 900 |
| EMS3553 | 900 |
| KDR3000 | 800 |

---

# RETRIEVING A ROW

## Task 5: Show all data in row with id of 2.

**Hint:** Use a filtering condition to retrieve a specific row by its ID.

**Expected Output Example:**
| id | maker | model | power |
|-----|-------|--------|-------|
| 2 | Sharp | R33STM | 900 |

---

## Task 6: Show all data in row with id of 4.

**Expected Output Example:**
| id | maker | model | power |
|-----|-------|--------|-------|
| 4 | Daewoo| KDR3000| 800 |

---

# SORTING A COLUMN

## Task 7: Show the "maker" column in "microwaves" alphabetically.

**Hint:** Use the `ORDER BY` clause to sort the "maker" column alphabetically.

**Expected Output Example:**
| maker |
|--------|
| Daewoo |
| Sanyo |
| Sharp |
| Sharp |

---

# SORTING MULTIPLE COLUMNS

## Task 7: Show both "maker" and "model" sorted alphabetically.

**Hint:** Use the `ORDER BY` clause with multiple columns to sort both "maker" and "model" alphabetically.

**Expected Output Example:**
| maker | model |
|--------|---------|
| Daewoo | KDR3000 |
| Sanyo | EMS3553 |
| Sharp | R33STM |
| Sharp | R6545L |
