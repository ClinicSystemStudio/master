CREATE TABLE IF NOT EXISTS appointments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  client_name TEXT NOT NULL DEFAULT 'Client',
  email TEXT,
  phone TEXT,

  appointment_date TEXT NOT NULL,
  appointment_time TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'confirmed',

  reschedule_token TEXT NOT NULL,

  booking_type TEXT NOT NULL DEFAULT 'consultation',

  package_type TEXT,
  tattoo_size TEXT,

  amount_paid REAL DEFAULT 0,
  payment_status TEXT DEFAULT 'unpaid',
  payment_type TEXT,
  payment_reference TEXT,

  sessions_total INTEGER DEFAULT 0,
  sessions_used INTEGER DEFAULT 0,
  package_status TEXT DEFAULT 'none',

  whatsapp_reminder_sent TEXT DEFAULT 'no',
  aftercare_sent TEXT DEFAULT 'no',

  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_confirmed_slot
ON appointments (appointment_date, appointment_time, booking_type)
WHERE status = 'confirmed';

CREATE INDEX IF NOT EXISTS idx_appointments_status
ON appointments (status);

CREATE INDEX IF NOT EXISTS idx_appointments_date
ON appointments (appointment_date);

CREATE INDEX IF NOT EXISTS idx_appointments_token
ON appointments (reschedule_token);
