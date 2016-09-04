function GrabarVoz()
    display('Comenzando a grabar voz.')
    display('Presiona cualquier tecla para comenzar a grabar la palabra "C�rculo".')
    pause
    display('Di "C�rculo" claramente.')
    for i=1:10
        Fs = 8000;
        y = wavrecord(5*Fs,Fs,'int16');
        x = double(y);
        %plot(x);
        %display(x);
        fidw = fopen(strcat('Circulo',int2str(i),'.raw'),'w');
        for n = i:length(x)
            fwrite(fidw,y(n),'int16',0,'l');
        end
        fclose(fidw);
        soundsc(x,11025)
        pause(5)
        display(strcat('Repetici�n',' ',int2str(i),' terminada.'))
        if i < 10
            display(strcat('Presiona cualquier tecla para la repetici�n',int2str(i+1)))
            pause
        else
            display('Fin de las repeticiones para la palabra "C�rculo"')
        end        
    end
    
    display('Presiona cualquier tecla para comenzar a grabar la palabra "Tri�ngulo".')
    pause
    display('Di "Tri�ngulo" claramente.')
    for i=1:10
        Fs = 8000;
        y = wavrecord(5*Fs,Fs,'int16');
        x = double(y);
        fidw = fopen(strcat('Triangulo',int2str(i),'.raw'),'w');
        for n = i:length(x)
            fwrite(fidw,x(n),'int16',0,'l');
        end
        fclose(fidw);
        soundsc(x,11025)
        pause(5)
        display(strcat('Repetici�n',' ',int2str(i),' terminada.'))
        if i < 10
            display(strcat('Presiona cualquier tecla para la repetici�n',int2str(i+1)))
            pause
        else
            display('Fin de las repeticiones para la palabra "Tri�ngulo"')
        end        
    end
    
    display('Presiona cualquier tecla para comenzar a grabar la palabra "Cuadrado".')
    pause
    display('Di "Cuadrado" claramente.')
    for i=1:10
        Fs = 8000;
        y = wavrecord(5*Fs,Fs,'int16');
        x = double(y);
        fidw = fopen(strcat('Cuadrado',int2str(i),'.raw'),'w');
        for n = i:length(x)
            fwrite(fidw,x(n),'int16',0,'l');
        end
        fclose(fidw);
        soundsc(x,11025)
        pause(5)
        display(strcat('Repetici�n',' ', int2str(i),' terminada.'))
        if i < 10
            display(strcat('Presiona cualquier tecla para la repetici�n',int2str(i+1)))
            pause
        else
            display('Fin de las repeticiones para la palabra "Cuadrado"')
        end        
    end
    
    display('Presiona cualquier tecla para comenzar a grabar la palabra "Estrella".')
    pause
    display('Di "Estrella" claramente.')
    for i=1:10
        Fs = 8000;
        y = wavrecord(5*Fs,Fs,'int16');
        x = double(y);
        fidw = fopen(strcat('Estrella',int2str(i),'.raw'),'w');
        for n = i:length(x)
            fwrite(fidw,x(n),'int16',0,'l');
        end
        fclose(fidw);
        soundsc(x,11025)
        pause(5)
        display(strcat('Repetici�n',' ', int2str(i),' terminada.'))
        if i < 10
            display(strcat('Presiona cualquier tecla para la repetici�n',int2str(i+1)))
            pause
        else
            display('Fin de las repeticiones para la palabra "Estrella"')
        end        
    end
    
    display('=======================================')
    display('         Fin de la grabaci�n           ')
    display('=======================================')