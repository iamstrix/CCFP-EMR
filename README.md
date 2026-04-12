# ValdesCare — Quick Setup Guide

## Requirements
- XAMPP (Apache + MySQL) installed and running
- PHP 7.4+ (XAMPP includes this)

## Step 1 — Import the Database Schema

> **This is the most important step.** The system will not work without it.

1. Open **phpMyAdmin** → `http://localhost/phpmyadmin`
2. Click **SQL** in the top navigation bar
3. Click **Choose File** → select `valdescare_schema.sql` from this folder
4. Click **Go**

This will create the `valdescare` database and all tables automatically.

---

## Step 2 — Download Chart.js (already done if you see this file)

The file `assets/js/chart.min.js` must exist. If missing, run in PowerShell:

```powershell
Invoke-WebRequest `
  -Uri "https://cdn.jsdelivr.net/npm/chart.js@4.4.4/dist/chart.umd.min.js" `
  -OutFile "assets\js\chart.min.js"
```

Or download manually from https://www.chartjs.org/docs/latest/getting-started/ and save as `assets/js/chart.min.js`.

---

## Step 3 — Open the Application

Navigate to: **http://localhost/ccs06-appdev/final-test/**

---

## File Structure

```
final-test/
├── valdescare_schema.sql   ← Import this first!
├── db_connect.php          ← Database connection (edit DB_PASS if needed)
├── index.php               ← Home dashboard
├── assets/
│   ├── css/style.css
│   └── js/chart.min.js     ← Download separately (see Step 2)
├── includes/
│   ├── header.php
│   └── footer.php
├── patients/
│   ├── register.php        ← Register new patient
│   ├── list.php            ← Searchable patient list
│   └── view.php            ← Patient detail + history
├── consultations/
│   ├── new.php             ← New encounter (vitals + clinical notes)
│   ├── list.php            ← Encounter log with filters
│   └── view.php            ← Single encounter detail
├── dashboard/
│   └── index.php           ← Analytics + Chart.js visualizations
├── physicians/
│   └── manage.php          ← Physician directory management
└── exports/
    └── report.php          ← Printable patient record / summary report
```

---

## Troubleshooting

| Error | Fix |
|---|---|
| "Database Connection Error" | Make sure XAMPP MySQL is running and you imported `valdescare_schema.sql` |
| Charts not showing | Make sure `assets/js/chart.min.js` exists (see Step 2) |
| Column not found errors | Re-import `valdescare_schema.sql` — the database was likely created manually without all columns |
| Blank/plain-text page | Check that XAMPP Apache is running |
