% Model equations

function Pwt = wt_model(params,v)
  
  Pwt = 0;
  
  if(v < params.v_ci || v > params.v_co)
    Pwt = 0;
  end
  if(v >= params.v_ci && v<params.v_r)
    Pwt = params.Pmax*(v-params.v_ci)/(params.v_r-params.v_ci);
  end
  if(v >= params.v_r && v<params.v_co)
    Pwt = params.Pmax;
  end

end