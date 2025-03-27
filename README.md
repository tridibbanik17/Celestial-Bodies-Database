<div align="center">

<h3 align="center">Celestial Bodies Database</h3>

  <p align="center">
    A PostgreSQL database modeling celestial objects and their relationships.
    <br />
     <a href="https://github.com/tridibbanik17/celestial-bodies-database">github.com/tridibbanik17/celestial-bodies-database</a>
  </p>
</div>


## Table of Contents

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#key-features">Key Features</a></li>
      </ul>
    </li>
    <li><a href="#architecture">Architecture</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

This project provides a PostgreSQL database named `universe` designed to model celestial objects and their relationships. It includes tables for galaxies, stars, planets, moons, and nebulas, with detailed attributes and constraints for each. The database is populated with sample data to represent a simplified model of the universe.

### Key Features

- **Relational Database:** Uses PostgreSQL to create a relational database structure.
- **Celestial Objects:** Models galaxies, stars, planets, moons, and nebulas.
- **Data Integrity:** Implements primary keys, foreign keys, unique constraints, and not-null constraints to ensure data integrity.
- **Detailed Attributes:** Includes various attributes for each celestial object, such as name, type, age, distance, and physical properties.
- **Sample Data:** Populates the database with sample data for each table.

## Architecture

The project uses PostgreSQL as the database management system. The `universe.sql` script contains the SQL commands to create the database, define the tables, set up constraints, and insert data.

- **PostgreSQL:** Open-source relational database management system.
- **SQL:** Structured Query Language used to define and manipulate the database.

## Getting Started

### Prerequisites

- PostgreSQL installed and running.
- psql (PostgreSQL command-line tool) or another PostgreSQL client.

  ```sh
  # Example installation command for Ubuntu
  sudo apt-get update
  sudo apt-get install postgresql postgresql-contrib
  ```

### Installation

Instructions for setting up the database:

1.  **Clone the repository:**

    ```sh
    git clone https://github.com/tridibbanik17/celestial-bodies-database.git
    cd celestial-bodies-database
    ```

2.  **Create the database:**

    ```sh
    psql -U postgres -c 'CREATE DATABASE universe;'
    ```

3.  **Connect to the database:**

    ```sh
    psql -U postgres -d universe
    ```

4.  **Run the SQL script:**

    ```sh
    \i universe.sql
    ```

5.  **Verify the installation:**

    ```sh
    \dt
    ```

    This should display the list of tables: `galaxy`, `star`, `planet`, `moon`, and `nebula`.

## Acknowledgments

- This README was created using [gitreadme.dev](https://gitreadme.dev) — an AI tool that looks at your entire codebase to instantly generate high-quality README files.
