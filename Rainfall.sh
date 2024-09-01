# Part 1: Average Rainfall Calculation

# Ask for the number of years
years = int(input("Enter the number of years: "))

# Initialize variables to track total rainfall and number of months
total_rainfall = 0.0
total_months = 0

# Outer loop iterates over each year
for year in range(1, years + 1):
    print(f"\nYear {year}")
    
    # Inner loop iterates over each month
    for month in range(1, 13):
        # Ask for the rainfall for the month
        rainfall = float(input(f"Enter the rainfall for month {month}: "))
        total_rainfall += rainfall
        total_months += 1

# Calculate the average rainfall per month
average_rainfall = total_rainfall / total_months

# Display the results
print(f"\nTotal number of months: {total_months}")
print(f"Total inches of rainfall: {total_rainfall:.2f}")
print(f"Average rainfall per month: {average_rainfall:.2f} inches")
