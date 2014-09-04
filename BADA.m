function varargout = BADA(varargin)
% BADA MATLAB code for BADA.fig
%      BADA, by itself, creates a new BADA or raises the existing
%      singleton*.
%
%      H = BADA returns the handle to a new BADA or the handle to
%      the existing singleton*.
%
%      BADA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BADA.M with the given input arguments.
%
%      BADA('Property','Value',...) creates a new BADA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BADA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BADA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BADA

% Last Modified by GUIDE v2.5 29-Jul-2014 03:08:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BADA_OpeningFcn, ...
                   'gui_OutputFcn',  @BADA_OutputFcn, ...
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


% --- Executes just before BADA is made visible.
function BADA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BADA (see VARARGIN)


% Choose default command line output for BADA
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BADA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BADA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function alt_text_Callback(hObject, eventdata, handles)
% hObject    handle to alt_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alt_text as text
%        str2double(get(hObject,'String')) returns contents of alt_text as a double


% --- Executes during object creation, after setting all properties.
function alt_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alt_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ground_text_Callback(hObject, eventdata, handles)
% hObject    handle to ground_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ground_text as text
%        str2double(get(hObject,'String')) returns contents of ground_text as a double


% --- Executes during object creation, after setting all properties.
function ground_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ground_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wind_text_Callback(hObject, eventdata, handles)
% hObject    handle to wind_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wind_text as text
%        str2double(get(hObject,'String')) returns contents of wind_text as a double


% --- Executes during object creation, after setting all properties.
function wind_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wind_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
method = get(handles.popupmenu1,'value');
switch method
    %Latitude/Longitude
    case 1
        set(handles.loc2_text,'Visible','On');
        set(handles.loc2_text2,'Visible','On');
        
        set(handles.loc1_text,'String','Latitude 1');
        set(handles.loc1_text2,'String','Latitude 1');
        
        set(handles.loc2_text,'String','Longitude 2');
        set(handles.loc2_text2,'String','Longitude 2');
    %Airports    
    case 2
        set(handles.loc2_text,'Visible','Off');
        set(handles.loc2_text2,'Visible','Off');
        set(handles.loc1_text,'String','Location 1');
        set(handles.loc1_text2,'String','Location 2');
end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
option_check = get(handles.popupmenu1,'value');
switch option_check
       %Latitude/Longitude
    case 1
        
        %Takes inputs from the user through textboxes
        latitude1 = str2num(get((handles.loc1_text),'String'));
        longitude1 = str2num(get((handles.loc2_text),'String'));

        latitude2 = str2num(get((handles.loc2_text),'String'));
        longitude2 = str2num(get((handles.loc2_text2),'String'));
        
        course_angle1 = str2num(get((handles.angle1),'String'));
        course_angle2 = str2num(get((handles.angle2),'String'));

        lag1 = latitude1;
        lag2 = latitude2;
        lon1 = longitude1;
        lon2 = longitude2;
     
        angle_check = get(handles.anglecheck, 'Value');

        %Plots data in google maps through plot_google_map function
        figure;
        lat = [latitude1 latitude2];
        lon = [longitude1 longitude2];
        plot_google_map;
        plot(lon,lat,'.b','MarkerSize',20);
        if angle_check == 1
            %Calculating course angle
            [intersect1, intersect2] = rhxrh(latitude1, longitude1, course_angle1, latitude2, longitude2, course_angle2);
            set(handles.intersect_lat, 'String', intersect1);
            set(handles.intersect_lon, 'String', intersect2);
            plot(intersect2, intersect1,'xb','MarkerSize',15);
        end
        
        %Calculating flight distance
        dist1 = pos2dist(lag1,lon1,lag2,lon2,1) %Method for smaller distances
        dist2 = pos2dist(lag1,lon1,lag2,lon2,2) %Method for larger distances
               
        if dist1 < 1000
           set(handles.flight_distance, 'String', dist1);
           num_points = 10;
        else
           set(handles.flight_distance, 'String', dist2);
           num_points = dist2 * (1/100);
        end 
            
        [greatcircle_lat, greatcircle_lon] = gcwaypts(lag1,lon1,lag2,lon2,num_points)   %plots the great circle path
        num_points = length(greatcircle_lat);
        for i = 1 : num_points
            plot(greatcircle_lon(i),greatcircle_lat(i),'.r','MarkerSize',10);
        end

%3D Sphere with great circle track
        
