function sample_generate_ao_waveform()    num_channels = 4; % number of AO channels in fipgui.m    rate = 10*10; % samples per second in fipgui.m    duration = 4; % in seconds    waveform = repmat(linspace(1, 2,rate*duration)',[1 4]);    [file, path] = uiputfile('*.mat');    save(fullfile(path, file), 'rate','waveform');