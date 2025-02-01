# Brand-Comparison-through-NLP
This project uses Natural Language Processing to analyze customer reviews of leading smartphone brands. Key themes like camera, battery, and performance are explored using topic modeling and sentiment analysis, providing data-driven insights into brand strengths and areas for improvement.

## Link to Full Dashboard
Explore the full interactive dashboard by clicking the link below:
[Link al Full Dashboard](https://app.powerbi.com/view?r=eyJrIjoiMzE2Njk1YzItNWFkYS00MWY1LTgyNjctMDBlMjRmNmUwN2UwIiwidCI6IjU3N2ZjMWQ4LTA5MjItNDU4ZS04N2JmLWVjNGY0NTVlYjYwMCIsImMiOjR9)

Below is a preview of one of the dashboard pages:
![Page 1](Analisis%20de%20Sentimientos/Report%20Images/page_1.png)


---

## Steps for Project Development

### 1. Web Scraping Customer Reviews
- Extracted reviews from **MercadoLibre** and **Falabella** for the best-selling devices of the three brands: **Xiaomi**, **Apple**, and **Samsung**.
- Access the web scraping code: [Webscrapping.ipynb](Webscrapping/Webscrapping.ipynb).

---

### 2. Data Integration and Exploratory Data Analysis (EDA)
- Merged the datasets and performed EDA using **SQL** and **Python** to uncover key insights:
  - **Average Ratings**: Apple led with 4.61, followed by Samsung (4.60) and Xiaomi (4.45).
  - **Most Purchased Brand**: Samsung was the most popular among buyers.

---

### 3. Sentiment Analysis and Topic Modeling
- **Sentiment Analysis**: Identifies the sentiment (positive, neutral, or negative) in customer reviews to understand their overall perception.
- **Topic Modeling**: Detects and clusters the main themes (topics) in reviews to uncover the most discussed aspects.
- Access the corresponding code: [Analisis de Sentimientos.ipynb](Analisis%20de%20Sentimientos/Analisis%20de%20Sentimientos.ipynb).

---

### 4. Analysis and Key Findings

#### Most Mentioned Topics (Positive and Negative Combined):
- **Samsung**: Performance, camera, and screen.
- **Apple**: Performance and battery.
- **Xiaomi**: Price and performance.

#### Brand Comparison Insights by Positive Topics:
- **Price**: Samsung had the highest percentage of positive mentions.
- **Performance**: Apple and Samsung outperformed Xiaomi.
- **Camera**: Apple and Samsung excelled.
- **Screen**: Samsung led in positive reviews.

#### Brand Comparison Insights by Negative Topics:
- **Price and Battery**: Apple received the most negative feedback.
- **Performance**: Samsung and Xiaomi had the highest complaints.
- **Camera**: Xiaomi and Samsung faced more criticism than Apple in this area.

![Page 2](Analisis%20de%20Sentimientos/Report%20Images/page_2.png)
![Page 3](Analisis%20de%20Sentimientos/Report%20Images/page_3.png)
![Page 4](Analisis%20de%20Sentimientos/Report%20Images/page_4.png)

---

## Contact
For questions or feedback, feel free to reach out:
- 📧 Email: ronaldfc93@gmail.com
- [LinkedIn](https://www.linkedin.com/in/ronald-rosas-fonseca-b39323187/)
