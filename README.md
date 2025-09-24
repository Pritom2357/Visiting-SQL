# Visiting-SQL 🎯

*Practice & Concept Reference Repository for SQL / T-SQL*

---

## Overview

This repo is my structured notebook while learning (and reinforcing) SQL. Instead of scattered notes, I’ve grouped everything by concept — from the basics of `SELECT` to advanced window functions, partitioning, indexing, and optimization tricks.

The goal: a **practical, example-driven knowledge base** you can open in SSMS or Azure Data Studio, run queries, and instantly see what’s going on. I used Microsoft SQL Server for practice.

It’s not meant to be “perfect docs,” more like a **hands-on playground** where every folder tells a story: concept → experiments → key lessons.

---

## Table of Contents (Concept Groups)

1. Query Fundamentals (`Query/`)
2. Data Definition Language – DDL (`DDL/`)
3. Data Manipulation Language – DML (`DML/`)
4. Conditions & Filtering (`Conditions/`)
5. CASE Expressions (`CASE/`)
6. Aggregation Basics (`Aggregation/`)
7. Joins (Matching) (`Basic JOINs - matching/`)
8. Joins (Non-Matching / Anti / Cross) (`Advanced JOINS - non-matching/`)
9. Joins Across Multiple Tables (`JOINS - multiple tables/`)
10. Set Operators (`SET/`)
11. Functions (`FUNCTION/`)
12. Common Table Expressions – CTE (`CTE/`)
13. CTAS & Temporary Constructs (`CTAS/`)
14. Subqueries & Correlated Patterns (`Subqeury/`)
15. Window Functions (`WINDOW FUNCTION/`)
16. Indexing & Maintenance (`INDEXes/`)
17. Optimization Patterns (`Optimization/`)
18. Partitioning (`PARTITION/`)
19. Stored Procedures & Control Flow (`Stored Procedure/`)
20. Triggers (`Triggers/`)
21. Views (`VIEW/`)

---

## Folder Highlights

### 1. Query (`Query/`)

**Purpose:** Core SELECT patterns.\
**Covers:** `SELECT`, `WHERE`, `ORDER BY`, `TOP`, `DISTINCT`, grouping.\
**Key Notes:**

* SQL executes in logical order (`FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY`).
* Filter early in `WHERE` for efficiency.
* `DISTINCT` comes late in the pipeline → don’t use it as a crutch.

---

### 2. DDL (`DDL/`)

**Purpose:** Shaping the schema.\
**Covers:** `CREATE` (implied), `ALTER`, `DROP`, cleanup scripts.\
**What I Did:** Played with altering existing objects and dropping them to rebuild mentally.\
**Key Notes:**

* Always check dependencies before `DROP`.
* Safer to evolve with `ALTER` than recreate.
* Consistent naming lowers cognitive load (remembering which table does what) later.

---

### 3. DML (`DML/`)

**Purpose:** Changing the data inside the structure.\
**Covers:** `INSERT`, `INSERT ... SELECT`, multiple `UPDATE` patterns, `DELETE` variations.\
**What I Did:** Tested row‑level edits and bulk style modifications.\
**Key Notes:**

* Dry‑run mutations with a `SELECT` of the same predicate first.
* Always list columns in `INSERT`.
* Break complex updates into stages for clarity.

---

### 4. Conditions (`Conditions/`)

**Purpose:** Building precise filters.\
**Covers:** Comparison ops (`=`, `!=`, `<`, `>`), `BETWEEN`, `IN`, `LIKE` patterns, logical (`AND/OR/NOT`).\
**What I Did:** Compared different predicate styles & pattern matching versions.\
**Key Notes:**

* `BETWEEN` is inclusive — watch data upper bounds.
* Leading wildcard kills index usage (`LIKE '%abc'`).
* NULL never equals anything; use `IS NULL`.

---

### 5. CASE (`CASE/`)

