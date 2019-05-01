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
    1=>{content: "신청곡 받아주세요"} 
})
key_subject = Keyboard.create(name: "세부주제", key_type: "buttons", buttons_attributes: { 
    0=>{content: "더 나은 '멋쟁이 사자처럼'을 위한 서비스"},
    1=>{content: "지역사회/소외계층을 위한 서비스"},
    2=>{content: "당신의 대학생활을 쓸모있게, 재밌게 만드는 서비스"} 
})
key_music = Keyboard.create(name: "신청곡", key_type: "text")

Api.create(name: Init, keyboard: key_init)
Api.create(name: Subject,message: "주제를 선택해주세요", keyboard: key_subject)
Api.create(name: Music,message: "신청곡을 입력해 주세요", keyboard: key_music)
Api.create(name: MusicDone,message: "신청이 완료되었습니다", keyboard: key_init)