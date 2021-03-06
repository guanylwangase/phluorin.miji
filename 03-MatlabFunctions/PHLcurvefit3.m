function [gof]=PHLcurvefit2(ppp)
%CREATEFIT Create plot of data sets and fits
%   CREATEFIT(PPP)
%   Creates a plot, similar to the plot in the main Curve Fitting Tool,
%   using the data that you provide as input.  You can
%   use this function with the same data you used with CFTOOL
%   or with different data.  You may want to edit the function to
%   customize the code and this help message.
%
%   Number of data sets:  1
%   Number of fits:  1

% Data from data set "ppp":
%     Y = ppp:
%     Unweighted

% Auto-generated by MATLAB on 05-Nov-2012 13:21:49

% Set up figure to receive data sets and fits

% Line handles and text for the legend.
legh_ = [];
legt_ = {};
% Limits of the x-axis.
xlim_ = [Inf -Inf];
% Axes for the plot.


% --- Plot data that was originally in data set "ppp"
x_1 = (1:numel(ppp))';
ppp = ppp(:);



% --- Create fit "fit 1"
fo_ = fitoptions('method','NonlinearLeastSquares','Lower',[-Inf -Inf    0]);
ok_ = isfinite(x_1) & isfinite(ppp);
if ~all( ok_ )
    warning( 'GenerateMFile:IgnoringNansAndInfs',...
        'Ignoring NaNs and Infs in data.' );
end
st_ = [22.777999999999999 1 8.6621659696046613 ];
set(fo_,'Startpoint',st_);
ft_ = fittype('gauss1');

% Fit this model using new data
cf_ = fit(x_1(ok_),ppp(ok_),ft_,fo_);
[cf_,gof ]= fit(x_1(ok_),ppp(ok_),ft_,fo_);
% Alternatively uncomment the following lines to use coefficients from the
% original fit. You can use this choice to plot the original fit against new
% data.
%    cv_ = { 25.001603276317805, -6.3764602148271026, 9.4473565460327773};
%    cf_ = cfit(ft_,cv_{:});



% --- Finished fitting and plotting data. Clean up.


