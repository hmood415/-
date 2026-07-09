-- ================================================
-- انطاق و إدراك — إعداد قاعدة البيانات في Supabase
-- انسخ هذا الكود كاملاً والصقه في:
-- Supabase Dashboard → SQL Editor → New Query → Run
-- ================================================

-- جدول العملاء
CREATE TABLE clients (
  id         uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  name       text NOT NULL,
  phone      text NOT NULL UNIQUE,
  created_at timestamptz DEFAULT now()
);

-- جدول الحجوزات
CREATE TABLE bookings (
  id              uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  client_phone    text NOT NULL,
  client_name     text NOT NULL,
  service_title   text NOT NULL,
  provider_name   text NOT NULL,
  provider_spec   text NOT NULL,
  booking_date    text NOT NULL,
  booking_time    text NOT NULL,
  duration_label  text NOT NULL,
  duration_id     text NOT NULL,
  cost            integer NOT NULL,
  status          text DEFAULT 'upcoming',
  created_at      timestamptz DEFAULT now()
);

CREATE INDEX bookings_phone_idx ON bookings (client_phone);

-- تفعيل الأمان وفتح الصلاحيات للاستخدام العام
ALTER TABLE clients  ENABLE ROW LEVEL SECURITY;
ALTER TABLE bookings ENABLE ROW LEVEL SECURITY;

CREATE POLICY "public insert clients"  ON clients  FOR INSERT WITH CHECK (true);
CREATE POLICY "public select clients"  ON clients  FOR SELECT USING (true);
CREATE POLICY "public insert bookings" ON bookings FOR INSERT WITH CHECK (true);
CREATE POLICY "public select bookings" ON bookings FOR SELECT USING (true);
