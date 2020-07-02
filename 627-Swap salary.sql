update salary
set sex = case sex when 'm' Then 'f'
    else 'm'
    end
;


update salary set sex = IF (sex = "m", "f", "m");

--update statement