%         %Drawing the sphere
%         figure;
%         R = 1;
%         [x1,y1,z1] = sph2cart(lon1,lag1,R);
%         [x2,y2,z2] = sph2cart(lon2,lag2,R);
%         p1 = [x1,y1,z1];
%         p2 = [x2,y2,z2];
% 
%         % define orthogonal vectors in plane of great circle
%         u = p1/R;
%         w = cross(p1,p2);
%         v = cross(u,w)/sqrt(sum(w.^2));
%         omega_0 = acos(sum(p1.*p2));
% 
%         % draw line
%         n_points = 1000; % no. of points in line
%         omega1 = repmat(linspace(2*pi-omega_0,2*pi,n_points)',1,3); 
%         u = repmat(u,n_points,1);
%         v = repmat(v,n_points,1);
%         c = R*(u.*cos(omega1)+v.*sin(omega1)); % equation for great circle
%         plot3(c(:,1),c(:,2),c(:,3),'-')

        
         
         
        
         
    case 2  %Airports
        
        airport_value = xlsread('airports.xlsx');   %Reads airport data
        airport_latitudes = airport_value(:,7);     %Saves latitudes
        airport_longitudes = airport_value(:,8);    %Saves longitudes
        [~,~,airport_names]=xlsread('airports.xlsx', 1,'F1:F7733'); %Reads airport names
        search_loc1 = get(handles.loc1_text, 'String'); %gets name to search for
        idx1 = find(strcmp([airport_names], search_loc1)); %Finds 
        
        search_loc2 = get(handles.loc1_text2, 'String');
        idx2 = find(strcmp([airport_names], search_loc2));

        lag1 = airport_latitudes(idx1);
        lag2 = airport_latitudes(idx2);
        lon1 = airport_longitudes(idx1);
        lon2 = airport_longitudes(idx2);
        
        course_angle1 = str2num(get((handles.angle1),'String'));
        course_angle2 = str2num(get((handles.angle2),'String'));
        
        
        angle_check = get(handles.anglecheck, 'Value');

        figure;
        lat = [lag1; lag2];
        lon = [lon1; lon2];
        plot_google_map;
        plot(lon,lat,'.b','MarkerSize',20);
        if angle_check == 1
            %Calculating course angle
            [intersect1, intersect2] = rhxrh(lag1, lon1, course_angle1, lag2, lon2, course_angle2);
            set(handles.intersect_lat, 'String', intersect1);
            set(handles.intersect_lon, 'String', intersect2);
            plot(intersect2, intersect1,'xb','MarkerSize',15);
        end
       

        %Calculating flight distance
         dist1 = pos2dist(lag1,lon1,lag2,lon2,1) %Method for smaller distances
         dist2 = pos2dist(lag1,lon1,lag2,lon2,2) %Method for larger distances
         
         if dist1 < 1000
            set(handles.flight_distance, 'String', dist1);
            if dist1 < 500
                num_points = 10;
            end
         else
            set(handles.flight_distance, 'String', dist2);
            num_points = dist2 * (1/100)
         end

        %Plotting great circles values
        [greatcircle_lat, greatcircle_lon] = gcwaypts(lag1,lon1,lag2,lon2,num_points)
        num_points = length(greatcircle_lat);
        for i = 1 : num_points
            plot(greatcircle_lon(i),greatcircle_lat(i),'.r','MarkerSize',10);
        end

end





function loc1_text_Callback(hObject, eventdata, handles)
% hObject    handle to loc1_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loc1_text as text
%        str2double(get(hObject,'String')) returns contents of loc1_text as a double


% --- Executes during object creation, after setting all properties.
function loc1_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loc1_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function loc2_text_Callback(hObject, eventdata, handles)
% hObject    handle to loc2_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loc2_text as text
%        str2double(get(hObject,'String')) returns contents of loc2_text as a double


% --- Executes during object creation, after setting all properties.
function loc2_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loc2_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function loc1_text2_Callback(hObject, eventdata, handles)
% hObject    handle to loc2_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loc2_text as text
%        str2double(get(hObject,'String')) returns contents of loc2_text as a double


% --- Executes during object creation, after setting all properties.
function loc1_text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loc2_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function loc2_text2_Callback(hObject, eventdata, handles)
% hObject    handle to loc2_text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loc2_text2 as text
%        str2double(get(hObject,'String')) returns contents of loc2_text2 as a double


% --- Executes during object creation, after setting all properties.
function loc2_text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loc2_text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angle1_Callback(hObject, eventdata, handles)
% hObject    handle to angle1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angle1 as text
%        str2double(get(hObject,'String')) returns contents of angle1 as a double


% --- Executes during object creation, after setting all properties.
function angle1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angle1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angle2_Callback(hObject, eventdata, handles)
% hObject    handle to angle2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angle2 as text
%        str2double(get(hObject,'String')) returns contents of angle2 as a double


% --- Executes during object creation, after setting all properties.
function angle2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angle2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in anglecheck.
function anglecheck_Callback(hObject, eventdata, handles)
% hObject    handle to anglecheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of anglecheck

angle_val = get(handles.anglecheck,'value');
switch angle_val
    %Angle
    case 0
        set(handles.angle1,'Visible','Off');
        set(handles.angle2,'Visible','Off');

    case 1
        set(handles.angle1,'Visible','On');
        set(handles.angle2,'Visible','On');

end    
