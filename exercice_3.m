clear;
close all;
load donnees;
load exercice_1;
figure('Name','Image tiree aleatoirement','Position',[0.2*L,0.2*H,0.6*L,0.5*H]);

% Seuil de reconnaissance a regler convenablement
s = 6.0e+03;

% Pourcentage d'information 
per = 0.95;

% Tirage aleatoire d'une image de test :
individu = randi(37);
posture = randi(6);
chemin = './Images_Projet_2019';
fichier = [chemin '/' num2str(individu+3) '-' num2str(posture) '.jpg']
Im=importdata(fichier);
I=rgb2gray(Im);
I=im2double(I);
image_test=I(:)';
 
% Affichage de l'image de test :
colormap gray;
imagesc(I);
axis image;
axis off;

% Nombre N de composantes principales a prendre en compte 
% [dans un second temps, N peut etre calcule pour atteindre le pourcentage
% d'information avec N valeurs propres] :
N = 8;

% N premieres composantes principales des images d'apprentissage :
donnees_apprentissage = C(:,1:N);

% N premieres composantes principales de l'image de test :
donnees_test = image_test * W';
donnees_test = donnees_test(:,1:N);

% Determination de l'image d'apprentissage la plus proche (plus proche voisin) :
kkpv(donnes_apprentissage,donnees_test

% Affichage du resultat :
if ...
	individu_reconnu =...
	title({['Posture numero ' num2str(posture) ' de l''individu numero ' num2str(individu)];...
		['Je reconnais l''individu numero ' num2str(individu_reconnu)]},'FontSize',20);
else
	title({['Posture numero ' num2str(posture) ' de l''individu numero ' num2str(individu)];...
		'Je ne reconnais pas cet individu !'},'FontSize',20);
end
