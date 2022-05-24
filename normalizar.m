function [ snd_norm ] = normalizar( sonido )
    maximo = max(abs(sonido));
    snd_norm=sonido/maximo;
end

