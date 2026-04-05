#import "template.typ": apa7, blockquote

#show: apa7.with(
  title: "Corrección examen parcial 1",
  author: "Nicolás Naranjo",
  department: "Universidad San Fransisco de Quito",
  course: "CMP 3003: Diseño de Sistemas",
  instructor: "Erick Ñauñay Cantos",
  duedate: datetime.today().display(),
  lang: "es",
)

#outline()
#pagebreak()

= Sección teórica

Las siguientes son las respuestas de la sección teórica:

+ B
+ B
+ ABD
+ B
+ ABE
+ B
+ ABE
+ ABCD
+ C
+ C
+ ABCD
+ B
+ AC
+ B
+ B
+ ABCD
+ A
+ B
+ C
+ ABCE
+ B
+ ABD
+ B
+ B
+ ABD
+ ACE
+ B
+ ABD
+ B
+ ABD

= Sección practica

Las respuestas de la sección se pueden encontrar en sus archivos respectivos al igual que a continuación.

== Pregunta 1: Infraestructura con Docker Compose

#raw(read("docker-compose.yml"), lang: "yaml", block: true)

== Pregunta 2: Dominio + Factory

#raw(read("domain/task.py"), lang: "python", block: true)

#raw(read("domain/factory.py"), lang: "python", block: true)

== Pregunta 3: Strategy: Política de Notificación

#raw(read("domain/notification.py"), lang: "python", block: true)

== Pregunta 4: API + DTOs + Comandos Git/Docker

=== 4A) Endpoint con DTOs

#raw(read("app/main.py"), lang: "python", block: true)

#raw(read("infra/task_service.py"), lang: "python", block: true)

=== 4B) Comandos Git + Docker

#raw(read("scripts/git_flow.sh"), lang: "bash", block: true)

#raw(read("scripts/docker_control.sh"), lang: "bash", block: true)

// #pagebreak()
// #bibliography("references.bib", style: "apa")
