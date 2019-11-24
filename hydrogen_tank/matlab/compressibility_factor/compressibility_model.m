% The compressibility factor model itself
   function z = compressibility_model(coeffs,p_psi)
      z = coeffs(1) + coeffs(2).*p_psi + coeffs(3).*p_psi.^2 + ...
        coeffs(4).*p_psi.^3 + coeffs(5).*p_psi.^4 + + coeffs(6).*p_psi.^5;
   end