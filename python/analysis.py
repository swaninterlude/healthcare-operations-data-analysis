import pandas as pd

# Load synthetic dataset
df = pd.read_csv("data/synthetic_healthcare_cases.csv")

# Basic dataset overview
print("Dataset Shape:")
print(df.shape)

print("\nColumns:")
print(df.columns.tolist())


# Average processing time by case type
print("\nAverage Processing Time by Case Type:")

case_type_analysis = (
    df.groupby("case_type")["processing_days"]
      .mean()
      .sort_values(ascending=False)
)

print(case_type_analysis)


# Documentation issue analysis
print("\nProcessing Time by Documentation Issue:")

documentation_analysis = (
    df.groupby("documentation_issue")["processing_days"]
      .agg(["count", "mean"])
)

print(documentation_analysis)


# Regional analysis
print("\nRegional Analysis:")

regional_analysis = (
    df.groupby("region")
      .agg(
          case_count=("case_id", "count"),
          avg_processing_days=("processing_days", "mean")
      )
      .sort_values("case_count", ascending=False)
)

print(regional_analysis)


# Outcome distribution
print("\nOutcome Distribution:")

outcomes = df["outcome"].value_counts()

print(outcomes)
