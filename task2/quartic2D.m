function [w] = quartic2D(x, a, b)
% 2D quartic

w = -(1/2)*a*(x(1)^2 + x(2)^2) + (1/4)*b*(x(1)^4 + x(2)^4);