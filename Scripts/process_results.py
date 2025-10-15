import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
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
    

# def gen_hists(dfs: pd.DataFrame, feature: str, output_folder: str = "plots"):
#     """
#     Generates histograms for a given feature across different benchmarks.
    
#     Parameters:
#         dfs (pd.DataFrame): DataFrame containing the data.
#         feature (str): The feature/column name to plot.
#         output_folder (str): Folder to save the plots.
#     """
#     os.makedirs(output_folder, exist_ok=True)
#     for i, df in enumerate(dfs):
#         df["experimento"] = i

#     combined_df = pd.concat(dfs, ignore_index=True)
#     g = sns.FacetGrid(combined_df, col="Program", col_wrap=3, sharex=False, sharey=False)
#     g.map_dataframe(sns.histplot, x="Runtime", bins=5)
#     g.set_axis_labels("Runtime", "Frequência")
#     plot_path = os.path.join("plots", f"hist_by_benchmark.png")
#     plt.savefig(plot_path)
    
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
    
    # # if make_plots:
    # os.makedirs("plots", exist_ok=True)
    # for feature in features:
    #     benchmarks = combined_df['benchmark_simple'].unique()
    #     n_benchmarks = len(benchmarks)
        
    #     fig, axes = plt.subplots(n_benchmarks, 1, figsize=(8, 4 * n_benchmarks), sharex=True)
    #     if n_benchmarks == 1:
    #         axes = [axes]  # handle single case
        
    #     for ax, benchmark in zip(axes, benchmarks):
    #         subset = combined_df[combined_df['benchmark_simple'] == benchmark]
    #         sns.boxplot(y=subset[feature], ax=ax)
    #         ax.set_title(f"{benchmark} - {feature}")
    #         ax.set_ylabel(feature)
        
    #     plt.tight_layout()
    #     plot_path = os.path.join("plots", f"boxplot_{feature}_by_benchmark.png")
    #     plt.savefig(plot_path)
    #     plt.close()
    #     print(f"Boxplot saved: {plot_path}")

    return result


# Example usage
if __name__ == "__main__":
    argparser = argparse.ArgumentParser(description="Aggregate experiment results from CSV files.")
    argparser.add_argument("folder", type=str, help="Path to the folder containing CSV files.")
    argparser.add_argument("--output", type=str, default="aggregated_results.csv", help="Path to the output CSV file.")
    aggregated = aggregate_experiments(argparser.parse_args().folder, argparser.parse_args().output)
    print(aggregated.head())
