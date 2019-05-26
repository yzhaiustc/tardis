#!/bin/bash

grep --text "sec" res_01.txt &> sec_01.txt
grep --text "sec" res_02.txt &> sec_02.txt
grep --text "sec" res_03.txt &> sec_03.txt
grep --text "sec" res_04.txt &> sec_04.txt
grep --text "sec" res_05.txt &> sec_05.txt
grep --text "sec" res_06.txt &> sec_06.txt
grep --text "sec" res_07.txt &> sec_07.txt
grep --text "sec" res_08.txt &> sec_08.txt
grep --text "sec" res_09.txt &> sec_09.txt
grep --text "sec" res_10.txt &> sec_10.txt
grep --text "sec" res_11.txt &> sec_11.txt

grep --text "node" res_01.txt &> node_01.txt
grep --text "node" res_02.txt &> node_02.txt
grep --text "node" res_03.txt &> node_03.txt
grep --text "node" res_04.txt &> node_04.txt
grep --text "node" res_05.txt &> node_05.txt
grep --text "node" res_06.txt &> node_06.txt
grep --text "node" res_07.txt &> node_07.txt
grep --text "node" res_08.txt &> node_08.txt
grep --text "node" res_09.txt &> node_09.txt
grep --text "node" res_10.txt &> node_10.txt
grep --text "node" res_11.txt &> node_11.txt

cut -c 5-6 node_01.txt &> res_node_01.txt
cut -c 5-6 node_02.txt &> res_node_02.txt
cut -c 5-6 node_03.txt &> res_node_03.txt
cut -c 5-6 node_04.txt &> res_node_04.txt
cut -c 5-6 node_05.txt &> res_node_05.txt
cut -c 5-6 node_06.txt &> res_node_06.txt
cut -c 5-6 node_07.txt &> res_node_07.txt
cut -c 5-6 node_08.txt &> res_node_08.txt
cut -c 5-6 node_09.txt &> res_node_09.txt
cut -c 5-6 node_10.txt &> res_node_10.txt
cut -c 5-6 node_11.txt &> res_node_11.txt

cut -c 36-44 sec_01.txt &> perf_01.txt
cut -c 36-44 sec_02.txt &> perf_02.txt
cut -c 36-44 sec_03.txt &> perf_03.txt
cut -c 36-44 sec_04.txt &> perf_04.txt
cut -c 36-44 sec_05.txt &> perf_05.txt
cut -c 36-44 sec_06.txt &> perf_06.txt
cut -c 36-44 sec_07.txt &> perf_07.txt
cut -c 36-44 sec_08.txt &> perf_08.txt
cut -c 36-44 sec_09.txt &> perf_09.txt
cut -c 36-44 sec_10.txt &> perf_10.txt
cut -c 36-44 sec_11.txt &> perf_11.txt

cut -c 62-63 sec_01.txt &> cpu_id_01.txt
cut -c 62-63 sec_02.txt &> cpu_id_02.txt
cut -c 62-63 sec_03.txt &> cpu_id_03.txt
cut -c 62-63 sec_04.txt &> cpu_id_04.txt
cut -c 62-63 sec_05.txt &> cpu_id_05.txt
cut -c 62-63 sec_06.txt &> cpu_id_06.txt
cut -c 62-63 sec_07.txt &> cpu_id_07.txt
cut -c 62-63 sec_08.txt &> cpu_id_08.txt
cut -c 62-63 sec_09.txt &> cpu_id_09.txt
cut -c 62-63 sec_10.txt &> cpu_id_10.txt
cut -c 62-63 sec_11.txt &> cpu_id_11.txt

