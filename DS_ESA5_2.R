require(stats)
require(graphics)

data_sum = summary(esoph)
print(data_sum)
barplot(table(esoph$agegp), xlab = "Altersgruppe", ylab= "Anzahl")
barplot(table(esoph$alcgp), xlab = "Alkoholkonsum in Gramm pro Tag", ylab= "Personenzahl")
barplot(table(esoph$tobgp), xlab = "Tabakkonsum in Gramm pro Tag", ylab= "Personenzahl")
plot(table(esoph$ncases), type = "p", xlab = "Fälle von Speiseröhrenkrebs",
     ylab = "Personenanzahl")
print(paste("Durchschnittlich hatten die Probanten ", mean(esoph$ncases), " Fälle von Speiseröhrenkrebs"))

print("Der Probant mit den meisten Fällen von Speiserührenkrebs hat folgende Werte:")
max_cancer = esoph[esoph["ncases"]== max(esoph["ncases"])]
print(max_cancer)

print("Der Probant mit den meisten Untersuchungen hat folgende Werte:")
max_controls = esoph[esoph["ncontrols"]== max(esoph["ncontrols"])]
print(max_controls)

print("Wie viele Probanten hatten mindestens einmal Speiseröhrenkrebs?")
one_and_more_cancer <- subset(esoph, ncases > 0)
print(nrow(one_and_more_cancer))

print("Wie viel Alkohol tranken die Probanten mit Speiseröhrenkrebs?")
plot(table(one_and_more_cancer$alcgp),xlab = "Alkoholkonsum in Gramm pro Tag", ylab = "Personenzahl")

print("Wie viel Tabak konsumierten die Probanten mit Speiseröhrenkrebs?")
plot(table(one_and_more_cancer$tobgp),xlab = "Tabakkonsum in Gramm pro Tag", ylab = "Personenzahl")

print("Wie viele Probanten ohne Speiseröhrenkrebs konsumierten nur wenig Alkohol und Tabak?")
no_cacer_and_low_consumption <- subset(esoph, alcgp == "0-39g/day")
no_cacer_and_low_consumption <- subset(no_cacer_and_low_consumption, tobgp == "0-9g/day", select = c(agegp, ncases, ncontrols))
print(no_cacer_and_low_consumption)
