# AUF — Don Emiliano J. Valdes Medical Clinic
### Clinical Decision Support & Patient Trace Analytics System

A professional, offline-first clinical management system designed for the AUF Don Emiliano J. Valdes Medical Clinic. This application provides patient registration, clinical encounter tracking, and dynamic health analytics.

---

## 🚀 Key Features
- **Dynamic Analytics Dashboard**: Real-time tracking of patient volume, demographics, and top diagnoses with interactive Chart.js visualizations.
- **Patient Information Record**: Comprehensive digital management of patient profiles, household data, and PhilHealth status.
- **Clinical Encounters**: Structured logging of chief complaints, diagnoses, and treatments.
- **Physician Management**: Directory of attending physicians and health workers.
- **Report Export**: Generation of printable patient history and medical summaries.
- **Local Network Ready**: Optimized for deployment in LAN environments (XAMPP).

---

## 🛠️ Requirements
- **XAMPP** (Apache + MySQL)
- **PHP 7.4+**
- **Browser**: Modern browser (Chrome, Edge, Firefox)

---

## 📥 Installation & Setup

### 1. Database Configuration
The system requires a MySQL database named `valdescare`.

1. Open **phpMyAdmin** (`http://localhost/phpmyadmin`).
2. Create a new database named `valdescare`.
3. Select the `valdescare` database and click the **Import** tab.
4. Choose `valdescare_schema.sql` from the root of this project.
5. Click **Go**.

### 2. Assets (Chart.js)
The system uses **Chart.js** for analytics. The file `assets/js/chart.min.js` should be present. If it is missing, you can download it via PowerShell:

```powershell
Invoke-WebRequest `
  -Uri "https://cdn.jsdelivr.net/npm/chart.js@4.4.4/dist/chart.umd.min.js" `
  -OutFile "assets\js\chart.min.js"
```

### 3. Access the System
Place the project folder in your XAMPP `htdocs` directory and navigate to:
`http://localhost/ccs06-appdev/final-test/`

---

## 📂 Project Structure
```text
final-test/
├── dashboard/        ← Analytics & Chart.js visualizations
├── patients/         ← Patient registration & history
├── consultations/    ← Encounter logging (New/List/View)
├── physicians/       ← Staff directory management
├── exports/          ← Printable report generation
├── assets/           ← CSS & JS (Chart.js)
├── includes/         ← Shared UI components (Header/Footer)
├── db_connect.php    ← Core DB config & Timezone (Asia/Manila)
└── valdescare_schema.sql
```

---

## ⚙️ Configuration Notes
- **Timezone**: Defaulted to `Asia/Manila` (UTC+8) in `db_connect.php`.
- **Database**: Edit `db_connect.php` if your MySQL root user has a password.
- **Validation**: Future dates are automatically blocked in encounters and registration to ensure data integrity.

---

## ❓ Troubleshooting
| Issue | Solution |
| :--- | :--- |
| **Database Connection Error** | Verify MySQL is running in XAMPP and `valdescare` database is imported. |
| **Charts not showing** | Ensure `assets/js/chart.min.js` exists in the assets folder. |
| **Incorrect Time** | The system is set to Manila time. Check your server's system clock if offsets persist. |
| **Missing CSS/Styles** | Ensure you are accessing the site via `http://localhost/` and not opening the `.php` file directly. |
