function [ snd_norm ] = normalizar( sonido )
    maximo = max(abs(sonido));
    snd_norm=sonido*0.891/maximo;
end

