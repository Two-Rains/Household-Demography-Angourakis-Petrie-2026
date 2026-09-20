# Reproducing the Simulation Data

Follow the steps below to download, place, and assemble the simulation dataset required for the analysis scripts.

---

## 1. Disk Space Requirement

> ⚠️ **Storage Warning:** The raw simulation dataset contains large batches up to **60 GB** before compression. Even when compressed as `.csv.gz`, the archived files total several gigabytes. Recombining and analyzing the datasets requires at least **70–80 GB of free disk space** on your machine. Ensure your drive has sufficient storage before proceeding.
> 
> 

---

## 2. Download the Data Files

1. Navigate to the **Releases** section of this repository (or the linked **Zenodo DOI record**).

2. Download all archived data files associated with the release:

* Standard datasets: `.csv.gz` files

* Large split datasets: `.csv.gz.PART001`, `.csv.gz.PART002`, etc.

---

## 3. Placing Simulation Data into `simdata/`

The `simdata/` folder is divided into subdirectories by model version: `v1.1`, `v1.2`, `v1.2.1`, `v1.2.2`, `v1.3`, `v1.4`, `v1.4.1`, and `v1.4.2`.

You can either organize the files manually using the mapping table below or drop everything into `simdata/` and run the provided helper script to sort them automatically (recommended).

### File Mapping Reference

| Target Subfolder | File Pattern / Exact File Name | Description / Large Files |
| --- | --- | --- |
| `simdata/v1.1/` | `household-demography-main exp-trajectories-table.csv.gz` | Baseline simulation trajectories |
| `simdata/v1.1/` | `household-demography-main exp-trajectories-symmetric-table.csv.gz` | Baseline simulation trajectories with symmetric conditions in union formation |
| `simdata/v1.1/` | `household-demography-main exp-trajectories-cdmlt-level-table.csv.gz` | Coale-Demeny levels sweep experiment |
| `simdata/v1.1/` | `household-demography-main exp-trajectories-c1-fert-table.csv.gz` | Fertility peak intensity sweep experiment |
| `simdata/v1.1/` | `household-demography-main exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.1/` | `household-demography-main exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.2/` | `household-demography-main_density exp-trajectories-table.csv.gz` | Baseline simulation trajectories |
| `simdata/v1.2/` | `household-demography-main_density exp-trajectories-density-effect-scaling-factor-table.csv.gz` | Density effect scaling factor sweep experiment |
| `simdata/v1.2/` | `household-demography-main_density exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.2/` | `household-demography-main_density exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.2.1/` | `household-demography-main_density-K-demand exp-trajectories-table.csv.gz` | Baseline simulation trajectories |
| `simdata/v1.2.1/` | `household-demography-main_density-K-demand exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.2.1/` | `household-demography-main_density-K-demand exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.2.2/` | `household-demography-main_density-K-demand-supply exp-trajectories-table.csv.gz` | Baseline simulation trajectories |
| `simdata/v1.2.2/` | `household-demography-main_density-K-demand-supply-K-demand-supply exp-trajectories-labour-demand-per-capita-table.csv.gz` | Labour demand per capita sweep experiment |
| `simdata/v1.2.2/` | `household-demography-main_density-K-demand-supply exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.2.2/` | `household-demography-main_density-K-demand-supply exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.3/` | `household-demography-daily-main exp-trajectories-table.csv.gz` (6 parts) | Baseline simulation trajectories |
| `simdata/v1.3/` | `household-demography-daily-main exp-trajectories-symmetric-table.csv.gz` (6 parts) | Baseline simulation trajectories with symmetric conditions in union formation |
| `simdata/v1.3/` | `household-demography-daily-main exp-trajectories-cdmlt-level-table.csv.gz` (9 parts) | Coale-Demeny levels sweep experiment |
| `simdata/v1.3/` | `household-demography-daily-main exp-trajectories-c1-fert-table.csv.gz` (14 parts) | Fertility peak intensity sweep experiment |
| `simdata/v1.3/` | `household-demography-daily-main exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.3/` | `household-demography-daily-main exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.4/` | `household-demography-daily-main_density exp-trajectories-table.csv.gz` (2 parts) | Baseline simulation trajectories |
| `simdata/v1.4/` | `household-demography-daily-main_density exp-trajectories-density-effect-scaling-factor-table.csv.gz` (5 parts) | Density effect scaling factor sweep experiment |
| `simdata/v1.4/` | `household-demography-daily-main_density exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.4/` | `household-demography-daily-main_density exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.4.1/` | `household-demography-daily-main_density-K-demand exp-trajectories-table.csv.gz` (3 parts) | Baseline simulation trajectories |
| `simdata/v1.4.1/` | `household-demography-daily-main_density-K-demand exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.4.1/` | `household-demography-daily-main_density-K-demand exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |
| `simdata/v1.4.2/` | `household-demography-daily-main_density-K-demand-supply exp-trajectories-table.csv.gz` (3 parts) | Baseline simulation trajectories |
| `simdata/v1.4.2/` | `household-demography-daily-main_density-K-demand-supply-K-demand-supply exp-trajectories-labour-demand-per-capita-table.csv.gz` (8 parts) | Labour demand per capita sweep experiment |
| `simdata/v1.4.2/` | `household-demography-daily-main_density-K-demand-supply-K-demand-supply exp-trajectories-labour-demand-per-capita-v2-table.csv.gz` (12 parts) | Labour demand per capita sweep experiment |
| `simdata/v1.4.2/` | `household-demography-daily-main_density-K-demand-supply exp-endstates-patri-table.csv.gz` | Sobol sample exploration with patrilineal-patrilocal rule |
| `simdata/v1.4.2/` | `household-demography-daily-main_density-K-demand-supply exp-endstates-matri-table.csv.gz` | Sobol sample exploration with matrilineal-matrilocal rule |

---

### Automated Sorting via R (Recommended)

To avoid manual sorting errors, move all `.csv.gz` and `.PART*` files directly into the root of `simdata/`, then open and run the sorting script in R (`library/one_time_run/sort_gz.R`) to route every file into its appropriate subfolder.

---

## 4. Recombine Multi-Part Files

Open and run the reassembly script in R (`library/one_time_run/recombine_large_gz.R`) to stitch all multi-part `.PART*` chunks back into their full `.csv.gz` archives.

Once reassembled, your analysis scripts using `read.csv(gzfile(...))` or `data.table::fread(...)` will automatically read the `.csv.gz` files directly.
