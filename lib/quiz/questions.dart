import 'package:flutter/cupertino.dart';

class Question {
  int id, answer;
  String question;
  List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question":
        '"Used by date" is the final deadline for food consumption to be recognized that there will be no health or safety issues.',
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        'The expiration date of milk is 10 days, but the used by date is 70 days.',
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Most developed countries in Europe use the used by date system.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "South Korea plans to use the used by date system from 2030",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "The advantages of trees are that they produce carbon dioxide, causing floods and absorb oxygen",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
        "Using a used by date can result in less food being thrown out.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Acid rain is caused by NH3 and CFCs react with oxygen.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question":
        "The ozone layer is a region surrounding the earth that absorbs and protects the planet from the sun’s ultraviolet rays.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Carbon dioxide (CO2) comes from Fossil fuels and vehicles.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
        "We can reduce toxic gases by burn and use more fossil fuels and cut down trees.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 11,
    "question":
        "Air pollution can cause lung cancer, stroke, heart disease, and chronic respiratory disease.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question":
        "The effects of global warming are glaciers at the Arctic melting, sea level rising, and flooding. ",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 13,
    "question":
        "Greenhouse gas is gas that absorbs radiation from the sun and causes a greenhouse effect.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 14,
    "question": "Solar energy and wide energy are renewable and clean energy.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 15,
    "question":
        "Greenhouse gas is caused by  Carbon dioxide (CO2), Methane (CH4), and nitrous oxide(NO2).",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question":
        "The causes of climate change are human activities such as using fuel vehicles, burning plastic, and deforestation",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "question":
        "The disadvantages of acid rain are underwater life cannot survive, impact human health, damage buildings and trees. ",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question":
        "The impact of garbage at landfill sites is making fresh air and the environment clean. ",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 19,
    "question":
        "We can make a sustainable environment by building more cities, cutting trees, and using more plastic.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 20,
    "question":
        "Deforestation caused by agricultural activities, overpopulation, paper and furniture productions, illegal logging, etc.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
];
