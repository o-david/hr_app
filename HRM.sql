CREATE TABLE "employees" (
  "id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "department_id" integer,
  "position_id" integer,
  "employee_type" varchar,
  "created_at" timestamp
);

CREATE TABLE "departments" (
  "id" integer PRIMARY KEY,
  "department_name" varchar
);

CREATE TABLE "job_position" (
  "id" integer PRIMARY KEY,
  "position_name" varchar
);

CREATE TABLE "payroll" (
  "id" integer PRIMARY KEY,
  "employee_id" integer,
  "HourlyRate" varchar,
  "MonthlySalary" varchar
);

CREATE TABLE "leave_request" (
  "id" integer PRIMARY KEY,
  "employee_id" varchar,
  "RequestDate" varchar,
  "StartDate" varchar,
  "EndDate" varchar
);

CREATE TABLE "training_session" (
  "id" integer PRIMARY KEY,
  "session_name" varchar
);

CREATE TABLE "attendance_record" (
  "id" integer PRIMARY KEY,
  "employee_id" integer,
  "session_id" varchar,
  "created_at" timestamp
);

CREATE TABLE "employee_training_session" (
  "id" integer PRIMARY KEY,
  "employee_id" integer,
  "session_id" integer
);

ALTER TABLE "employees" ADD FOREIGN KEY ("department_id") REFERENCES "departments" ("id");

ALTER TABLE "employees" ADD FOREIGN KEY ("position_id") REFERENCES "job_position" ("id");

ALTER TABLE "employees" ADD FOREIGN KEY ("employee_type") REFERENCES "payroll" ("employee_id");

ALTER TABLE "leave_request" ADD FOREIGN KEY ("employee_id") REFERENCES "employees" ("id");

ALTER TABLE "attendance_record" ADD FOREIGN KEY ("employee_id") REFERENCES "employees" ("id");

ALTER TABLE "employee_training_session" ADD FOREIGN KEY ("employee_id") REFERENCES "employees" ("id");

ALTER TABLE "employee_training_session" ADD FOREIGN KEY ("session_id") REFERENCES "training_session" ("id");
