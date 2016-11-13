function varargout = MainGUI(varargin)
% MAINGUI MATLAB code for MainGUI.fig
%      MAINGUI, by itself, creates a new MAINGUI or raises the existing
%      singleton*.
%
%      H = MAINGUI returns the handle to a new MAINGUI or the handle to
%      the existing singleton*.
%
%      MAINGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINGUI.M with the given input arguments.
%
%      MAINGUI('Property','Value',...) creates a new MAINGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainGUI

% Last Modified by GUIDE v2.5 25-Oct-2016 19:56:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MainGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MainGUI is made visible.
function MainGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainGUI (see VARARGIN)

% Choose default command line output for MainGUI
handles.output = hObject;


%cleaning plots
axes(handles.Source);
cla reset;
axes(handles.Histogram);
cla reset;
axes(handles.Fourier);
cla reset;
axes(handles.Filter);
cla reset;


%setting handle visibility off
set(handles.Histogram,'Visible','off');
set(handles.Compute,'Visible','off');
set(handles.Fourier,'Visible','off');
set(handles.Details,'Visible','off');
set(handles.MinT,'Visible','off');
set(handles.MinV,'Visible','off');
set(handles.MaxT,'Visible','off');
set(handles.MaxV,'Visible','off');
set(handles.Filter,'Visible','off');
set(handles.N,'Visible','off');
set(handles.NString,'Visible','off');
set(handles.CutoffL,'Visible','off');
set(handles.Cutoff,'Visible','off');
set(handles.CutoffV,'Visible','off');
set(handles.Apply,'Visible','off');
set(handles.Download,'Visible','off');
set(handles.Buttons,'Visible','off');
set(handles.N,'String',0);
set(handles.CutoffV,'String',0);


% Update handles structure
guidata(hObject, handles);


% UIWAIT makes MainGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MainGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Begin Browse Code

%Defining global variable
global Sourceim;
global FileName
global PathName

%setting handle visibility off
set(handles.Histogram,'Visible','off');
set(handles.Compute,'Visible','off');
set(handles.Fourier,'Visible','off');
set(handles.Details,'Visible','off');
set(handles.MinT,'Visible','off');
set(handles.MinV,'Visible','off');
set(handles.MaxT,'Visible','off');
set(handles.MaxV,'Visible','off');
set(handles.Filter,'Visible','off');
set(handles.N,'Visible','off');
set(handles.NString,'Visible','off');
set(handles.Cutoff,'Visible','off');
set(handles.CutoffL,'Visible','off');
set(handles.CutoffV,'Visible','off');
set(handles.Apply,'Visible','off');
set(handles.Download,'Visible','off');
set(handles.Buttons,'Visible','off');

%clearing plots
axes(handles.Source);
cla
axes(handles.Histogram);
cla
axes(handles.Fourier);
cla
axes(handles.Filter);
cla

set(handles.N,'String',0);
set(handles.CutoffV,'String',0);

%taking file input
[FileName,PathName]=uigetfile({'*.jpg';'*.bmp';'*.gif';'*.img';'*.*'},'File Selector');

if ~isequal(FileName,0)
    Sourceim = imread(fullfile(PathName, FileName));
    grayIm=rgb2gray(Sourceim);
    imshow(grayIm,'Parent',handles.Source);
    [counts,binLocations]=imhist(grayIm);
    axes(handles.Histogram); 
    plot(binLocations,counts);
    set(handles.Compute,'Visible','on');
    set(handles.Fourier,'Visible','on');
else
    m=msgbox('Please provide a valid image');
end



% --- Executes on slider movement.
function Cutoff_Callback(hObject, eventdata, handles)
% hObject    handle to Cutoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderValue = get(handles.Cutoff,'Value');
set(handles.CutoffV,'String',num2str(sliderValue));

% --- Executes during object creation, after setting all properties.
function Cutoff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cutoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in Compute.
function Compute_Callback(hObject, eventdata, handles)
% hObject    handle to Compute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Defining global variables
global Sourceim;
global fft_col_trans;
global shifted_fft;

grayIm=rgb2gray(Sourceim);
gIm_mat_O=im2double(grayIm);

[ori_rows, ori_cols] = size(gIm_mat_O);

p = nextpow2(size(gIm_mat_O));

gIm_mat= imresize(gIm_mat_O,[2^p(1) 2^p(2)]);

[rows, columns] = size(gIm_mat);

%creating row matrix
fft_row = zeros(size(gIm_mat));

%creating column matriix
fft_col = zeros(columns,rows);

%calculating fourier transform row-wise.
for i = 1:rows
  
        fft_row(i,:) = FTransform(gIm_mat(i,:));
end

