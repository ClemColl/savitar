# ITEMS
item_list = [
    "Communication",                            # id: 1
    "Formation & gestion des compétences",      # id: 2
    "Adhésion au changement",                   # id: 3
    "Bien-être et engagement du personnel"      # id: 4
]

puts "Seeding ITEMS"
item_list.each do |name|
    Item.create(name: name)
end
puts "Completed ITEMS"

# QUESTIONS
question_list = [
    ["Diffusez-vous une communication interne structurée par rapport à la stratégie de l'entreprise ? C'est-à-dire en se basant sur les différents axes tels que la santé et sécurité, ou l'environnement par exemple.", 1],
    ["Votre communication interne atteint-elle toutes les strates hiérarchiques de votre entreprise ?", 1],
    ["Informez-vous régulièrement l'ensemble de vos collaborateurs sur l'avancement des différents projets ?", 1],
    ["La Direction de votre entreprise tient-elle compte des feedbacks provenant des collaborateurs ?", 1],
    ["Au sein de votre entreprise, responsabilisez vous les collaborateurs sur la préparation de leur communication interne ?", 1],

    ["Lors de l'intégration de nouvelle technologie (tout type confondue) dans votre procédé de fabrication ou dans votre organisation, que mettez-vous en place afin d'accompagner les utilisateurs concernés ?", 2],
    ["Avez-vous mis en place des outils d'auto-apprentissage/formation à disposition de vos collaborateurs ?", 2],
    ["Utilisez-vous un modèle de gestion des compétences ciblant les \"compétences clés\" qui permettent l'excellence et l'exécution de la stratégie de votre entreprise ?", 2],
    ["Avez-vous un système de capitalisation des connaissances / compétences ?", 2],
    ["vide", 2],

    ["L'Usine du Futur est-elle intégrée au plan stratégique de l'entrprise ?", 3],
    ["Des ressources sont-elles allouées à l'Usine du Futur ?", 3],
    ["Donnez-vous du sens au changement en le rendant légitime et pertinent aux yeux de vos collaborateurs ?", 3],
    ["Pour chaque changement, anticipez-vous les futurs résistances provenant des collaborateurs ?", 3],
    ["Lors d'un projet de changement, faites-vous participer les premiers acteurs concernés par ce dernier ?", 3],

    ["Utilisez-vous des méthodes de management novatrices au sein de vos organisations ?", 4],
    ["Envoyez-vous un message de reconnaissance à vos collaborateurs à la suite d'un succès constaté ?", 4],
    ["vide", 4],
    ["vide", 4],
    ["vide", 4]
]

puts "Seeding QUESTIONS"
question_list.each do |text, id|
    Question.create(text: text, item_id: id)
end
puts "Completed QUESTIONS"

# ANSWERS

answer_list = [
    ["Pas du tout", 0, 1], ["Partiellement", 2, 1], ["Totalement", 4, 1],
    ["Direction", 1, 2], ["Direction / Manager", 2, 2], ["Direction / Manager / Technicien", 3, 2], ["Direction / Manager / Technicien / Opérateurs", 4, 2],
    ["Jamais", 0, 3], ["Rarement", 1, 3], ["Régulièrement", 2, 3], ["Toujours", 3, 3],
    ["Jamais", 0, 4], ["Rarement", 1, 4], ["Régulièrement", 2, 4], ["Toujours", 3, 4],
    ["Pas du tout", 0, 5], ["Partiellement", 2, 5], ["Totalement", 4, 5],

    ["Aucune formation", 0, 6], ["Aucune formation, mais accompagnement terrain", 1, 6], ["Formation et accompagnement terrain", 2, 6], ["Formation, accompagnement terrain et mise en place de standards d'utilisation", 3, 6],
    ["Aucun", 0, 7], ["Oui, de type PowerPoint", 1, 7], ["Oui, de type vidéos ludiques (e-learning)", 2, 7], ["Oui de type Réalité augmentée et Réalité Virtuelle", 3, 7],
    ["Non, mais un plan de formation existe", 1, 8], ["Oui, un référentiel de compétences existe", 2, 8], ["Oui, à travers une évaluation des compétences basée sur la GPEC", 3, 8], ["Logiciel de gestion de compétences individuel avec Plan de Développement Individuel (Ex: MonPortailRH)", 4, 8],
    ["Aucun", 0, 9], ["Oui, via Excel par exmple mais ne sont pas partagés", 1, 9], ["Oui, elles sont répertoriées et cartographiées via un outil approprié", 2, 9], ["Elles sont cartographiées et les besoins sont anticipés par l'entreprise via un outil collaboratif", 3, 9],
    ["vide", 0, 10], ["vide", 0, 10], ["vide", 0, 10], ["vide", 0, 10],

    ["Pas du tout", 0, 11], ["Simplement évoquée", 1, 11], ["Oui mais sans plans d'actions concret", 2, 11], ["Totalement et se décline à travers les différents services", 3, 11],
    ["Aucune", 0, 12], ["Oui, une personne désignée (+ budget)", 1, 12], ["Oui, un service est entièrement dédié (+ budget)", 2, 12], ["Oui, en plus d'un service dédié, elle est représentée par un référent dans chaque service (+ budget)", 3, 12],
    ["Pas du tout", 0, 13], ["Les objectifs sont identifiés par la Direction et présentés aux collaborateurs", 1, 13], ["Les objectifs sont identifiés par les collaborateurs et validés par l'ensemble des collaborateurs", 2, 13], ["Les critères du changement sont fixés avec les collaborateurs afin de le rendre équitable et pertinent pour tous", 3, 13],
    ["Jamais", 0, 14], ["Oui, discussion informelle avec les collaborateurs", 1, 14], ["Oui, en utilisant une cartographie des acteurs concernés", 2, 14], ["Des ateliers sont animés avec les collaborateurs afin qu'ils en deviennent acteurs", 3, 14],
    ["Pas du tout", 0, 15], ["Oui, ils sont régulièrement consulté", 1, 15], ["Oui, ils sont co-auteur de certaines composantes et modalités du changement", 2, 15], ["Oui, ils sont totalement auteur dans la conception et la mise en œuvre du changement", 3, 15],

    ["Pas de méthode", 0, 16], ["Utilisation de méthodes simples (post-it, affichages)", 1, 16], ["Utilisation ponctuelle de méthodes agiles", 2, 16], ["Méthode agile entièrement intégrée par les collaborateurs", 3, 16],
    ["Aucun", 0, 17], ["Rarement", 1, 17], ["Régulièrement", 2, 17], ["Toujours", 3, 17],
    ["vide", 0, 18], ["vide", 0, 18], ["vide", 0, 18], ["vide", 0, 18],
    ["vide", 0, 19], ["vide", 0, 19], ["vide", 0, 19], ["vide", 0, 19],
    ["vide", 0, 20], ["vide", 0, 20], ["vide", 0, 20], ["vide", 0, 20]
]

puts "Seeding ANSWERS"
answer_list.each do |text, points, id|
    Answer.create(text: text, points: points, question_id: id)
end
puts "Completed ANSWERS"
