init_value = 2
i = 1;
e(i) = 10;
while(e(i) > 0.001)
    if(i == 1)
        x(i) = init_value;
    end
    g(i) = real(sqrt((x(i)+5)/2));
    i = i+1;
    x(i) = g(i-1);
    e(i) = abs(x(i-1)-x(i))
    if (e(i) > 50)
        break;
    end
end

tamanio = size (e)
ite = 1:1:tamanio(2);

figure('DefaultAxesFontsize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0], 'LineWidth',2);
grid on
xlabel('Interations')
ylabel('error')
legend('error')