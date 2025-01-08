original_Table_02_01a <- Table_02_01a
Table_02_01a <- na.omit(Table_02_01a)
Table_02_01a_2 <- Table_02_01a %>%
  separate(Month, into = c("Year", "Month"), sep = " ")
Table_02_01a_2 <- Table_02_01a %>%
  separate(Month, into = c("Year", "Month"), sep = " ")
Energy_consumption_1973_2024_Monthly_Data <- Energy_consumption_1973_2024_Monthly_Data %>%
  separate(Month, into = c("Year", "Month"), sep = " ")
Primary_res_2018_2023 <- Energy_consumption_1973_2024_Monthly_Data %>%
  select(Year, Month, `Primary Energy Consumed by the Residential Sector (Trillion BTU)`) %>%
  filter(Year >= 2018 & Year <= 2023)
Primary_res_2018_2023$Year <- as.numeric(as.character(Primary_res_2018_2023$Year))
Primary_res_2018_2023$`Primary Energy Consumed by the Residential Sector (Trillion BTU)` <- as.numeric(as.character(Primary_res_2018_2023$`Primary Energy Consumed by the Residential Sector (Trillion BTU)`))
ggplot(Primary_res_2018_2023, aes(x = Year, y = `Primary Energy Consumed by the Residential Sector (Trillion BTU)`, fill = as.factor(Year))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("2018" = "blue", "2019" = "green", "2020" = "red", "2021" = "purple", "2022" = "orange", "2023" = "brown")) +
  labs(x = "Year", y = "Energy Usage (Trillion BTU)", fill = "Years") +
  theme_minimal()    
