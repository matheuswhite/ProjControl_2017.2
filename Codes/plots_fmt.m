function plots_fmt(data1, name1, name2)

plot(data1(:,1), data1(:,2));
grid on;
if(min(data1(:,2)) == max(data1(:,2)))
    axis([min(data1(:,1)) max(data1(:,1)) min(data1(:,2))-1 max(data1(:,2))+1])
else
    axis([min(data1(:,1)) max(data1(:,1)) min(data1(:,2))-1 max(data1(:,2))+1])
end
%axis(axis1);
xlabel(name1);
ylabel(name2);

end