# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# job_type = Job.create([{job_type: 'Cashier'}, {job_type: 'Freelance'}])
Job.destroy_all
User.destroy_all
Match.destroy_all

@first_names = [
'Allison',
'Arthur',
'Ana',
'Alex',
'Arlene',
'Alberto',
'Barry',
'Bertha',
'Bill',
'Bonnie',
'Bret',
'Beryl',
'Chantal',
'Cristobal',
'Claudette',
'Charley',
'Cindy',
'Chris',
'Dean',
'Dolly',
'Danny',
'Danielle',
'Dennis',
'Debby',
'Erin',
'Edouard',
'Erika',
'Earl',
'Emily',
'Ernesto',
'Felix',
'Fay',
'Fabian',
'Frances',
'Franklin',
'Florence',
'Gabielle',
'Gustav',
'Grace',
'Gaston',
'Gert',
'Gordon',
'Humberto',
'Hanna',
'Henri',
'Hermine',
'Harvey',
'Helene',
'Iris',
'Isidore',
'Isabel',
'Ivan',
'Irene',
'Isaac',
'Jerry',
'Josephine',
'Juan',
'Jeanne',
'Jose',
'Joyce',
'Karen',
'Kyle',
'Kate',
'Karl',
'Katrina',
'Kirk',
'Lorenzo',
'Lili',
'Larry',
'Lisa',
'Lee',
'Leslie',
'Michelle',
'Marco',
'Mindy',
'Maria',
'Michael',
'Noel',
'Nana',
'Nicholas',
'Nicole',
'Nate',
'Nadine',
'Olga',
'Omar',
'Odette',
'Otto',
'Ophelia',
'Oscar',
'Pablo',
'Paloma',
'Peter',
'Paula',
'Philippe',
'Patty',
'Rebekah',
'Rene',
'Rose',
'Richard',
'Rita',
'Rafael',
'Sebastien',
'Sally',
'Sam',
'Shary',
'Stan',
'Sandy',
'Tanya',
'Teddy',
'Teresa',
'Tomas',
'Tammy',
'Tony',
'Van',
'Vicky',
'Victor',
'Virginie',
'Vince',
'Valerie',
'Wendy',
'Wilfred',
'Wanda',
'Walter',
'Wilma',
'William',
'Kumiko',
'Aki',
'Miharu',
'Chiaki',
'Michiyo',
'Itoe',
'Nanaho',
'Reina',
'Emi',
'Yumi',
'Ayumi',
'Kaori',
'Sayuri',
'Rie',
'Miyuki',
'Hitomi',
'Naoko',
'Miwa',
'Etsuko',
'Akane',
'Kazuko',
'Miyako',
'Youko',
'Sachiko',
'Mieko',
'Toshie',
'Junko']

@last_names  = %w(Harris Rodriguez Garzon Thomas Cerny Herman Higgins Bryan Ma Sze Langley)

@job_type = ["education", "office", "customer service", "skill trade", "general labor", "other"]
	
@title = %w(roofer secretary tutor cashier handy_person)

@skill = %W(math english ruby chinese designing repairing Java)


def random_first_name
  @first_names.shuffle.last
end

def random_last_name
  @last_names.shuffle.last
end

def random_job_type
  @job_type.shuffle.last
end

def random_title
  @title.shuffle.last
end

def random_salary
  rand(10..40)
end

def random_skill
	@skill.shuffle.last
end

def random_email
	@first_names.shuffle.last+@last_names.shuffle.last+"@examples.com"
end

def random_phone
  "310-"+rand(1000000..9999999).to_s
end

def random_date_available
 rand(1..12).to_s+"/"+rand(1..29).to_s
end

def random_location
 rand(10000..99999).to_s
end

def random_work_exp
 rand(1..40).to_s
end

@education_level = %w(high_school bachelor's master's)

def random_education_level
 @education_level.shuffle.last
end


100.times do
	@the_first_name=random_first_name
	@the_last_name=random_last_name
	@the_email=(@the_first_name+@the_last_name+"@examples.com")
  Seeker.create(first_name: @the_first_name, last_name: @the_last_name, email: @the_email , phone: random_phone, job_type: random_job_type, skill_set: random_skill, edu_level: random_education_level, work_exp: random_work_exp, date_available: random_date_available, zipcode: random_location, password: "password", password_confirmation: "password")
end

10.times do
	@the_first_name=random_first_name
	@the_last_name=random_last_name
	@the_email=(@the_first_name+@the_last_name+"@examples.com")
	@the_company_name=(@the_last_name+"'s company lnc.")
	Employer.create(first_name: @the_first_name, last_name: @the_last_name, email: @the_email, phone: random_phone, company_name: @the_company_name,password: "password", password_confirmation: "password")
end

100.times do
	Employer.all[rand(0..9)].jobs.create(title: random_title, job_type: random_job_type, salary: random_salary, skill:random_skill, location: random_location)
end




Match.create(user_id: 1, job_id: 1, user_accept: true, job_accept: nil)
Match.create(user_id: 1, job_id: 2, user_accept: true, job_accept: false)
Match.create(user_id: 1, job_id: 3, user_accept: false, job_accept: nil)
Match.create(user_id: 1, job_id: 4, user_accept: true, job_accept: false)
Match.create(user_id: 1, job_id: 5, user_accept: nil, job_accept: false)
Match.create(user_id: 1, job_id: 6, user_accept: false, job_accept: nil)
Match.create(user_id: 1, job_id: 7, user_accept: nil, job_accept: false)
Match.create(user_id: 1, job_id: 8, user_accept: true, job_accept: false)
Match.create(user_id: 1, job_id: 9, user_accept: false, job_accept: true)














