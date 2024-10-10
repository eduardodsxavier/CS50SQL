CREATE INDEX stundent_id ON students(id);

CREATE INDEX couses_info ON courses(title, department, number, semester);

CREATE INDEX satisfies_courses_id ON satisfies(course_id);

CREATE INDEX student_id_enrollment ON enrollments(student_id);
