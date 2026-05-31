-- ============================================
-- Taller de análisis de datos
-- Students Performance in Exams
-- ============================================


-- EJERCICIO 1 — La paradoja del curso de preparación
SELECT 
  parental_level_of_education,
  test_preparation_course,
  AVG((math_score + reading_score + writing_score) / 3) AS promedio
FROM taller_exams.students
GROUP BY 1, 2
ORDER BY 1, 2;


-- EJERCICIO 2 — ¿El curso sube el piso o el techo?
SELECT 
  test_preparation_course,
  APPROX_QUANTILES((math_score + reading_score + writing_score) / 3, 10)[OFFSET(1)] AS p10,
  APPROX_QUANTILES((math_score + reading_score + writing_score) / 3, 10)[OFFSET(2)] AS p25,
  APPROX_QUANTILES((math_score + reading_score + writing_score) / 3, 10)[OFFSET(5)] AS p50,
  APPROX_QUANTILES((math_score + reading_score + writing_score) / 3, 10)[OFFSET(7)] AS p75,
  APPROX_QUANTILES((math_score + reading_score + writing_score) / 3, 10)[OFFSET(9)] AS p90,
  STDDEV((math_score + reading_score + writing_score) / 3) AS desviacion
FROM taller_exams.students
GROUP BY 1;


-- EJERCICIO 3 — ¿La brecha de género es constante?
SELECT 
  parental_level_of_education,
  AVG(CASE WHEN gender = 'male' THEN math_score END) - AVG(CASE WHEN gender = 'female' THEN math_score END) AS brecha_math,
  AVG(CASE WHEN gender = 'male' THEN reading_score END) - AVG(CASE WHEN gender = 'female' THEN reading_score END) AS brecha_reading,
  AVG(CASE WHEN gender = 'male' THEN writing_score END) - AVG(CASE WHEN gender = 'female' THEN writing_score END) AS brecha_writing
FROM taller_exams.students
GROUP BY 1
ORDER BY 1;


-- EJERCICIO 4 — ¿lunch es causa o solo un síntoma?
SELECT 
  lunch,
  parental_level_of_education,
  AVG((math_score + reading_score + writing_score) / 3) AS promedio
FROM taller_exams.students
GROUP BY 1, 2
ORDER BY 1, 2;


-- EJERCICIO 5 — Perfil del estudiante en riesgo
SELECT *,
  IF((math_score + reading_score + writing_score) / 3 < 60, TRUE, FALSE) AS en_riesgo
FROM taller_exams.students;
