BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"id"	INTEGER,
	"name"	VARCHAR(255),
	"age"	INTEGER,
	"major"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "courses" (
	"course_id"	INTEGER,
	"course_name"	VARCHAR(255),
	"instructor"	INTEGER,
	PRIMARY KEY("course_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "student_courses" (
	"student_id"	INTEGER,
	"course_id"	INTEGER,
	PRIMARY KEY("student_id","course_id"),
	FOREIGN KEY("student_id") REFERENCES "students"("id"),
	FOREIGN KEY("course_id") REFERENCES "courses"("course_id")
);
COMMIT;