%calculating fourier transform column-wise
for i = 1:columns
   fft_col(i,:) = FTransform((fft_row(:,i).'));
end

%transpose
fft_col_trans = fft_col.';

%shifting and applying contrast enhancement
shifted_fft = fftshift(fft_col_trans);
contrast_enhanced_op = 0.2*log(1 + shifted_fft);

[r,c]=size(shifted_fft);

%resizing fourier spectrum back to its original sized image.
contrast_enhanced_op_resized = imresize(contrast_enhanced_op,[ori_rows ori_cols]);

%displaying contrast enhanced fourier transform image
imshow(contrast_enhanced_op_resized,'Parent',handles.Fourier);

%making details visible
set(handles.Details,'Visible','on');
set(handles.MinT,'Visible','on');
set(handles.MinV,'Visible','on');
set(handles.MaxT,'Visible','on');
set(handles.MaxV,'Visible','on');

set(handles.MinV,'String',0);
set(handles.MaxV,'String',sqrt(r^2+c^2));
set(handles.Buttons,'SelectedObject',handles.InvisibleButton);
set(handles.Buttons,'Visible','on');



function N_Callback(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N as text
%        str2double(get(hObject,'String')) returns contents of N as a double


% --- Executes during object creation, after setting all properties.
function N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Butterworth.
function Butterworth_Callback(hObject, eventdata, handles)
% hObject    handle to Butterworth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




 
% Hint: get(hObject,'Value') returns toggle state of Butterworth


% --- Executes on button press in Gaussian.
function Gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Gaussian

function MinV_Callback(hObject, eventdata, handles)
% hObject    handle to MinV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MinV as text
%        str2double(get(hObject,'String')) returns contents of MinV as a double


% --- Executes during object creation, after setting all properties.
function MinV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MinV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MaxV_Callback(hObject, eventdata, handles)
% hObject    handle to MaxV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MaxV as text
%        str2double(get(hObject,'String')) returns contents of MaxV as a double


% --- Executes during object creation, after setting all properties.
function MaxV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MaxV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in Buttons.
function Buttons_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in Buttons 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Defining global variable
global shifted_fft;


[r,c]=size(shifted_fft);
MaxF=sqrt(r^2+c^2);

% get the handle to the selected radio button in uipanel1
selectedButton = get(handles.Buttons,'SelectedObject');
Filter=get(selectedButton,'String');
set(handles.N,'String',0);
set(handles.CutoffV,'String',0);

switch Filter
    case 'Butterworth Low Pass Filter'
        set(handles.N,'Visible','on');
        set(handles.NString,'Visible','on');
        set(handles.Cutoff,'Visible','on');
        set(handles.CutoffV,'Visible','on');
        set(handles.Apply,'Visible','on');
        set(handles.CutoffL,'Visible','on');
        set(handles.Cutoff,'Max',MaxF);
        set(handles.Cutoff,'Value',0);
        set(handles.CutoffV,'Value',0);
    case 'Gaussian Low Pass Filter'
        set(handles.N,'Visible','off');
        set(handles.NString,'Visible','off');
        set(handles.Cutoff,'Visible','on');
        set(handles.CutoffL,'Visible','on');
        set(handles.CutoffV,'Visible','on');
        set(handles.Apply,'Visible','on');
        set(handles.Cutoff,'Max',MaxF);
        set(handles.Cutoff,'Value',0);
        set(handles.CutoffV,'Value',0);
end


% --- Executes during object creation, after setting all properties.
function Buttons_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Buttons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Choose default command line output for TrialGUI3
% UIWAIT makes TrialGUI3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);




function CutoffV_Callback(hObject, eventdata, handles)
% hObject    handle to CutoffV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CutoffV as text
%        str2double(get(hObject,'String')) returns contents of CutoffV as a double


% --- Executes during object creation, after setting all properties.
function CutoffV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CutoffV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Apply.
function Apply_Callback(hObject, eventdata, handles)
% hObject    handle to Apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Defining Global variables
global Sourceim
global fft_col_trans
global shifted_fft
global resized_invfft_col_trans
global gaussianshift
global buttershifted

%Taking selected button
selectedButton = get(handles.Buttons,'SelectedObject');
Filter=get(selectedButton,'String');
[ori_rows, ori_cols, b]=size(Sourceim);
[rows,columns]=size(shifted_fft);
switch Filter
     case 'Butterworth Low Pass Filter'
         cut_off_freq = get(handles.Cutoff,'Value');
         n =str2double(get(handles.N,'String'));
         
         butterworth_lpf = zeros(size(shifted_fft));
         euc_dist2 = zeros(size(shifted_fft));
         
         for i = 1:rows
             for j = 1:columns
                 euc_dist2(i,j) = sqrt((i-rows/2)^2 + (j-columns/2)^2);
                 butterworth_lpf(i,j) = abs(1/(1 + (euc_dist2(i,j)/cut_off_freq)^(2*n)));
                 
             end
         end
         
         %Showing Filter Curve and Calulating Response
         set(handles.Filter,'Visible','on');
         axes(handles.Filter);
         plot(euc_dist2,butterworth_lpf);
         butterworth_lpi = fftshift(fft_col_trans).* butterworth_lpf;
         buttershifted=butterworth_lpi;
         butterworth_lpi=ifftshift(butterworth_lpi);
         [r1 c1] = size(butterworth_lpi);       
         
         %creating row matrix for inverse fourier transform
         invfft_row = zeros(size(butterworth_lpi));

         %creating column matrix for the same.
         invfft_col = zeros(c1,r1);

         %calculating fourier transform row-wise.
         for i = 1:rows
             invfft_row(i,:) = IFTransform(butterworth_lpi(i,:));
         end
         
         %calculating fourier transform column-wise
         for i = 1:columns
             invfft_col(i,:) = IFTransform((invfft_row(:,i).'));
         end
         
         %transpose
         invfft_col_trans = invfft_col.';
         
         %applying formula
         invfft_col_trans = invfft_col_trans/(r1*c1);
         
         resized_invfft_col_trans = imresize(invfft_col_trans,[ori_rows ori_cols]);
         
         %Displaying result
         figure
         subplot(1,2,1);
         imshow(rgb2gray(Sourceim));
         subplot(1,2,2);
         imshow(resized_invfft_col_trans);
         ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
         text(0.5, 1,'\bf Butterworth Filter Response for selected Cutoff Frequency','HorizontalAlignment' ,'center','VerticalAlignment', 'top');
         
         
         %Displaying frequency spectra
         figure
         subplot(1,2,1);
         imshow(0.2*log(1+shifted_fft));
         subplot(1,2,2);
         imshow(0.2*log(1+buttershifted));
         ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
         text(0.5, 1,'\bf Frequency Responses for Butterworth Filter Response for selected Cutoff Frequency','HorizontalAlignment' ,'center','VerticalAlignment', 'top');
         
    case 'Gaussian Low Pass Filter'
        gauss_lpf = zeros(size(shifted_fft));
        euc_dist1 = zeros(size(shifted_fft));

        cutoff_freq = get(handles.Cutoff,'Value');
        
        for i = 1:rows
            for j = 1:columns
                euc_dist1(i,j) = sqrt((i-rows/2)^2 + (j-columns/2)^2);
                gauss_lpf(i,j) = abs(exp(-(euc_dist1(i,j)^2)/(2* (cutoff_freq^2))));
            end
        end
        
        set(handles.Filter,'Visible','on');
        axes(handles.Filter);
        plot(euc_dist1,gauss_lpf);
        gaussian_lpi =  fftshift(fft_col_trans) .* gauss_lpf;
        gaussianshift=gaussian_lpi;
        gaussian_lpi=ifftshift(gaussian_lpi);
        [r2 c2] = size(gaussian_lpi);       
        
        %creating row matrix for inverse fourier transform
        invfft_row = zeros(size(gaussian_lpi));

        %creating column matrix for the same.
        invfft_col = zeros(c2,r2);

        %calculating fourier transform row-wise.
        for i = 1:rows
            invfft_row(i,:) = IFTransform(gaussian_lpi(i,:));
        end
        
        %calculating fourier transform column-wise
        for i = 1:columns
            invfft_col(i,:) = IFTransform((invfft_row(:,i).'));
        end
        
        %transpose
        invfft_col_trans = invfft_col.';

        %applying formula
        invfft_col_trans = invfft_col_trans/(r2*c2);
         
         
        [ori_rows ori_cols b]=size(Sourceim);
        
        resized_invfft_col_trans = imresize(invfft_col_trans,[ori_rows ori_cols]);
        
        %Displaying result
        figure
        subplot(1,2,1);
        imshow(rgb2gray(Sourceim));
        subplot(1,2,2);
        imshow(resized_invfft_col_trans);
        ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
        text(0.5, 1,'\bf Butterworth Filter Response for selected Cutoff Frequency','HorizontalAlignment' ,'center','VerticalAlignment', 'top');
         
        
        
        %Displaying frequency spectra
        figure
        subplot(1,2,1);
        imshow(0.2*log(1+shifted_fft));
        subplot(1,2,2);
        imshow(0.2*log(1+gaussianshift));
        ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
        text(0.5, 1,'\bf Frequency Responses for Gaussian Filter Response for selected Cutoff Frequency','HorizontalAlignment' ,'center','VerticalAlignment', 'top');
        


end
set(handles.Download,'Visible','on');


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Browse.
function Browse_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Download.
function Download_Callback(hObject, eventdata, handles)
% hObject    handle to Download (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global resized_invfft_col_trans
global gaussianshift
global buttershifted
global PathName
global FileName

selectedButton = get(handles.Buttons,'SelectedObject');
Filter=get(selectedButton,'String');
pos = find(FileName == '.');
name=FileName(1:pos-1);
switch Filter
    case 'Butterworth Low Pass Filter'
        FileName1=strcat(name,'ButterWorthResponseImage.jpg');
        FileName2=strcat(name,'ButterWorthResponseSpectra.jpg');
        imwrite(0.2*log(1+buttershifted),fullfile(PathName, FileName2));
    case 'Gaussian Low Pass Filter'
        FileName1=strcat(name,'GaussianResponseImage.jpg');
        FileName2=strcat(name,'GaussianResponseSpectra.jpg');
        imwrite(0.2*log(1+gaussianshift),fullfile(PathName, FileName2));
end

imwrite(resized_invfft_col_trans,fullfile(PathName, FileName1));

h=msgbox('Response and Spectra downloaded to the source image folder');
