setwd("/Users/floriankaiser/Downloads/wt21-nearby")

library(tidyverse)

df <- read_csv2("data_preprocessed.csv")

# Work & Education:
education <- 
  c(
  "Arbeit",
  "Architektur",
  "Beratung",
  "Bibliothek",
  "Bildung",
  "Gesundheit",
  "Kommunikation",
  "Kultur",
  "Kunst",
  "Literatur & Lesungen",
  "Musik",
  "VHS"
)

# Family Care & Support:

family <-
  c("Beratung",
    "Familie",
    "Gesundheit")

# Women’s Center:

women <-
  c("Beratung",
    "Gesundheit" ,
    "Kommunikation")

# Senior Center:
senior <-
  c("Beratung",
    "Senioren")

# Cultural Activites & Free Time Activites:
culture <-
  c(
    "Architektur",
    "Geschichte",
    "Kabarett",
    "Kino",
    "Kommunikation",
    "Konzert",
    "Kultur",
    "Kunst",
    "Literatur & Lesungen",
    "Museum & Ausstellung",
    "Oper",
    "Technik",
    "Theater",
    "Wissenschaft"
  )

# Sport & Health:
sport <-
  c("Beratung",
    "Natur & Erholung",
    "Sport & Spiel",
    "Tanz")


# str_replace("Bildung", education, "education")
# Work & Education:
education <- "Arbeit|Architektur|Beratung|Bibliothek|Bildung|Gesundheit|Kommunikation|Kultur|Kunst|Literatur & Lesungen|Musik|VHS"
# Family Care & Support:
family <- "Beratung|Familie|Gesundheit"
# Women’s Center:
women <- "Beratung|Gesundheit|Kommunikation"
# Senior Center:
senior <- "Beratung|Senioren"
# Cultural Activites & Free Time Activites:
culture <- "Architektur|Geschichte|Kabarett|Kino|Kommunikation|Konzert|Kultur|Kunst|Literatur & Lesungen|Museum & Ausstellung|Oper|Technik|Theater|Wissenschaft"
# Sport & Health:
sport <- "Beratung|Natur & Erholung|Sport & Spiel|Tanz"

# Create df ---------------------------------------------------------------
df_cat <- df %>%
  mutate(
    zeitliche_begrenzung = replace_na(zeitliche_begrenzung, "-"),
    preis = replace_na(preis, "-"),
    schlagworte2 = str_replace_all(schlagworte, education, "Work & Education"),
    schlagworte2 = str_replace_all(schlagworte2, family, "Family Care & Support"),
    schlagworte2 = str_replace_all(schlagworte2, women, "Women’s Center"),
    schlagworte2 = str_replace_all(schlagworte2, senior, "Senior Center"),
    schlagworte2 = str_replace_all(schlagworte2, culture, "Cultural Activities & Free Time Activities"),
    schlagworte2 = str_replace_all(schlagworte2, sport, "Sport & Health"),
  ) %>% 
  separate(schlagworte2, into = seq(1, 8) %>% paste0("sch_", .), sep = ",") %>% 
  pivot_longer(cols=starts_with("sch_"), values_drop_na = TRUE, values_to = "services") %>% 
  mutate(services = str_trim(services)) %>% 
  select(-name) %>% 
  distinct()

# Add "all" categories ----------------------------------------------------
all_neighborhoods <- df %>% 
  mutate(bezirk = "All neighborhoods")
all_services <- df %>% 
  mutate(services = "All services")
df_all <- bind_rows(df_cat, all_neighborhoods, all_services)

write_csv2(df_all, "data.csv")
