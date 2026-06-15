<img width="1552" height="1250" alt="Image 13-06-2026 at 13 42" src="https://github.com/user-attachments/assets/6e15ead7-14e4-48f2-a356-9ef744188fd7" />


**Introduction**

This project focuses on analysing an e‑commerce transactional dataset containing over 200 customer orders. The dataset includes key operational fields such as Order ID, Product, Quantity, Unit Price, Payment Method, Order Status, Coupon Code, Referral Source, and Total Price.
The goal of this project is to:
* Clean and prepare the dataset for analysis
* Explore customer behaviour
* Identify sales patterns
* Understand product performance
* Reveal operational inefficiencies
* Provide actionable business insights
This project demonstrates practical data‑cleaning, exploratory analysis, and insight generation suitable for business intelligence and data‑driven decision‑making.

**PROJECT SPLIT**

**Category One (independent value)**

Product, PaymentMethod, ReferralSource, Months, OrderStatus

**Category two (dependent value)**

Quantity, UnitPrice, TotalPrice

**INDUSTRY TYPE**

E-commerce Retail Analytics



**CHARTS USED**

The Box-and-Whisker Plot on the "Outliers" sheet measures data distribution and identifies extreme anomalies by splitting sales figures into quartiles.

The Line Chart on the "Sales Trend" sheet tracks operational momentum over a three year period to highlight growth and seasonal performance dips.

The Horizontal Bar Chart on the "Revenue by product" sheet ranks individual items based strictly on their total dollar contribution to the business.

The Vertical Column Chart on the "Referral Source" sheet compares the effectiveness of marketing channels by counting total leads generated.

The Vertical Column Chart on the "Product popularity" sheet measures product demand by ranking the total physical units sold.


**POTENTIAL ANALYSIS / QUESTIONS**

You can expand the project by exploring:
* Customer segmentation
* Product profitability analysis
* Refund/cancellation root‑cause analysis
* Marketing channel performance
* Coupon effectiveness
* Seasonal sales forecasting

**POTENTIAL INSIGHTS**
 
* Electronics generate the highest revenue
* Social media is the strongest referral source
* Free shipping and 10% discount coupons drive conversions
* High cancellation/return rates reduce net revenue
* Cash and debit card users show higher return rates
* Some products show extreme price variability (possible data quality issues)

**IN ANALYSIS OBSERVATION**

**Revenue by Product **

Chair and Printer stand out as the strongest revenue generators, each producing approximately $195,600, placing them at the top of the performance hierarchy. Laptop ($192,126) and Tablet ($186,568) follow closely behind, demonstrating solid mid‑range performance within the technology category. Desk ($167,459) and Monitor ($175,651) fall into the middle‑to‑lower tier, contributing moderately but noticeably less than the leading products. Phone generates the lowest revenue among all listed items, with a significantly shorter bar indicating that its earnings are well below those of the other categories.

**Referral Source Performance**

Instagram is the most effective referral channel, generating 259 orders, the highest volume in the dataset. Email follows closely with 250 orders, trailing Instagram by only nine transactions and demonstrating strong customer engagement. Google ranks third with 241 orders, maintaining a stable mid level contribution. Facebook shows a more pronounced decline with 228 orders, while Referral is the lowest performing source with 222 orders, indicating limited customer acquisition through direct referrals.

**Product Popularity**

The products are ranked in descending order of popularity, with Printer being the most frequently purchased item, followed by Tablet, Chair, Laptop, Desk, Monitor, and Paper. The top three products Printer (181), Tablet (179), and Chair (178) are extremely close in performance, reflecting consistently high demand across these categories. A colour gradient visually reinforces this ranking, with higher performing products displayed in darker navy blue and lower performing items fading into lighter grey. After Desk, there is a noticeable decline in popularity, with Monitor and Paper showing the lowest levels of customer engagement or sales.

**Monthly Sales Trend**

Sales reached their peak in June 2024, achieving a total of $68,068.54, the highest monthly performance in the dataset. The lowest point occurred in May 2024, where sales dropped to $27,009.11. Overall, the data exhibits high volatility, with frequent and sharp month‑to‑month fluctuations. Despite these variations, sales generally remain within the $30,000 to $55,000 range, indicating a somewhat stable but unpredictable revenue pattern.

**Box Plot Distribution & Anomalies**

**Data Distribution**

The box plot shows that the middle 50% of revenue values fall between $410.52 and $1,579.73, representing the central distribution of the dataset. The median value is $823.62, indicating that half of all recorded values fall below this point. The minimum value extends down to $11.39, highlighting the presence of very low‑value transactions.
Key Anomalies & Issues
Several extreme outliers appear at the upper end of the distribution, tightly clustered between $3,322.55 and $3,456.40. These high‑value points create a top heavy distribution and significantly widen the overall range. Additionally, the labels for these outliers overlap due to their close proximity, making them difficult to read and interpret clearly.


**IN ANALYSIS INSIGHT**

**Revenue by Product**

Chair and Printer emerge as the strongest revenue generators, each contributing approximately $195,600, placing them at the top of the performance ranking. Laptop ($192,126) and Tablet ($186,568) follow closely behind, demonstrating solid mid range performance within the tech category. Desk ($167,459) and Monitor ($175,651) fall into the middle to lower tier, generating moderate but noticeably lower revenue compared to the leaders. Phone stands out as the lowest‑earning product, with a significantly shorter revenue bar, indicating that it contributes the least to overall sales.

**Referral Source Performance**

