# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# client_images = Dir[Rails.root.join('app/assets/images/client', '*.*')]
# project_images = Dir[Rails.root.join('app/assets/images/projects', '*.*')]
# service_images = Dir[Rails.root.join('app/assets/images/services', '*.*')]
# slider_images = Dir[Rails.root.join('app/assets/images/sliderImages', '*.*')]
# team_images = Dir[Rails.root.join('app/assets/images/team', '*.*')]
admin = User.create(
    email: 'admin@ideabreed.net',
    password: 'password',
    )
if admin.persisted?
  puts "user created"
else
  puts admin.errors.messages
end

#
about = About.create(
    title:'Who we are',
    description:'As a strong and diversified centre of innovation, MHI operates right across the electricity market —
     from generation, through transmission and distribution, to the end user. For over 30 years, we have provided leading-edge
      services and products to our clients in over 120 countries around the world. Our clients turn to us to overcome even the
    most intricate and complex challenges, to deliver results on time and on budget, from start to finish, and in some of the most
    remote locations. Dedicated to delivering the right solutions for all your energy and telecommunications needs, we
     recognize that working together is key for a project’s long-term success.'
)
if about.persisted?
  puts "about created"
else
  about.errors.messages
end


2.times do
  services=['Transmission Line Projects','Sub Station Projects','Distribution Line Projects','Electrification Projects']
  services.each do |service|
    services = Service.create(
        name: service,
        description: 'We have successfully completed construction of a number of
              hydropower projects ranging from micro to mega projects. One such project
             is the 60 MW Khimti I Hydropower Project which is one of the few hydropower
             projects worldwide to be completed ahead of time. Himal Hydro played a major
            role to achieve this result. A review of the projects we have undertaken clearly
            demonstrates our capability in this field.'
    )
    if services.persisted?
      puts "service created"
    else
      services.errors.messages
    end

    # io_files1 = service_images
    #
    # io_files1.each do |f|
    #
    #   image = File.open(f)
    #
    #   services.image.attach io: image, filename: f.split('/').last
    #
    #   image.close
    # end
  end
end

projects=['Transmission Line Projects','Sub Station Projects','Distribution Line Projects','Electrification Projects']
projects.each do |project|
  projects = Project.create(
      name: project,
      location: 'gandaki',
      owner: 'Bhairabkunda Hydropower Pvt. Ltd.',
      description: 'Our civil engineering team assists asset owners with design services, vegetation management,
                    line modelling, upgrade engineering, and thermal rating analysis of transmission and distribution
                    lines and assets. Our electrical engineering team provides power system studies; engineering equipment
                    procurement services; operations, maintenance, and commissioning services; asset management; environmental
                    monitoring; and equipment failure analysis.',
      construction_period: '9 month',
      status: rand(0..1)
  )
  if projects.persisted?
    puts 'projects created'
  else
    puts projects.errors.messages
  end

  # io_files1 = project_images
  #
  # io_files1.each do |f|
  #
  #   image = File.open(f)
  #
  #   projects.image.attach io: image, filename: f.split('/').last
  #
  #   image.close
  # end
end
#
departments=['Transmission','Design','Sub station','Administrative']
departments.each do |dept|
  departments = Department.create(
      name: dept
  )
  if departments.persisted?
    puts "department created"
  else
    puts departments.errors.messages
  end
end
#
departments=['Transmission','Design','Sub station','Administrative']
members=['Ram','Shyam', 'Hari', 'Sita', 'Gita']
position=['Head','Sub-head','Worker','Sub-worker','Supporter']
count=0
departments.each do |department|
  members.each do |mem|
    teams = TeamMember.create(
        name: mem,
        position: position[count],
        achievement: "#{mem}" + 'joined Government of Nepal since 1981.'+ "#{mem}" + 'has 32 years of
             professional experience under Government of Nepal / Ministry of Water Resources,
             Ministry of Energy, Ministry of Irrigation, Department of Electricity Development,
             Department of Irrigation & Hydrology etc. in the field of Water Resources Development
            and Management, Hydro Power Study/Development/Management, Irrigation Development/ Management,
             Engineering Geology & Environment, Climate Change and Management, Hydro-meteorological Study,
            Water Induced Disaster Prevention/Flood Control and River Training, Hydro-geological study and
            investigation, Ground Water Development and Management etc.',
        department_id: Department.find_by_name(department).id
    )
    if teams.persisted?
      puts "team created"
    else
      puts teams.errors.messages
    end
    # io_files1 = team_images.sample(1)
    #
    # io_files1.each do |f|
    #
    #   image = File.open(f)
    #
    #   teams.image.attach io: image, filename: f.split('/').last
    #
    #   image.close
    # end
  end

end

clients = ['CMR Group, India','Empregilo S.p.A., France', 'NT Højgaard, Denmark','Madi Power Company', 'Himal Power Limited','Himal Hydro Nepal Pvt. Ltd.', 'D.C. Power Company Pvt. Ltd']
clients.each do |client|
  clients = Client.create(
      name: client,
      description: "#{client}" + 'provided mid and senior level management with first-hand knowledge and experience in the governance, management, and operations of modern effective and efficient utilities. '
  )
  if clients.persisted?
    puts "clients created"
  else
    clients.errors.messages
  end
  # io_files1 = client_images.sample(1)
  #
  # io_files1.each do |f|
  #
  #   image = File.open(f)
  #
  #   clients.image.attach io: image, filename: f.split('/').last
  #
  #   image.close
  # end
end

sliders = SliderImage.create(
    name:'slide'
)

if sliders.persisted?
  puts "slide created"
else
  puts sliders.errors.messages  
end
# io_files1 = slider_images.sample(3)
#
# io_files1.each do |f|
#
#   image = File.open(f)
#
#   sliders.image.attach io: image, filename: f.split('/').last
#
#   image.close
# end

