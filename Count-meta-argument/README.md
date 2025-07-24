Count meta argument is used to create mulitple instances of a resource in a more efficient way. 
Points to note:
1. Resources created are stored as a list. In the example used in this folder, we created 4 IAM users. When you run a terraform outplut, each IAM user is part of a list and is indexed.
2. Modifying a list that drives the count parameter can lead to resource replacements due to index shifts. This may trigger unwanted service interruptions or data loss if the resources are critical.
