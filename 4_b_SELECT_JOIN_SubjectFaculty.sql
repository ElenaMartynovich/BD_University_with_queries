SELECT public."Subject".s_name, public."Subject".s_faculty, public."Faculty".f_name
	FROM public."Subject"
	INNER JOIN public."Faculty" ON public."Subject".s_faculty=public."Faculty".f_id 
	WHERE f_name='Faculty of Mathematics and Informatics';





