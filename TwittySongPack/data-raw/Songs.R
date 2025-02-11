library(tidyverse)
genre_priority <- c("Rock", "Hip Hop", "R&B", "Country", "Dance/Electronic", "Metal","Pop",'Latin', 'Folk/Traditional','Jazz/Other')
Songs <- read_csv("data-raw/SongDetails.csv")%>% # Add a row index for reference
  pivot_longer(
    cols = latin:rock:`Dance/Electronic`:metal:`Folk/Acoustic`:`World/Traditional`:classical:country:`R&B`:blues:jazz:`hip hop`:pop:`easy listening`:`set()`:`easy listening`, # Specify the binary genre columns
    names_to = "genre", # New column name for genres
    values_to = "value" # Column to store binary values
  ) %>%
  filter(value == 1) %>% # Filter rows where value is 1
  select(-value)%>%
  mutate(across(where(is.logical), as.numeric)) %>%
  rename(entry_number = '...1' )%>%
  mutate(genre = case_when(genre == 'blues' ~ 'Jazz/Other',
                           genre == 'easy listening' ~ 'Jazz/Other',
                           genre == 'World/Traditional' ~ 'Folk/Traditional',
                           genre == 'Folk/Acoustic'~ 'Folk/Traditional',
                           genre == 'classical' ~ 'Jazz/Other',
                           genre == 'jazz' ~ 'Jazz/Other',
                           genre == 'latin' ~ 'Latin',
                           genre == 'metal' ~ 'Metal',
                           genre == 'rock' ~ 'Rock',
                           genre == 'pop' ~ 'Pop',
                           genre == 'set()' ~ 'Jazz/Other',
                           genre == 'country' ~ 'Country',
                           genre == 'hip hop' ~ 'Hip Hop',
                           TRUE ~ genre))%>%
  mutate(genre = factor(genre, levels = genre_priority)) %>%
  distinct(entry_number, duration_ms, year, explicit, popularity, .keep_all = TRUE)
usethis::use_data(Songs)
