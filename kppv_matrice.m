function matrice_confusion = kppv_matrice(N,K,ListeClass,listeLabel,labelA)
    matrice_confusion = zeros(37,37);
    s = 1.0e+04*0.0050;
    for i = 1:37
        individu = i;
        chemin = './Images_Projet_2019';
        fichier = [chemin '/' num2str(individu+3) '-' num2str(posture) '.jpg']
        Im=importdata(fichier);
        I=rgb2gray(Im);
        I=im2double(I);
        image_test=I(:)';
        C = X_c*W;
        donnees_apprentissage = C(:,1:N);
        image_test_centre = image_test-individu_moyen;
        donnees_test = image_test_centre * W;
        donnees_test = donnees_test(:,1:N);
        [individu_reconnu,distances] = kppv(donnees_apprentissage, donnees_test, N ,K, listeClass, listeLabel, labelA)

        if ( distances(1)<s )
    	    matrice_confusion(individu_reconnu,individu) = 1;
        end
    end
