# LEESME

Deze website is gebaseerd op distill. Het bestand `_site.yml` is het configuratiebestand voor de website.

Een nieuw bericht maak je aan met de opdracht `create_post("mijntitel")`. Dit maakt een subdirectory aan in de map `_posts` met een mapnaam waarin ook de aanmaakdatum zit, samen met de titelslug van het bericht.

Als je in de loop van een paar dagen aan een bericht werkt en/of als je de titel van je bericht verandert nadat je eraan bent begonnen, wil je misschien de naam van de postdirectory wijzigen. Hiervoor kun je de functie `rename_post_dir()` gebruiken om de datum en/of titelslug bij te werken die in de mapnaam wordt weergegeven. Bijvoorbeeld: `rename_post_dir("_posts/2021-06-18-welkom")`.

Een draft maak je met `create_post("mijntitel", draft = TRUE)`

Render het bericht via Knit.

Berichten die je later bijwerkt (update) worden niet opnieuw gerendered en moet je eerst met Knit verwerken.
