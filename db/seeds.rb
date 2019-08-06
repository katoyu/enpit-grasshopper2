# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:name => 'yamada', :email => 'yamada@gmail.com', :password_digest => '$2a$12$iAy0QhKyaiajc7wPFbNA6OFCsLZGXCVpKUyofNdmRKnIowWpItVeW')
User.create(:name => 'suzuki', :email => 'suzuki@gmail.com', :password_digest => '$2a$12$ZUGVfHntOEJ3K7XsrbBUauF1M6eDML/X68DfdYomnlIPtJIP0DTEm')
User.create(:name => 'tanaka', :email => 'tanaka@gmail.com', :password_digest => '$2a$12$rTcXv/cLCVFNmYaN9fbjT.6ikh05vZzTcg1JFjpDsMmhVyKaISVxe')
#それぞれのパスワードはnameと同値
10.times do |i|
    User.create(:name => 'mob'+i.to_s, :email => 'mob'+i.to_s+'@gmail.com',
    :password_digest => '$2a$08$hYrPCPffh3vicHUsWwgWa.8AGwnp9awss2WFQ40k73VdL0TSW/eky')  # password は 'mob' で一意
end

Profile.create(:user_id => '1',
:goal => '10kgやせる', :daily_task => '走る',
:monthly_score => 10, :experience => 1000,
:avatar_url => 'a.png')
Profile.create(:user_id => '2',
:goal => '筋力をつける', :daily_task => '筋トレ',
:monthly_score => 20, :experience => 2000,
:avatar_url => 'b.png')
Profile.create(:user_id => '3',
:goal => '試験で100点', :daily_task => '毎日復習',
:monthly_score => 30, :experience => 3000,
:avatar_url => 'c.png')
10.times do |i|
    Profile.create(:user_id => (i+4).to_s,
    :goal => 'mob goal', :daily_task => 'mob task',
    :monthly_score => "#{rand(10000)}", :experience => "#{rand(10000)}",
    :avatar_url => '/a.png')
end

Tag.create(:user_id => '1', :tag => 'ダイエット')
Tag.create(:user_id => '1', :tag => '主婦')
Tag.create(:user_id => '1', :tag => '初心者')
Tag.create(:user_id => '2', :tag => '筋トレ')
Tag.create(:user_id => '2', :tag => 'ラグビー部')
Tag.create(:user_id => '2', :tag => 'ガチ')
Tag.create(:user_id => '3', :tag => '試験勉強')
Tag.create(:user_id => '3', :tag => '筑波大学')
Tag.create(:user_id => '3', :tag => '夏休み')
10.times do |i|
    Tag.create(:user_id => (i+4).to_s, :tag => '夏休み')
end

Record.create(:user_id => '1')
Record.create(:user_id => '2')
Record.create(:user_id => '2')
Record.create(:user_id => '3')
Record.create(:user_id => '3')
Record.create(:user_id => '3')

Memo.create(:record_id => '1', :memo => 'ランニング', :like_count => 10)
Memo.create(:record_id => '2', :memo => '筋トレ１', :like_count => 20)
Memo.create(:record_id => '3', :memo => '筋トレ２', :like_count => 30)
Memo.create(:record_id => '4', :memo => '勉強１', :like_count => 40)
Memo.create(:record_id => '5', :memo => '勉強２', :like_count => 50)
Memo.create(:record_id => '6', :memo => '勉強３', :like_count => 60)
