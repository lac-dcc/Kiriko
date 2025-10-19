import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import re
import argparse

def simplify_benchmark_name(name: str) -> str:
    """
    Recebe um benchmark name como 'fdtd-2d_main_nopt'
    e retorna apenas 'fdtd-2d'
    """
    # Pega tudo antes do primeiro underscore que aparece após o primeiro '-'
    match = re.match(r"([a-zA-Z0-9\-]+)_", name)
    if match:
        return match.group(1)
    else:
        return name
    
def aggregate_experiments(folder_path: str, output_file: str = "aggregated_results.csv"):
    """
    Reads all CSV files in a folder, aggregates them by benchmark,
    and computes mean, stdev, max, min, and median for each feature.
    
    Parameters:
        folder_path (str): Path to the folder containing CSV files.
        output_file (str): Path to save the aggregated CSV results.
    """
    
    # Collect all CSV files
    csv_files = [f for f in os.listdir(folder_path) if f.endswith(".csv")]
    
    if not csv_files:
        raise ValueError("No CSV files found in the given folder.")
    
    # Load all CSVs into a single dataframe
    dfs = []
    for file in csv_files:
        file_path = os.path.join(folder_path, file)
        df = pd.read_csv(file_path)
        dfs.append(df)
        print("Loaded:", file_path)
    combined_df = pd.concat(dfs, ignore_index=True)
    
    # Group by benchmark (first column assumed to be 'Benchmark')
    benchmark_col = combined_df.columns[0]
    features = combined_df.columns[1:10]
    combined_df['benchmark_simple'] = combined_df[benchmark_col].apply(simplify_benchmark_name)
    
    # Compute aggregations
    agg_funcs = {
        feature: ['mean', 'std', 'max', 'min', 'median'] for feature in features
    }
    
    result = combined_df.groupby(benchmark_col).agg(agg_funcs)
    
    # Flatten MultiIndex columns
    result.columns = [f"{feat}_{stat}" for feat, stat in result.columns]
    
    # Save to CSV
    result.to_csv(output_file)
    print(f"Aggregated results saved to {output_file}")
    return result


# Example usage
if __name__ == "__main__":
    argparser = argparse.ArgumentParser(description="Aggregate experiment results from CSV files.")
    argparser.add_argument("folder", type=str, help="Path to the folder containing CSV files.")
    argparser.add_argument("--output", type=str, default="aggregated_results.csv", help="Path to the output CSV file.")
    aggregated = aggregate_experiments(argparser.parse_args().folder, argparser.parse_args().output)
    print(aggregated.head())
