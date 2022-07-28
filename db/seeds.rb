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
TestPassing.destroy_all
Test.destroy_all
User.destroy_all
Category.destroy_all

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
  [{ title: 'HTML Basic', level: 1, category_id: categories[1].id, author_id: users[1].id },
   { title: 'Go', level: 3, category_id: categories[0].id, author_id: users[2].id },
   { title: 'Ruby Basic', level: 1, category_id: categories[2].id, author_id: users[3].id },
   { title: 'CSS3', level: 2, category_id: categories[1].id, author_id: users[2].id },
   { title: 'Ruby on Rails Basic', level: 2, category_id: categories[2].id,
     author_id: users[3].id }]
)

questions = Question.create!(
  [{ title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?', test_id: tests[0].id },
   { title: 'Какой тег при создании страницы не является обязательным?',
     test_id: tests[0].id },
   { title: 'Каким является следующий адрес ссылки: pages/page2.html?', test_id: tests[0].id },
   { title: 'Где верно указан комментарий?', test_id: tests[1].id },
   { title: 'Ближайший конкурент по скорости является?', test_id: tests[1].id },
   { title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")',
     test_id: tests[1].id },
   { title: 'Где записана сокращенная форма кода ниже:', test_id: tests[2].id },
   { title: 'В каком варианте вы получите число без пропуска строки от пользователя?',
     test_id: tests[2].id },
   { title: 'Какой метод позволяет привести строку в нижний регистр?', test_id: tests[2].id },
   { title: 'Что такое «outline»?', test_id: tests[3].id },
   { title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?',
     test_id: tests[3].id },
   { title: 'Какое свойство указывает задний фон для тега?', test_id: tests[3].id },
   { title: 'Путь get "static_pages/home" определяет', test_id: tests[4].id },
   { title: 'Команда rails generate controller AdminsPages help',
     test_id: tests[4].id },
   { title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?',
     test_id: tests[4].id }]
)

answers = Answer.create!(
  [{ title: 'unity', question_id: questions[0].id },
   { title: 'rowspan', question_id: questions[0].id, correct: true },
   { title: 'union', question_id: questions[0].id },
   { title: 'colspan', question_id: questions[0].id },
   { title: 'strong', question_id: questions[1].id, correct: true },
   { title: 'body', question_id: questions[1].id },
   { title: 'head', question_id: questions[1].id },
   { title: 'doctype', question_id: questions[1].id },
   { title: 'Относительным', question_id: questions[2].id, correct: true },
   { title: 'Абсолютным', question_id: questions[2].id },
   { title: '// Комментарий', question_id: questions[3].id, correct: true },
   { title: '# Комментарий', question_id: questions[3].id },
   { title: '/* Комментарий */', question_id: questions[3].id },
   { title: '## Комментарий', question_id: questions[3].id },
   { title: 'Таковых нет', question_id: questions[4].id },
   { title: 'Си', question_id: questions[4].id, correct: true },
   { title: 'С++', question_id: questions[4].id },
   { title: 'Java', question_id: questions[4].id },
   { title: 'COBOL', question_id: questions[4].id },
   { title: 'Код указан верно', question_id: questions[5].id },
   { title: 'Нужно прописывать через запятую', question_id: questions[5].id },
   { title: 'Код указан не верно', question_id: questions[5].id },
   { title: 'Ответ 4', question_id: questions[5].id },
   { title: 'ответ 5', question_id: questions[5].id, correct: true },
   { title: 'x /= 3', question_id: questions[6].id, correct: true },
   { title: 'Нет сокращенной формы', question_id: questions[6].id },
   { title: 'x/3', question_id: questions[6].id },
   { title: 'num = gets.to_i', question_id: questions[7].id },
   { title: 'num = gets.chomp()', question_id: questions[7].id },
   { title: 'num = gets.chomp().to_i', question_id: questions[7].id, correct: true },
   { title: 'lowercase()', question_id: questions[8].id },
   { title: 'downcase()', question_id: questions[8].id, correct: true },
   { title: 'upcase()', question_id: questions[8].id },
   { title: 'Внешняя обводка блока', question_id: questions[9].id },
   { title: 'Установка тени блока', question_id: questions[9].id },
   { title: 'Внешнее свечение блока', question_id: questions[9].id, correct: true },
   { title: 'hover', question_id: questions[10].id },
   { title: 'focus', question_id: questions[10].id, correct: true },
   { title: 'visited', question_id: questions[10].id },
   { title: 'background-clip', question_id: questions[11].id },
   { title: 'display', question_id: questions[11].id },
   { title: 'background', question_id: questions[11].id, correct: true },
   { title: 'Получение данных home из static_pages', question_id: questions[12].id },
   { title: 'Получение данных static_pages из home', question_id: questions[12].id },
   { title: 'Отвечает на get запрос и направляет его в метод home контроллера static_pages',
     question_id: questions[12].id, correct: true },
   { title: 'Создает контроллер AdminsPages с методом help',
     question_id: questions[13].id, correct: true },
   { title: 'Отвечает на get запрос и направляет его в метод static_pages контроллера home',
     question_id: questions[13].id },
   { title: 'Вызывает справку по созданию контроллеров', question_id: questions[13].id },
   { title: 'Написание тестов и последующее написание кода, нацеленное на их прохождение',
     question_id: questions[14].id, correct: true },
   { title: 'Постоянное ручное тестирование', question_id: questions[14].id },
   { title: 'Отправка кода в отдел тестирования', question_id: questions[14].id }]
)

test_passings = TestPassing.create!(
  [{ user_id: users[0].id, test_id: tests[0].id, correct_questions: 2 },
   { user_id: users[0].id, test_id: tests[1].id, correct_questions: 1 },
   { user_id: users[0].id, test_id: tests[3].id, correct_questions: 1 },
   { user_id: users[1].id, test_id: tests[0].id, correct_questions: 1 },
   { user_id: users[0].id, test_id: tests[4].id, correct_questions: 3 }]
)
