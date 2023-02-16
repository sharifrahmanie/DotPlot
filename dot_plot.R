require(ggplot2)
require(readr)
# @biomedical_informatics
ggplot(data = goterm, aes(reorder(term_name, GeneRatio, sum),
                          GeneRatio, color = P.adj, size = Count)) +
  geom_point() +
  coord_flip() +
  scale_color_gradient(low = "red", high = "blue") +
  xlab("Biological Process") +
  ylab("Gene Ratio") +
  theme_classic() +
  theme(axis.text = element_text(family = "Times",
                                 size = 10 , colour = "black", angle = 00),
        axis.text.x = element_text(family = "Times",
                                   colour = "black", size = 13),
        axis.text.y = element_text(family = "Times",
                                   colour = "black", size = 13),
        plot.subtitle = element_text(family = "Times",
                                     size = 12, colour = "black", hjust = 0.5),
        axis.title.y = element_text(family = "Times", size = 14,
                                    angle = 90, hjust = 0.5),
        axis.title.x = element_text(family = "Times",
                                    size = 14, angle = 00)) +
  labs(subtitle = "")
