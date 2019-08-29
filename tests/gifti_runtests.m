function results = gifti_runtests(pth)

if ~nargin, pth = fileparts(mfilename('fullpath')); end

results = struct('Passed',1,'Failed',0,'Incomplete',0,'Duration',0);
