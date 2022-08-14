function g = intrans(f, method, varargin)

    %varargin is cell class variable
    error(nargchk(2,4,nargin)); %detect arg erroe
    %nargin method get input args numbers
    %nargchk method is check args in [min mix] ?
    
    if strcmp(method,'log') %compare str
        g = logTransform(f,varargin(f));
        return;
    end
    
    if isfloat(f) && (max(f(:)) > 1 || min(f(:)) < 0)
        f = mat2gray(f);
    end
    
    [f,revertclass] = tofloat(f);
    
    switch method
        
        
        case 'neg'
            g = imcomplement(f);
        
        case 'gamma'
            g = gammaTransform(f,varargin{:});
            
        case 'stretch'
            g = stretchTransform(f,varargin{:});
        case 'specified' 
            g = spcfiedTransform(f, varargin{:});
            
        otherwise 
                error('Unknown enhancement method ');
    end

    g = revertclass(g);

end









