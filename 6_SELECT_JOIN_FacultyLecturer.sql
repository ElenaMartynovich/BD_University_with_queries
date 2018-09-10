SELECT public."Lecturers".l_surname, public."Lecturers".l_faculty, public."Faculty".f_name
	FROM public."Lecturers"
	INNER JOIN public."Faculty" ON public."Lecturers".l_faculty=public."Faculty".f_id 
	WHERE f_name='Faculty of Economics';






