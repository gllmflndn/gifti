function display(this)
% Display method for GIfTI objects
% FORMAT display(this)
% this   -  GIfTI object
%__________________________________________________________________________
% Copyright (C) 2008 Wellcome Trust Centre for Neuroimaging

% Guillaume Flandin
% $Id: display.m 8 2008-05-12 09:53:02Z guillaume $

display_name = inputname(1);
if isempty(display_name)
    display_name = 'ans';
end

if length(this) == 1 && ~isempty(this.data)
    eval([display_name ' = struct(this);']);
    eval(['display(' display_name ');']);
else
    eval([display_name ' = this;']);
    eval(['builtin(''display'',' display_name ');']);
end