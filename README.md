# NexStore

This repository contains the detailed design and documentation for the **NexStore Database**. The project includes an ER diagram, relational mappings, SQL DDL scripts, and descriptions of entities and relationships to model the database system for a retail store with both physical and online presence.

## Overview

The **NexStore Database** is a comprehensive solution for managing data in a retail environment. It models various aspects of the store, including products, employees, customers, orders, and more. The database supports key features like coupon management, product reviews, and delivery tracking.

## Setup the environment

1. Install Python 3.13 or higher
2. Create a virtual environment

```bash
python -m venv .venv
```

3. Activate the virtual environment

```bash
source .venv/bin/activate # For macos
.venv\Scripts\activate # For windows
```

4. Install the required packages

```bash
pip install -r requirements.txt
```

## Some Commands

### Run backend server

Run the fastapi backend server

```bash
python cli.py run
```

### Clean the code (necessary before creating a pull request)

Clean up the code

```bash
python cli.py clean
```

## Contributors

- [Jad Shaker](https://github.com/jadshaker)
- [Hamza Atout](https://github.com/hamzaatout)
- [Khaled Ammoura](https://github.com/Khaled1621)
