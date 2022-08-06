# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Question.destroy_all
Answer.destroy_all
User.destroy_all
Category.destroy_all
Test.destroy_all
TestPassing.destroy_all

users = User.create!(
  [{ nickname: 'Alex K', login: 'Alex1111', password: '111111', role: 'admin', email: 'admin@testguru.com' },
   { nickname: 'John W', login: 'johnnn', password: '22222', role: 'user', email: 'johnwast@gmail.com' },
   { nickname: 'Yoghan Kann W', login: 'kanw', password: 'zzzzzz', role: 'user', email: 'testkann@yandex.ru' },
   { nickname: 'Jo Zin', login: 'jozin', password: 'ssss', role: 'user', email: 'jozin888@gmail.com' }]
)

categories = Category.create!(
  [{ title: 'Backend' },
   { title: 'Frontend' },
   { title: 'Fullstack' }]
)

tests = Test.create!(
  [{ title: 'HTML Basic', level: 1, category: categories[1], author: users[0] },
   { title: 'Go', level: 6, category: categories[0], author: users[0] },
   { title: 'Ruby Basic', level: 4, category: categories[2], author: users[2] },
   { title: 'CSS3', level: 3, category: categories[1], author: users[1] },
   { title: 'Ruby on Rails Basic', level: 5, category: categories[2],
     author: users[3] }]
)

questions = Question.create!(
  [{ title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?', test: tests[0] },
   { title: 'Какой тег при создании страницы не является обязательным?',
     test: tests[0] },
   { title: 'Каким является следующий адрес ссылки: pages/page2.html?', test: tests[0] },
   { title: 'Где верно указан комментарий?', test: tests[1] },
   { title: 'Ближайший конкурент по скорости является?', test: tests[1] },
   { title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")',
     test: tests[1] },
   { title: 'Где записана сокращенная форма кода ниже:', test: tests[2] },
   { title: 'В каком варианте вы получите число без пропуска строки от пользователя?',
     test: tests[2] },
   { title: 'Какой метод позволяет привести строку в нижний регистр?', test: tests[2] },
   { title: 'Что такое «outline»?', test: tests[3] },
   { title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?',
     test: tests[3] },
   { title: 'Какое свойство указывает задний фон для тега?', test: tests[3] },
   { title: 'Путь get "static_pages/home" определяет', test: tests[4] },
   { title: 'Команда rails generate controller AdminsPages help',
     test: tests[4] },
   { title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?',
     test: tests[4] }]
)

answers = Answer.create!(
  [{ title: 'unity', question: questions[0] },
   { title: 'rowspan', question: questions[0], correct: true },
   { title: 'union', question: questions[0] },
   { title: 'colspan', question: questions[0] },
   { title: 'strong', question: questions[1], correct: true },
   { title: 'body', question: questions[1] },
   { title: 'head', question: questions[1] },
   { title: 'doctype', question: questions[1] },
   { title: 'Относительным', question: questions[2], correct: true },
   { title: 'Абсолютным', question: questions[2] },
   { title: '// Комментарий', question: questions[3], correct: true },
   { title: '# Комментарий', question: questions[3] },
   { title: '/* Комментарий */', question: questions[3] },
   { title: '## Комментарий', question: questions[3] },
   { title: 'Таковых нет', question: questions[4] },
   { title: 'Си', question: questions[4], correct: true },
   { title: 'С++', question: questions[4] },
   { title: 'Java', question: questions[4] },
   { title: 'Код указан верно', question: questions[5] },
   { title: 'Нужно прописывать через запятую', question: questions[5] },
   { title: 'Код указан не верно', question: questions[5] },
   { title: 'ответ 5', question: questions[5], correct: true },
   { title: 'x /= 3', question: questions[6], correct: true },
   { title: 'Нет сокращенной формы', question: questions[6] },
   { title: 'x/3', question: questions[6] },
   { title: 'num = gets.to_i', question: questions[7] },
   { title: 'num = gets.chomp()', question: questions[7] },
   { title: 'num = gets.chomp().to_i', question: questions[7], correct: true },
   { title: 'lowercase()', question: questions[8] },
   { title: 'downcase()', question: questions[8], correct: true },
   { title: 'upcase()', question: questions[8] },
   { title: 'Внешняя обводка блока', question: questions[9] },
   { title: 'Установка тени блока', question: questions[9] },
   { title: 'Внешнее свечение блока', question: questions[9], correct: true },
   { title: 'hover', question: questions[10] },
   { title: 'focus', question: questions[10], correct: true },
   { title: 'visited', question: questions[10] },
   { title: 'background-clip', question: questions[11] },
   { title: 'display', question: questions[11] },
   { title: 'background', question: questions[11], correct: true },
   { title: 'Получение данных home из static_pages', question: questions[12] },
   { title: 'Получение данных static_pages из home', question: questions[12] },
   { title: 'Отвечает на get запрос и направляет его в метод home контроллера static_pages',
     question: questions[12], correct: true },
   { title: 'Создает контроллер AdminsPages с методом help',
     question: questions[13], correct: true },
   { title: 'Отвечает на get запрос и направляет его в метод static_pages контроллера home',
     question: questions[13] },
   { title: 'Вызывает справку по созданию контроллеров', question: questions[13] },
   { title: 'Написание тестов и последующее написание кода, нацеленное на их прохождение',
     question: questions[14], correct: true },
   { title: 'Постоянное ручное тестирование', question: questions[14] },
   { title: 'Отправка кода в отдел тестирования', question: questions[14] }]
)

test_passings = TestPassing.create!(
  [{ user_id: users[0].id, test_id: tests[0].id, correct_questions: 2 },
   { user_id: users[0].id, test_id: tests[1].id, correct_questions: 1 },
   { user_id: users[0].id, test_id: tests[3].id, correct_questions: 1 },
   { user_id: users[1].id, test_id: tests[0].id, correct_questions: 1 },
   { user_id: users[0].id, test_id: tests[4].id, correct_questions: 3 }]
)
