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
Test.destroy_all
User.destroy_all
Category.destroy_all
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
  [{ title: 'HTML Basic', level: 1, category_id: Category.find_by(title: 'Frontend').id, author_id: User.second.id },
   { title: 'Go', level: 3, category_id: Category.find_by(title: 'Backend').id, author_id: User.third.id },
   { title: 'Ruby Basic', level: 1, category_id: Category.find_by(title: 'Fullstack').id, author_id: User.fourth.id },
   { title: 'CSS3', level: 2, category_id: Category.find_by(title: 'Frontend').id, author_id: User.third.id },
   { title: 'Ruby on Rails Basic', level: 2, category_id: Category.find_by(title: 'Fullstack').id,
     author_id: User.fourth.id }]
)

questions = Question.create!(
  [{ title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?', test_id: Test.find_by(title: 'HTML Basic').id },
   { title: 'Какой тег при создании страницы не является обязательным?',
     test_id: Test.find_by(title: 'HTML Basic').id },
   { title: 'Каким является следующий адрес ссылки: pages/page2.html?', test_id: Test.find_by(title: 'HTML Basic').id },
   { title: 'Где верно указан комментарий?', test_id: Test.find_by(title: 'Go').id },
   { title: 'Ближайший конкурент по скорости является?', test_id: Test.find_by(title: 'Go').id },
   { title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")',
     test_id: Test.find_by(title: 'Go').id },
   { title: 'Где записана сокращенная форма кода ниже:', test_id: Test.find_by(title: 'Ruby Basic').id },
   { title: 'В каком варианте вы получите число без пропуска строки от пользователя?',
     test_id: Test.find_by(title: 'Ruby Basic').id },
   { title: 'Какой метод позволяет привести строку в нижний регистр?', test_id: Test.find_by(title: 'Ruby Basic').id },
   { title: 'Что такое «outline»?', test_id: Test.find_by(title: 'CSS3').id },
   { title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?',
     test_id: Test.find_by(title: 'CSS3').id },
   { title: 'Какое свойство указывает задний фон для тега?', test_id: Test.find_by(title: 'CSS3').id },
   { title: 'Путь get "static_pages/home" определяет', test_id: Test.find_by(title: 'Ruby on Rails Basic').id },
   { title: 'Команда rails generate controller AdminsPages help',
     test_id: Test.find_by(title: 'Ruby on Rails Basic').id },
   { title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?',
     test_id: Test.find_by(title: 'Ruby on Rails Basic').id }]
)

answers = Answer.create!(
  [{ title: 'unity', question_id: Question.find_by(title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?').id },
   { title: 'rowspan',
     question_id: Question.find_by(title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?').id, correct: true },
   { title: 'union',
     question_id: Question.find_by(title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?').id },
   { title: 'colspan',
     question_id: Question.find_by(title: 'С помощью какого атрибута объединяются ячейки таблицы по вертикали?').id },
   { title: 'strong',
     question_id: Question.find_by(title: 'Какой тег при создании страницы не является обязательным?').id, correct: true },
   { title: 'body',
     question_id: Question.find_by(title: 'Какой тег при создании страницы не является обязательным?').id },
   { title: 'head',
     question_id: Question.find_by(title: 'Какой тег при создании страницы не является обязательным?').id },
   { title: 'doctype',
     question_id: Question.find_by(title: 'Какой тег при создании страницы не является обязательным?').id },
   { title: 'Относительным',
     question_id: Question.find_by(title: 'Каким является следующий адрес ссылки: pages/page2.html?').id, correct: true },
   { title: 'Абсолютным',
     question_id: Question.find_by(title: 'Каким является следующий адрес ссылки: pages/page2.html?').id },
   { title: '// Комментарий', question_id: Question.find_by(title: 'Где верно указан комментарий?').id, correct: true },
   { title: '# Комментарий', question_id: Question.find_by(title: 'Где верно указан комментарий?').id },
   { title: '/* Комментарий */', question_id: Question.find_by(title: 'Где верно указан комментарий?').id },
   { title: '## Комментарий', question_id: Question.find_by(title: 'Где верно указан комментарий?').id },
   { title: 'Таковых нет', question_id: Question.find_by(title: 'Ближайший конкурент по скорости является?').id },
   { title: 'Си', question_id: Question.find_by(title: 'Ближайший конкурент по скорости является?').id, correct: true },
   { title: 'С++', question_id: Question.find_by(title: 'Ближайший конкурент по скорости является?').id },
   { title: 'Java', question_id: Question.find_by(title: 'Ближайший конкурент по скорости является?').id },
   { title: 'COBOL', question_id: Question.find_by(title: 'Ближайший конкурент по скорости является?').id },
   { title: 'Код указан верно',
     question_id: Question.find_by(title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")').id },
   { title: 'Нужно прописывать через запятую',
     question_id: Question.find_by(title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")').id },
   { title: 'Код указан не верно',
     question_id: Question.find_by(title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")').id },
   { title: 'Ответ 4',
     question_id: Question.find_by(title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")').id },
   { title: 'ответ 5',
     question_id: Question.find_by(title: 'Верно ли ниже указан импорт пакетов? import ("fmt"; "os"; "net/http")').id, correct: true },
   { title: 'x /= 3', question_id: Question.find_by(title: 'Где записана сокращенная форма кода ниже:').id,
     correct: true },
   { title: 'Нет сокращенной формы',
     question_id: Question.find_by(title: 'Где записана сокращенная форма кода ниже:').id },
   { title: 'x/3', question_id: Question.find_by(title: 'Где записана сокращенная форма кода ниже:').id },
   { title: 'num = gets.to_i',
     question_id: Question.find_by(title: 'В каком варианте вы получите число без пропуска строки от пользователя?').id },
   { title: 'num = gets.chomp()',
     question_id: Question.find_by(title: 'В каком варианте вы получите число без пропуска строки от пользователя?').id },
   { title: 'num = gets.chomp().to_i',
     question_id: Question.find_by(title: 'В каком варианте вы получите число без пропуска строки от пользователя?').id, correct: true },
   { title: 'lowercase()',
     question_id: Question.find_by(title: 'Какой метод позволяет привести строку в нижний регистр?').id },
   { title: 'downcase()',
     question_id: Question.find_by(title: 'Какой метод позволяет привести строку в нижний регистр?').id, correct: true },
   { title: 'upcase()',
     question_id: Question.find_by(title: 'Какой метод позволяет привести строку в нижний регистр?').id },
   { title: 'Внешняя обводка блока', question_id: Question.find_by(title: 'Что такое «outline»?').id },
   { title: 'Установка тени блока', question_id: Question.find_by(title: 'Что такое «outline»?').id },
   { title: 'Внешнее свечение блока', question_id: Question.find_by(title: 'Что такое «outline»?').id, correct: true },
   { title: 'hover',
     question_id: Question.find_by(title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?').id },
   { title: 'focus',
     question_id: Question.find_by(title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?').id, correct: true },
   { title: 'visited',
     question_id: Question.find_by(title: 'Какой псевдокласс сработает при установке курсора в текстовое поле?').id },
   { title: 'background-clip',
     question_id: Question.find_by(title: 'Какое свойство указывает задний фон для тега?').id },
   { title: 'display', question_id: Question.find_by(title: 'Какое свойство указывает задний фон для тега?').id },
   { title: 'background', question_id: Question.find_by(title: 'Какое свойство указывает задний фон для тега?').id,
     correct: true },
   { title: 'Получение данных home из static_pages',
     question_id: Question.find_by(title: 'Путь get "static_pages/home" определяет').id },
   { title: 'Получение данных static_pages из home',
     question_id: Question.find_by(title: 'Путь get "static_pages/home" определяет').id },
   { title: 'Отвечает на get запрос и направляет его в метод home контроллера static_pages',
     question_id: Question.find_by(title: 'Путь get "static_pages/home" определяет').id, correct: true },
   { title: 'Создает контроллер AdminsPages с методом help',
     question_id: Question.find_by(title: 'Команда rails generate controller AdminsPages help').id, correct: true },
   { title: 'Отвечает на get запрос и направляет его в метод static_pages контроллера home',
     question_id: Question.find_by(title: 'Команда rails generate controller AdminsPages help').id },
   { title: 'Вызывает справку по созданию контроллеров  ',
     question_id: Question.find_by(title: 'Команда rails generate controller AdminsPages help').id },
   { title: 'Написание тестов и последующее написание кода, нацеленное на их прохождение',
     question_id: Question.find_by(title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?').id, correct: true },
   { title: 'Постоянное ручное тестирование',
     question_id: Question.find_by(title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?').id },
   { title: 'Отправка кода в отдел тестирования',
     question_id: Question.find_by(title: 'Возможно ли проводить миграцию базы данных или ее откат частично лишь до определенной версии?').id }]
)

test_passings = TestPassing.create!(
  [{ user_id: User.find_by(nickname: 'Alex K').id, test_id: Test.find_by(title: 'HTML Basic').id, correct_questions: 2 },
   { user_id: User.find_by(nickname: 'Alex K').id, test_id: Test.find_by(title: 'Go').id, correct_questions: 1 },
   { user_id: User.find_by(nickname: 'Alex K').id, test_id: Test.find_by(title: 'CSS3').id, correct_questions: 1 },
   { user_id: User.find_by(nickname: 'Alex K').id, test_id: Test.find_by(title: 'Ruby on Rails Basic').id, correct_questions: 3 }]
)
