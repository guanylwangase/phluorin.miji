function [fitresult, gof] = PHLFitEXP(ppp)
%CREATEFIT(PPP)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      Y Output: ppp
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 02-Sep-2013 22:28:42


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( [], ppp );

% Set up fittype and options.
ft = fittype( 'exp1' );
opts = fitoptions( ft );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf];
opts.StartPoint = [100 0];
opts.Upper = [Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );