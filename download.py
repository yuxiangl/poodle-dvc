import pandas
import os


IN_FILE_NAME = os.environ.get('IN_FILE_NAME')
OUT_FILE_NAME = "/tmp/data/results.parquet"


def main():
    # TODO use index column that comes from the CSV.
    frame = pandas.read_csv(IN_FILE_NAME)
    frame.to_parquet(OUT_FILE_NAME)


if __name__ == "__main__":
    main()
