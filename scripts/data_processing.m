clear; clc; close all;

% cpu_id_01 = load('cpu_id_01.txt');
% cpu_id_02 = load('cpu_id_02.txt');
% cpu_id_03 = load('cpu_id_03.txt');
% cpu_id_04 = load('cpu_id_04.txt');
% cpu_id_05 = load('cpu_id_05.txt');
% cpu_id_06 = load('cpu_id_06.txt');
% cpu_id_07 = load('cpu_id_07.txt');
% cpu_id_08 = load('cpu_id_08.txt');
% cpu_id_09 = load('cpu_id_09.txt');
% cpu_id_10 = load('cpu_id_10.txt');
% cpu_id_11 = load('cpu_id_11.txt');
% 
% perf_01 = load('perf_01.txt');
% perf_02 = load('perf_02.txt');
% perf_03 = load('perf_03.txt');
% perf_04 = load('perf_04.txt');
% perf_05 = load('perf_05.txt');
% perf_06 = load('perf_06.txt');
% perf_07 = load('perf_07.txt');
% perf_08 = load('perf_08.txt');
% perf_09 = load('perf_09.txt');
% perf_10 = load('perf_10.txt');
% perf_11 = load('perf_11.txt');
% 
% node_01 = load('res_node_01.txt');
% node_02 = load('res_node_02.txt');
% node_03 = load('res_node_03.txt');
% node_04 = load('res_node_04.txt');
% node_05 = load('res_node_05.txt');
% node_06 = load('res_node_06.txt');
% node_07 = load('res_node_07.txt');
% node_08 = load('res_node_08.txt');
% node_09 = load('res_node_09.txt');
% node_10 = load('res_node_10.txt');
% node_11 = load('res_node_11.txt');

total_perf = load('total_perf.txt');
total_cpu_id = load('total_cpu_id.txt');
total_res_node = load('total_res_node.txt');

data_cell = cell(11, 32);
j = 1;
for i = 1 : length(total_perf)
    curr_node_id = total_res_node(j);
    curr_cpu_id = total_cpu_id(i) + 1;
    curr_perf = total_perf(i);
    switch curr_node_id
        case 15
            curr_node_id = 2;
        case 16
            curr_node_id = 5;
        case 17
            curr_node_id = 6;
        case 18
            curr_node_id = 11;
        otherwise 
    end
   data_cell{curr_node_id, curr_cpu_id} = [data_cell{curr_node_id, curr_cpu_id}, curr_perf];
    if mod(i, 32) == 0
        j = j + 1;
    end
end

mean_perf = zeros(11, 32);
stderr_perf = zeros(11, 32);
range_perf = zeros(11, 32);

for i = 1 : 11
    for j = 1 : 32
        mean_perf(i, j) = mean(data_cell{i, j});
        stderr_perf(i, j) = std(data_cell{i, j});
        range_perf(i, j) = range(data_cell{i, j});
    end
end

mean_stderr_by_node = mean(stderr_perf, 2);
mean_range_by_node = mean(range_perf, 2);
mean_perf_by_node = mean(mean_perf, 2);

figure;

subplot(2, 2, 1)
scatter(1:11, mean_perf_by_node)
hold on
plot(1:11, mean_perf_by_node)
set(gca,'xtick',1:1:11)
xlim([1 11])
xlabel('node index')
ylabel('GFLOPS')
title('mean performance by node')

subplot(2, 2, 2)
scatter(1:11, mean_stderr_by_node)
hold on
plot(1:11, mean_stderr_by_node)
set(gca,'xtick',1:1:11)
xlim([1 11])
xlabel('node index')
ylabel('GFLOPS')
title('mean standard error by node')

subplot(2, 2, 3)
scatter(1:11, mean_range_by_node)
hold on
plot(1:11, mean_range_by_node)
set(gca,'xtick',1:1:11)
xlim([1 11])
xlabel('node index')
ylabel('GFLOPS')
title('mean range by node')

subplot(2, 2, 4)
scatter(1:11, mean_range_by_node ./ mean_perf_by_node)
hold on
plot(1:11, mean_range_by_node ./ mean_perf_by_node)
set(gca,'xtick',1:1:11)
xlim([1 11])
xlabel('node index')
ylabel('Percentage %')
title('relative fluctuation % by node')