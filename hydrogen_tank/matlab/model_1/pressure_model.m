% The pressure model itself
   function P = pressure_model(n,params)      
      % Constant
      R = 8.314;
      
      % Pressure calculation
      P = n*R*params.T/params.V; % Pa
   end
