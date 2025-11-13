# AABW - CodeIgniter 4 Accounting Application

A simple accounting management system built with CodeIgniter 4, featuring a three-level account hierarchy (Akun1, Akun2, Akun3).

## Features

- 📊 Three-level chart of accounts management
- 💼 Account categories: Assets, Liabilities, Equity, Revenue, Expenses
- 🎨 Modern UI using Stisla template
- 📱 Responsive design with Bootstrap & DataTables

## Requirements

- PHP 8.1 or higher
- MySQL 5.7 or higher
- Composer
- Required PHP extensions:
  - `intl` (International)
  - `mbstring` (Multibyte String)
  - `mysqli` (MySQL Improved)

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/opqdul/aabw2.git
cd aabw2
```

### 2. Install Dependencies

```bash
composer install
```

### 3. Configure Environment

Copy the `.env` file and update the database credentials:

```bash
# The .env file already exists, just edit it
```

Edit `.env` file:

```env
CI_ENVIRONMENT = development

app.baseURL = 'http://localhost:8080/'

database.default.hostname = localhost
database.default.database = aabw_db
database.default.username = root
database.default.password = your_password
database.default.DBDriver = MySQLi
```

### 4. Enable PHP Extensions

Make sure the following extensions are enabled in your `php.ini`:

```ini
extension=intl
extension=mbstring
extension=mysqli
```

To find your `php.ini` location, run:

```bash
php --ini
```

### 5. Create Database

Create a new MySQL database:

```sql
CREATE DATABASE aabw_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

Or using command line:

```bash
mysql -u root -p -e "CREATE DATABASE aabw_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"
```

### 6. Run Migrations

Run the database migrations to create tables:

```bash
php spark migrate
```

This will create the following tables:
- `akun1s` - Level 1 accounts (main categories)
- `akun2s` - Level 2 accounts (sub-categories)
- `akun3s` - Level 3 accounts (detail accounts)

### 7. Seed Initial Data (Optional)

If you have a SQL dump file, import it:

```bash
mysql -u root -p aabw_db < aabw.sql
```

### 8. Start Development Server

```bash
php spark serve
```

The application will be available at: **http://localhost:8080**

## Project Structure

```
app/
├── Controllers/
│   ├── Akun1.php       # Level 1 accounts controller
│   ├── Akun2.php       # Level 2 accounts controller
│   └── Akun3.php       # Level 3 accounts controller
├── Models/
│   ├── ModelAkun2.php
│   └── ModelAkun3.php
├── Views/
│   ├── akun1/
│   ├── akun2/
│   ├── akun3/
│   └── layout/
└── Database/
    └── Migrations/      # Database migration files
```

## Database Schema

### Level 1 Accounts (akun1s)
- Assets (Aktiva)
- Liabilities (Kewajiban)
- Equity (Modal)
- Revenue (Pendapatan)
- Expenses (Beban)

### Relationships
- Akun2 belongs to Akun1 (one-to-many)
- Akun3 belongs to Akun2 and Akun1 (many-to-one)

## Troubleshooting

### PHP Intl Extension Error

If you get "Class 'Locale' not found" error:

1. Find your `php.ini` file: `php --ini`
2. Uncomment or add: `extension=intl`
3. Set correct extension directory if needed
4. Restart your server

### Foreign Key Constraint Error

If you get foreign key constraint errors, make sure:
- Parent records exist before creating child records
- Migration order is correct (Akun1 → Akun2 → Akun3)

### Database Connection Failed

Check your `.env` file:
- Verify database credentials are correct
- Ensure MySQL service is running
- Database name matches the one you created

## Tech Stack

- **Framework**: CodeIgniter 4.6.3
- **PHP**: 8.1+
- **Database**: MySQL/MariaDB
- **Frontend**: 
  - Bootstrap 4
  - DataTables
  - Font Awesome
  - Stisla Admin Template

## Contributing

Feel free to submit issues and pull requests.

## License

This project is open-sourced software licensed under the [MIT license](LICENSE).

## Credits

- [CodeIgniter 4](https://codeigniter.com/)
- [Stisla Template](https://github.com/stisla/stisla)

## Support

For questions and support, please open an issue in the repository.

---

Made with ❤️ using CodeIgniter 4

## Repository Management

We use GitHub issues, in our main repository, to track **BUGS** and to track approved **DEVELOPMENT** work packages.
We use our [forum](http://forum.codeigniter.com) to provide SUPPORT and to discuss
FEATURE REQUESTS.

This repository is a "distribution" one, built by our release preparation script.
Problems with it can be raised on our forum, or as issues in the main repository.

## Server Requirements

PHP version 8.1 or higher is required, with the following extensions installed:

- [intl](http://php.net/manual/en/intl.requirements.php)
- [mbstring](http://php.net/manual/en/mbstring.installation.php)

> [!WARNING]
> - The end of life date for PHP 7.4 was November 28, 2022.
> - The end of life date for PHP 8.0 was November 26, 2023.
> - If you are still using PHP 7.4 or 8.0, you should upgrade immediately.
> - The end of life date for PHP 8.1 will be December 31, 2025.

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [mysqlnd](http://php.net/manual/en/mysqlnd.install.php) if you plan to use MySQL
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library
