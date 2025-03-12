import os
import umls_api

# Placer votre clef dans le fichier apikey.local dans ce répertoire
# Pour trouver votre clef, branchez-vous sur votre compte umls et suivez le premier lien
#   de la page https://documentation.uts.nlm.nih.gov/rest/authentication.html
clef_api = open("apikey.local", "r", encoding="UTF-8").read()

# Lancer la requête sur l'api d'umls
id = 'C0007107'
resp = umls_api.API(api_key=clef_api).get_cui(cui=id)

# Sortir les TUI des relations sémantiques de l'ontologie
if "result" in resp:
    tuis = [item["uri"].split("/")[-1] for item in resp["result"]["semanticTypes"]]
    print(tuis)
else:
    print("Aucune information trouvée")

