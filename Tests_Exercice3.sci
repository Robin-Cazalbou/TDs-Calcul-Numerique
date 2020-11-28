// ------------ Exercice 3 -------------------------------

// ------------ Etude du temps d'exécution ----------------

clear tailles_de_n temps_en_n_3b temps_en_n_2b temps_en_n_1b ;
compteur = 0;

for n=10:10:100
    
    compteur = compteur +1;
    tailles_de_n(compteur) = n;
    A=rand(n,n);
    B=rand(n,n);
    
    //matmat3b:
    duree = 0;
    for i=1:10
        tic();
        matmat3b(A,B);
        duree = toc() + duree;
    end
    temps_en_n_3b(compteur) = duree/10;
    
    //matmat2b:
    duree = 0;
    for i=1:10
        tic();
        matmat2b(A,B);
        duree = toc() + duree;
    end
    temps_en_n_2b(compteur) = duree/10;
    
    //matmat1b :
    duree = 0;
    for i=1:10
        tic();
        matmat1b(A,B);
        duree = toc() + duree;
    end
    temps_en_n_1b(compteur) = duree/10;
    
end

plot(tailles_de_n, [temps_en_n_3b temps_en_n_2b temps_en_n_1b])

/*
subplot(1,3,2)
plot(tailles_de_n, temps_en_n_2b)

subplot(1,3,3)
plot(tailles_de_n, temps_en_n_1b)
*/









