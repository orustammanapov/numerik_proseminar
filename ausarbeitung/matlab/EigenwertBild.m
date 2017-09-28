colordef black
format compact
set(0,'defaultAxesFontName','Dejavu Sans')
set(0,'defaultTextFontName','Dejavu Sans')

n = 10;
A = gallery('grcar',n);
eigA = eig(A);
theta = FrancisAlgorithmus(A);

hfig = figure(1);
plot(real(eigA),imag(eigA),'r+',...
     real(theta),imag(theta),'go');
axis([0 1.8 -2.5 2.5]);
axis equal
title('Berechnung der Eigenwerte')
xlabel('Realteil')
ylabel('Imaginaerteil')
legend('eig','Francis'' Algorithmus')

set(hfig,...
    'InvertHardcopy','on',...
    'PaperPosition',[0 0 16 16],...
    'PaperPositionMode','manual')

print('-depsc','Eigenwerte.eps');
