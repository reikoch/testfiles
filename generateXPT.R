# examples for sas7bdat and xpt files

library(tibble)
library(labelled)

set.seed(30984)
N <- 100
long <- paste(rep('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz', 5), collapse = ' ')
xpttest <- tibble::tibble(i=seq_len(N), short_character='character'
                          , long_character_variable=long
                          , float = runif(N)
                          )
xpttest <- labelled::set_variable_labels(xpttest,
                              .labels = c('an integer'
                                , 'demonstration of a short character Variable'
                                , 'long string longer than 200 characters with long label'
                                , 'just a FLOAT number'
                                )
                              )
