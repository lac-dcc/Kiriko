import subprocess
import csv
import argparse
import os

perf_events = """cpu-cycles
instructions
cache-references
cache-misses
branch-instructions
branch-misses
page-faults
branch-loads
branch-load-misses
L1-dcache-loads
L1-dcache-load-misses
L1-dcache-stores
L1-dcache-store-misses
L1-dcache-prefetches
L1-dcache-prefetch-misses
L1-icache-loads
L1-icache-load-misses
L1-icache-prefetches
L1-icache-prefetch-misses
LLC-loads
LLC-load-misses
LLC-stores
LLC-store-misses
LLC-prefetch-misses
dTLB-loads
dTLB-load-misses
dTLB-stores
dTLB-store-misses
dTLB-prefetches
dTLB-prefetch-misses
iTLB-loads
iTLB-load-misses"""

def collect_metrics(program_path, csv_path):
    # os.makedirs('result', exist_ok=True)
    already_exist = os.path.exists(csv_path)
    with open(csv_path, 'a', newline='') as csvfile:
        csv_writer = csv.writer(csvfile, delimiter=',')
        events_list = perf_events.strip().split('\n')
        if not already_exist:
            csv_writer.writerow(["Program", "Runtime(s)"] + events_list)
        
        program_name = os.path.basename(program_path)
        print(f'Running {program_name}...')
        r_time = subprocess.run([program_path], capture_output=True, text=True, check=True)
        exec_time = r_time.stdout.strip()
        
        perf_command = ["perf", "stat", "-o", "temp.txt", "-x,"]
        perf_command += ["-e", ','.join(events_list), program_path]
        subprocess.run(perf_command, capture_output=True, text=True, check=True)
        
        with open('temp.txt', 'r') as perf_result:
            perf_output = perf_result.read().strip()
            perf_result_list = [program_name, exec_time]
            for line in perf_output.split('\n')[1:]:
                if line.strip():
                    perf_result_list.append(line.split(',')[0].strip())
            csv_writer.writerow(perf_result_list)
        os.remove('temp.txt')
        

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Run perf stat over a set of programs.')
    parser.add_argument('program_path', help='Path to the program.')
    parser.add_argument('-o', '--csv_path', help='Path to the output CSV file.')
    args = parser.parse_args()
    collect_metrics(args.program_path, args.csv_path)