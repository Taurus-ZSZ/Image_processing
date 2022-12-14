function g = spcfiedTransform(f, txfun)
    txfun = txfun(:);
    if any(txfun) > 1 || any(txfun) <=0
        error ('All elements of tcfun must be in the range [0 1].');
    end
    
    T = txfun;
    X = linspace(0,1,numel(T))';
    g = interp1(X,T,f);
   
end