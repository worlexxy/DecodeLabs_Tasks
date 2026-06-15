Task-1-AderakinyoAdewale

**Missing Value Handling**

Coupon code column contained missing. To avoid bias and maintain dataset usability, mean, median, and mode imputation techniques were applied depending on the variable type.

**Categorical Columns**

* Mode was used for Coupon Code column
* This ensured consistency without introducing artificial categories.

**Data Type Corrections**

Several fields were stored in incorrect formats:
* Date values were stored as Excel serial numbers (e.g., 44930, 45527).
* These were converted to proper date objects (e.g., 2023‑01‑15).
* Order ID, Customer ID, and Tracking Number were normalised as strings.
* Total Price and unit Price was validated as currency field.

**Removing Duplicates**

The dataset was checked for duplicate all across the data set:
* Order IDs
* Customer IDs
* Tracking Numbers etc No duplicate Order IDs were found in the provided portion.

**All column headings were cleaned and reformatted for consistency.**

Proper Case was applied to each heading, unnecessary uppercase text was corrected, and spacing was adjusted to improve readability. This step ensures that the dataset follows a clean, professional naming convention suitable for analysis and documentation.

**Numeric Precision Fixes**

Floating‑point precision errors were present in Unit price and total price
* All monetary fields were rounded to two decimal places.
* Total Price was recalculated where inconsistencies were detected: Example from the dataset: “2753.4” was corrected to 2753.40 for consistency.

**Derived Field Validation**

The following fields were validated for logical consistency:
* Total Price recalculated and cross‑checked.
* Order Status checked against Payment Method and Tracking Number.
* Shipping Address validated for missing or malformed entries.
* Items in Cart checked to ensure non‑negative integer values. Example from the dataset: Orders marked “Cancelled” were checked to ensure no tracking inconsistencies.
