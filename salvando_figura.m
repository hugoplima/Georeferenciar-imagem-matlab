clear all
close all
clc

addpath ginput2


%% Carregando a imagem no matlab
[mapa,cor] = imread('parnaiba1.gif','gif'); % g--> ?? a imagem
                                      % mapa--> sao as cores
                                      
if ~isempty(mapa)
    Im = ind2rgb(mapa,cor);
end                                      

I = rgb2gray(Im);     % transforma a figura em p e b
I2 = im2double(I);    % tentando melhorar a imagem
imshow(Im);           % carrega a imagem na tela colorida
% imshow(I2);           % carrega na tela I2 P&B

%% GEOREFERENCIANDO UMA IMAGEM
ginput2(true,'.k');

% abre os argumentos da figura e salva os limites lon e lat
xlon=get(gca,'xlim'); % lon
ylat=get(gca,'ylim'); % lat

%---------------------------------------------------------------------------------------%
%                           PREPARA A BATIMETRIA PARA PLOTAR                            %
%---------------------------------------------------------------------------------------%

%     LAT = linspace(ylat(1,1),ylat(1,2),2340);            % varia????o de latitude da ??rea(grau e decimo de grau)
%     LON = linspace(xlon(1,1),xlon(1,2),1654);           % varia????o de longitude da ??rea

   LAT = linspace(ylat(1,1),ylat(1,2),2100);            % varia????o de latitude da ??rea(grau e decimo de grau)
   LON = linspace(xlon(1,1),xlon(1,2),1259);           % varia????o de longitude da ??rea
%    pcolor(LON,LAT,I2); shading flat
%    colormap gray
asasasas
  save BSM_ma.mat LON LAT I2 Im