%%%%% Archivo fcubic.m %%%%%
function filtro = fcubic(T) x = -2 : 1/T : 2;
x = x(2:end-1);
y = zeros(size(x));
  for i = 1:size(x,2) 
    if abs(x(i)) < 1
      y(i) = 1-2*abs(x(i))^2 + abs(x(i))^3; 
    else
      y(i) = 4 - 8*abs(x(i)) + 5*abs(x(i))^2 - abs(x(i))^3;
  end 
end
filtro = y'*y; end 
