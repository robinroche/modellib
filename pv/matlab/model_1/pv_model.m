% Model equations

function power = pv_model(params,solar_rad)
  power = params.efficiency*params.area*solar_rad; 
end
