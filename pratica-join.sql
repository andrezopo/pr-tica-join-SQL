-- Questão 1

SELECT u.id, u.name, c.name as city FROM users u JOIN cities c ON u."cityId" = c.id WHERE c.name = 'Rio de Janeiro' ORDER BY id ASC;

-- Questão 2

SELECT t.id, u.name as writer, u2.name as recipient, t.message FROM testimonials t JOIN users u ON t."writerId" = u.id JOIN users u2 ON t."recipientId" = u2.id ORDER BY t.id ASC;

-- Questão 3

SELECT u.id, u.name, c.name as course, s.name as school, e."endDate" FROM users u JOIN educations e ON u.id = e."userId" JOIN courses c ON e."courseId" = c.id JOIN schools s ON e."schoolId" = s.id WHERE e.status = 'finished' AND u.id = 30 ORDER BY e."endDate" ASC;

-- Questão 4

SELECT u.id, u.name, r.name as role, c.name as company, e."startDate" FROM users u JOIN experiences e ON u.id = e."userId" JOIN roles r ON e."roleId" = r.id JOIN companies c ON e."companyId" = c.id WHERE u.id = 50 AND e."endDate" IS NULL ORDER BY e."startDate" ASC;

-- Desafio Bônus

SELECT s.id, s.name as school, cr.name as course, cm.name as company, r.name as role FROM applicants a JOIN jobs j ON a."jobId" = j.id JOIN companies cm ON j."companyId" = cm.id JOIN roles r ON j."roleId" = r.id JOIN educations e ON a."userId" = e."userId" JOIN schools s ON e."schoolId" = s.id JOIN courses cr ON e."courseId" = cr.id WHERE j."companyId" = 10 AND r.name = 'Software Engineer' AND j.active = true AND e.status = 'finished';

-- Considerei apenas as pessoas que já terminaram os cursos devido ao enunciado estar se referindo como "estudaram"