**Purpose:** Inline conditional expressions.\
**Covers:** Multi-branch mappings, classifications, safe calculations.\
**What I Did:** Converted raw values into categories and guarded risky ops.\
**Key Notes:**

* First match wins — order intentional.
* Great for deriving labels without extra joins.
* Don’t bury huge business logic inside one select list.

---

### 6. Aggregation (`Aggregation/`)

**Purpose:** Summaries over sets.\
**Covers:** `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` basics.\
**What I Did:** Validated differences between `COUNT(*)` vs `COUNT(column)`.\
**Key Notes:**

* `COUNT(column)` skips NULL.
* Mix with window functions later for richer analytics.
* Beware integer overflow on large `SUM` — cast up when needed.

---

### 7. Basic Joins – Matching (`Basic JOINs - matching/`)

**Purpose:** Combining related tables.\
**Covers:** `INNER`, `LEFT`, `RIGHT`, `FULL`.\
**Key Notes:**

* Start with `INNER JOIN`; use `LEFT` when you truly need unmatched rows.
* Always qualify columns when names overlap.
* Forgetting a join condition = accidental cartesian explosion 🚨.

---

### 8. Advanced Joins – Non‑Matching (`Advanced JOINS - non-matching/`)

**Purpose:** Surface exceptions & full set relationships.\
**Covers:** Anti join patterns, `CROSS JOIN`, challenge script.\
**What I Did:** Practiced finding rows “missing” in one side and full cartesian sets.\
**Key Notes:**

* Anti joins = data quality audits (orphans, missing dims).
* Prefer `NOT EXISTS` over `NOT IN` with NULLs.
* `CROSS JOIN` only when explosion is intentional.

---

### 9. Joins – Multiple Tables (`JOINS - multiple tables/`)

**Purpose:** Scaling up beyond two tables safely.\
**Covers:** Chaining joins, alias discipline.\
**What I Did:** Layered sources incrementally.\
**Key Notes:**

* Add one join at a time; check row counts.
* Outer joins make join order matter — be deliberate.
* Aliases keep things readable fast.

---

### 10. Set Operators (`SET/`)

**Purpose:** Stack compatible result sets.\
**Covers:** `UNION`, `UNION ALL`, `INTERSECT`, `EXCEPT`.\
**What I Did:** Compared deduct cost vs raw concatenation.\
**Key Notes:**

* `UNION ALL` keeps speed + duplicates.
* `INTERSECT` / `EXCEPT` can replace join logic for clarity.
* Align data types explicitly to avoid implicit conversions.

---

### 11. Functions (`FUNCTION/`)

**Purpose:** Built-in scalar & utility operations.\
**Covers:** Date & Time (add, diff, truncate, parts), Number (`ABS`, `ROUND`), String (`CONCAT`, `SUBSTRING`, etc.), NULL handling (`NULLIF`, `IS NULL`).\
**What I Did:** Experimented with formatting, extraction, and validation.\
**Key Notes:**

* Formatting (`FORMAT`) is expensive — reserve for presentation.
* Use `NULLIF` + `AVG` to skip zeros if modeling missing values.
* Date boundaries: prefer half‑open ranges (`>= start AND < nextStart`).

---

### 12. CTE (`CTE/`)

**Purpose:** Readability + recursion.\
**Covers:** Multiple CTE chains, nested, two recursive variations.\
**What I Did:** Built hierarchies and staged transformations.\
**Key Notes:**

* CTE is inline, not persisted.
* Always guard recursion termination.
* Split dense logic into sequential CTEs.

---

### 13. CTAS (`CTAS/`)

**Purpose:** Snapshot/shape data into a new table.\
**Covers:** Create table from `SELECT`, temporary tables.\
**What I Did:** Materialized intermediate results for reuse.\
**Key Notes:**

* Index after creation if reused heavily.
* Great for isolating expensive subqueries.
* Temp tables can reduce repeated computation cost.

---

