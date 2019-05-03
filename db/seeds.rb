# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

key_init = Keyboard.create(name: "초기화면", key_type: "buttons", buttons_attributes: { 
    0=>{content: "멘토님 질문받아주세요ㅜ!!!"},
    1=>{content: "신청곡 받아주세요"} ,
    2=>{content: "대나무 쓰기"} 
})
Api.create(name: "Init", keyboard: key_init)
Api.create(name: "ReInit",message: "선택하세여", keyboard: key_init)

key_music = Keyboard.create(name: "신청곡", key_type: "text")
key_question = Keyboard.create(name: "질문", key_type: "text")
key_bamboo = Keyboard.create(name: "대나무", key_type: "text")

Api.create(name: "QuestionDone", message: "질문 등록이 완료되었습니다", keyboard: key_init)
Api.create(name: "MusicDone", message: "신청이 완료되었습니다", keyboard: key_init)
Api.create(name: "BambooDone", message: "등록이 완료되었습니다", keyboard: key_init)

q_api = Api.create(name: "Question", message: "질문을 입력해주세요", keyboard: key_question)
key_init.buttons.second.update(next_api: Api.create(name: "Music", message: "신청곡을 입력해 주세요", keyboard: key_music))
key_init.buttons.third.update(next_api: Api.create(name: "Bamboo", message: "대나무 입력해 주세요", keyboard: key_bamboo))

key_team = Keyboard.create(name: "조 선택", key_type: "buttons", buttons_attributes: { 
    0=>{content: "1조", next_api: q_api},
    1=>{content: "2조", next_api: q_api},
    2=>{content: "3조", next_api: q_api},
    3=>{content: "4조", next_api: q_api}
})
team_api = Api.create(name: "Team", message: "조를 선택해주세요", keyboard: key_team)


key_subject = Keyboard.create(name: "세부주제", key_type: "buttons", buttons_attributes: { 
    0=>{content: "더 나은 '멋쟁이 사자처럼'을 위한 서비스",next_api: team_api},
    1=>{content: "지역사회/소외계층을 위한 서비스",next_api: team_api},
    2=>{content: "당신의 대학생활을 쓸모있게, 재밌게 만드는 서비스",next_api: team_api}
})

key_init.buttons.first.update(next_api: Api.create(name: "Subject", message: "주제를 선택해주세요", keyboard: key_subject))



Css.create(name: 'left', width: 300)
Css.create(name: 'right', width: 500)