Instagram leads as the most effective referral channel, generating 259 orders, the highest among all sources. Email follows closely with 250 orders, showing strong customer engagement and retention. Google ranks third with 241 orders, maintaining a stable mid‑level contribution. Facebook shows a more noticeable decline with 228 orders, while Referral sits at the bottom with 222 orders, making it the least effective channel in this dataset.

**Product Popularity**

The products are ranked in descending order of popularity, with Printer being the most frequently purchased item, followed by Tablet, Chair, Laptop, Desk, Monitor, and Paper. The top three products Printer (181), Tablet (179), and Chair (178) are extremely close in popularity, indicating a tightly competitive group of high‑demand items. A colour gradient visually reinforces this ranking, with higher performing products shown in darker navy blue and lower performing ones fading into lighter grey. After Desk, there is a noticeable drop‑off, with Monitor and Paper showing the lowest levels of customer engagement or sales.

**Monthly Sales Trend**

Sales peaked in June 2024, reaching $68,068.54, marking the highest-performing month in the dataset. The lowest point occurred in May 2024, where sales dropped to $27,009.11. The overall trend shows high volatility, with frequent and sharp month to month fluctuations. Despite these swings, sales generally remain within the $30,000 to $55,000 range, indicating a somewhat stable but unpredictable revenue pattern.

**Box Plot Distribution Analysis**

The box plot reveals that the middle 50% of revenue values fall between $410.52 and $1,579.73, representing the core distribution of the dataset. The median value sits at $823.62, meaning half of all revenue entries fall below this point. The minimum value extends down to $11.39, showing the presence of very low‑value transactions.

**Key Anomalies**

Several extreme outliers appear at the top of the distribution, clustered tightly between $3,322.55 and $3,456.40. These unusually high values create a top‑heavy distribution and significantly widen the overall range. Additionally, the labels for these outliers overlap due to their close proximity, making them difficult to read and visually interpret.


**STORY OF THE DATA**

This dataset tells the story of a busy e‑commerce platform where customers purchase a variety of products  mostly electronics and home office items.
Orders flow through different payment methods, referral channels, and coupon codes, revealing customer preferences and behaviour patterns.
However, the story also highlights operational challenges:
* Many orders are cancelled or returned
* Some products have inconsistent pricing
* Customer acquisition relies heavily on social media
* Discounts play a major role in driving purchases
The data reflects a business with strong demand but operational inefficiencies that need attention.

**GENERAL OBSERVATION**

The dataset reveals a well diversified business with multiple strong performing product categories, particularly Chairs, Printers, Laptops, and Tablets, which consistently generate high revenue and maintain strong customer demand. Referral sources show a clear hierarchy, with Instagram and Email emerging as the most influential channels, while Referral and Facebook lag behind. Product popularity follows a similar pattern, with the top three items Printer, Tablet, and Chair showing nearly identical engagement levels, indicating a stable and competitive demand landscape.
Sales performance over time demonstrates significant volatility, with sharp month to month fluctuations and notable peaks and troughs. Despite this instability, sales generally remain within a predictable range, suggesting that external factors such as promotions, seasonality, or marketing campaigns may be driving the spikes. The box plot analysis highlights a wide spread of revenue values, including several extreme outliers at the upper end, which significantly stretch the distribution and may distort average performance metrics. Additionally, the presence of very low value transactions indicates a mix of both high value and low value customer behaviour.
Overall, the dataset reflects a business with strong product diversity, effective digital acquisition channels, and healthy demand, but also one that experiences operational inconsistencies, pricing variability, and uneven monthly performance.

**GENERAL RECOMMENDATION**

Based on the observed patterns, the business should prioritise strengthening its top‑performing channels particularly Instagram and Email by increasing targeted marketing efforts, enhancing visual content, and leveraging customer retention strategies. At the same time, underperforming channels such as Referral and Facebook would benefit from improved incentive structures, refreshed campaign strategies, or more compelling value propositions to boost engagement.
Given the strong performance of Chairs, Printers, Laptops, and Tablets, inventory planning and promotional efforts should focus on maintaining stock availability and exploring cross‑selling opportunities between these categories. Lower‑earning products, such as Phones, may require pricing reviews, product repositioning, or enhanced marketing visibility to improve their contribution.
The volatility in monthly sales suggests the need for more consistent promotional scheduling, improved forecasting models, and deeper analysis into the drivers behind peak and low‑performance months. Addressing the extreme outliers and pricing inconsistencies will also improve data reliability and support more accurate decision‑making.
Overall, the business should aim to stabilise operational performance, optimise marketing spend across high‑impact channels, and refine product strategies to maximise revenue while reducing risk.

**CONCLUSION** 

Overall, the analysis of the dataset reveals a business with a diverse product portfolio, strong digital engagement, and consistent customer demand across multiple categories. Revenue performance is led by high‑value items such as Chairs, Printers, Laptops, and Tablets, while lower earning products like Phones highlight opportunities for strategic improvement. Referral sources show a clear hierarchy, with Instagram and Email driving the majority of customer traffic, confirming the effectiveness of visually driven and retention‑focused marketing channels.

Sales trends demonstrate significant month to month volatility, suggesting that external factors such as promotions, seasonality, or marketing intensity play a major role in shaping performance. Despite these fluctuations, the business maintains a stable revenue range, supported by strong product demand and effective acquisition channels. The distribution analysis also highlights the presence of extreme outliers and very low‑value transactions, indicating a mix of customer behaviours and potential inconsistencies in pricing or order patterns.
