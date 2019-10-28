README
The gossip Project
step1

Telecharge le tout, cd dans le repertoire,un petit bundle install pour avoir les gem qu'il faut. Puis fait le migrate (rails db:migrate et le seed rails db:seed) et hop c'est bon

__step2__
lance sur ton terminal rails server 

__les liens__
voici la liste des liens que tu voudras surement tester :

ils renvoient à la page d'acceuil
http://localhost:3000/home
http://localhost:3000/
tu pourras dessus tester les liens des :
gossips (dans les cards) puis des auteurs ensuite
de la team
des contacts
et enfin teste le :
http://localhost:3000/home/louis


J'ai utilisé home 2 fois à la place de welcome car je ne voyais pas l'intérêt d'avoir une page /home et une page /welcome/:id qui renvoit à la même chose. Je ne suis pas sur vis à vis de la consigne mais c'est permutable très facilemetn si jamais la consigne était stricte là dessus.