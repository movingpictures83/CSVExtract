# CSVExtract
# Language: R
# Input: TXT (keyword, value pairs)
# Output: CSV (thresholded abundance data)
# Tested with: PluMA 1.0, R 3.2.5

PluMA plugin to take a CSV file and keep only the rows with a specific column that contains a specific value.
Output will be another CSV file with the appropriate rows removed.

The plugin accepts as input a TXT file with (keyword, value) pairs.  Three keywords are accepted:

inputfile: The name of the CSV file with the original data
column: Relevant column number (start at 1)
value: Target value for the rows to keep

