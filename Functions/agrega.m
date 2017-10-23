function [Agregated] = agrega(S,horas)

    count = 0;
    Agregated = 0;
    day = 60*horas;

    ia = 1;

    for time=1:length(S)

        if isnan(S(time))
            S(time) = 0.5*(S(time-1)+S(time+1));
        end
        
        if count == day
            Agregated(ia) = Agregated(ia)+S(time);
            ia = ia+1;
            count = 0;
        elseif count == 0
            Agregated(ia) = S(time);
            count = count+1;   
        else
            Agregated(ia) = Agregated(ia)+S(time);
            count = count+1;        
        end

    end
end