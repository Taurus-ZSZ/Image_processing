function g = gammaTransform(f, gamma)
    %display(gamma);
    g = imadjust(f, [ ], [ ],gamma);
end