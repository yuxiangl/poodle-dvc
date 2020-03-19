import pandas


IN_FILE_NAME = "gs://genomics-public-data/simons-genome-diversity-project/reports/Simons_Genome_Diversity_Project_sample_reference_results.csv"
OUT_FILE_NAME = "results.parquet"


def main():
    # TODO use index column that comes from the CSV.
    frame = pandas.read_csv(IN_FILE_NAME)
    frame.to_parquet(OUT_FILE_NAME)


if __name__ == "__main__":
    main()
