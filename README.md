# Volunteer Call Manager

This is a simple CRM application for managing volunteer calls. It uses TrailBase as a backend, with `localStorage` as a fallback for offline use.

## Setup and Installation

### 1. Install TrailBase (Optional)

If you want to use the TrailBase backend, you first need to install the TrailBase CLI. You can do this by running the `install.sh` script:

```bash
bash install.sh
```

This will install the `trail` executable to `$HOME/.local/bin`. You may need to restart your terminal session for the `PATH` changes to take effect.

### 2. Run the TrailBase Server (Optional)

Once TrailBase is installed, you can run the server with the following command:

```bash
trail run
```

### 3. Create the Database Schema (Optional)

If you are using TrailBase, you need to create the database schema. You can do this by creating a migration and then restarting the server.

First, create a migration:
```bash
trail migration initial_schema
```

Then, copy the content of the `trailbase_data/migrations/U1756594785__initial_schema.sql` file from this repository into the newly created migration file.

Finally, restart the TrailBase server to apply the migration.

### 4. Seed the Database (Optional)

If you are using TrailBase, you can seed the database with demo data.

First, you need to create the demo users in the TrailBase admin UI (available at `http://localhost:4000/_/admin/`). Create the following users:
-   `admin@org.com` / `admin123` (admin)
-   `manager@org.com` / `manager123` (manager)
-   `volunteer@org.com` / `volunteer123` (user)

Get the IDs of the created users. Then, open the `seed.sql` file and replace the placeholder user IDs with the real IDs.

Finally, run the following command to execute the seed script:

```bash
sqlite3 traildepot/main.db < seed.sql
```

### 5. Run the Application

To run the application, simply open the `crm2.html` file in your web browser.

-   If the TrailBase server is running, the application will connect to it and use it for all data operations.
-   If the TrailBase server is not running, the application will fall back to using `localStorage`, and you can use it with the demo data in offline mode.