### 14. Subqueries (`Subqeury/`)

**Purpose:** Inline data derivation & existence checks.\
**Covers:** Scalar, multi-row, correlated, `EXISTS` cases.\
**What I Did:** Compared correlated vs join rewrites.\
**Key Notes:**

* Correlated forms may re-evaluate logically per row; plan might optimize.
* `EXISTS` short circuits — faster than counting.
* Rewrite if readability suffers.

---

### 15. Window Functions (`WINDOW FUNCTION/`)

**Purpose:** Analytics without losing row detail.\
**Covers:** `ROW_NUMBER`, `RANK`, `DENSE_RANK`, moving averages, framing rules.\
**Key Notes:**

* Default frame = value-based (`RANGE UNBOUNDED PRECEDING TO CURRENT ROW`).
* Switch to `ROWS` for precise row counts.
* Ranking functions differ in tie handling; pick carefully.

---

### 16. Indexing (`INDEXes/`)

**Purpose:** Performance boosts.\
**Covers:** Clustered & NonClustered columnstore, filtered index, unique index, index maintenance.\
**Key Notes:**

* Filtered indexes = great for targeted queries.
* Unique indexes double as data-quality enforcers.
* Too many indexes = slower writes. Balance is key.

---

### 17. Optimization (`Optimization/`)

**Purpose:** Make queries cheaper after they’re correct.\
**Covers:** Join order trials, index impact, predicate selectivity, DDL influence.\
**What I Did:** Observed plan changes with small edits.\
**Key Notes:**

* Measure first — don’t guess.
* Watch for scans, key lookups, spills.
* Simplify predicates to stay sargable.
* Watch for 'Execution Plan' in the SQL server

---

### 18. Partitioning (`PARTITION/`)

**Purpose:** Manage big tables + prune reads.\
**Covers:** Filegroups, partition functions/schemes, loading & adding files.\
**What I Did:** Created functions, inserted into partitioned structures.\
**Key Notes:**

* Choose a partition key that aligns with query filters (often date).
* Too many partitions adds overhead.
* Filegroups enable flexible backup & storage tiering.

---

### 19. Stored Procedures (`Stored Procedure/`)

**Purpose:** Encapsulate reusable logic.\
**Covers:** Basic procedure creation + control flow sample.\
**What I Did:** Wrapped logic to reduce repeated scripts.\
**Key Notes:**

* Parameter sniffing can cause plan instability.
* Centralizes business logic & reduces round trips.
* Avoid over‑abstracting trivial single statements.

---

### 20. Triggers (`Triggers/`)

**Purpose:** React to DML events automatically.\
**Covers:** Basic DML trigger pattern.\
**What I Did:** Tested the inserted/deleted pseudo‑tables.\
**Key Notes:**

* Always think set-based (multi-row) inside trigger.
* Hidden side effects can surprise — document intent.
* Keep logic minimal; offload heavy work elsewhere.

---

### 21. Views (`VIEW/`)

**Purpose:** Abstraction + security veneer.\
**Covers:** Create, access, combine, drop, layered usage.\
**What I Did:** Built chained views to see unfolding behavior.\
**Key Notes:**

* Views are saved queries; data lives in base tables (unless indexed view).
* Layering too deep can hide complexity → inspect definition.
* Expose only what consumers need.

---


## Learning Patterns

* Build up layer by layer (queries → joins → subqueries → windows → optimization).
* Always test assumptions with small scripts.
* NULL handling is everywhere — ignore at your own risk.
* Indexes and partitions = power tools. Use wisely.

---


## References

* [Main YouTube playlist I followed](https://www.youtube.com/playlist?list=PLNcg_FV9n7qZY_2eAtUzEUulNjTJREhQe)
* Official Microsoft Docs (T-SQL deep dives).

---

## License

Personal learning repo — free for anyone to use, adapt, or extend.

---

✨ **Think of this repo as SQL flashcards, but executable.**

---