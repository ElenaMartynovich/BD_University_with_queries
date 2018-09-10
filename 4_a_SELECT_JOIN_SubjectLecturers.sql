SELECT public."Subject".s_id, public."Subject".s_name, public."Lecturers".l_surname
	FROM public."Subject" 
	INNER JOIN public."Lecturers" ON public."Subject".s_surname_of_lecturer=public."Lecturers".l_id 
	WHERE l_surname='Osovska';




