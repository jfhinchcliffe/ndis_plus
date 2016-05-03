# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Providerprofile.create(name: '4GR Pty Ltd', description: 'Lorem ipsum dolo amet', address: '104 Mimosa Rd, CARNEGIE, VIC, 3163', email: 'gillian@4gr.net.au', hours: "9.00am 3.00pm", capacity: 30, clients: 28)
Providerprofile.create(name: 'A Bos & N.F Bos', description: 'Lorem ipsum dolo amet', address: '10 Kadumba Avenue, CLIFTON SPRINGS, VIC, 3222', hours: "9.00am 3.00pm", capacity: 22, clients: 22)
Providerprofile.create(name: 'A Sport Pty Limited', description: 'Lorem ipsum dolo amet', address: '86 Geelong Road, TORQUAY, VIC, 3228', email: 'beyondmindfulness@live.com.au', hours: "10.00am 5.00pm", capacity: 12, clients: 2)
Providerprofile.create(name: 'A.E Youngs & D.P Youngs', description: 'Lorem ipsum dolo amet', address: '15 Riviera Plaza, BAIRNSDALE, VIC, 3875', email: 'bdalemobilityhire@bigpond.com.au', hours: "9.00am 5.00pm", capacity: 10, clients: 0)
Providerprofile.create(name: 'A.J Harris & C.V Harris', description: 'Lorem ipsum dolo amet', address: '16 Quinn Street, BELL POST HILL, VIC, 3215', email: 'annieandcolin@gmail.com', hours: "9.00am 3.00pm", capacity: 15, clients: 15)
Providerprofile.create(name: 'Abacus Learning Centre Ltd ', description: 'Lorem ipsum dolo amet', address: '215 High Street, HASTINGS, VIC, 3915', email: 'info@abacuslearning.com.au', hours: "12.00pmm 5.00pm", capacity: 2, clients: 2)
Providerprofile.create(name: 'Able Australia Services', description: 'Lorem ipsum dolo amet', address: '616 Riversdale Rd, CAMBERWELL, VIC, 3124', email: 'ann.adkins@ableaustralia.org.au', hours: "9.00am 3.00pm", capacity: 15, clients: 15)
Providerprofile.create(name: 'Able Living Group Pty Ltd', description: 'Lorem ipsum dolo amet', address: '1119 Riversdale Road, SURREY HILLS, VIC, 3127', email: 'info@able-living.org', hours: "10.00am 5.00pm", capacity: 12, clients: 2)
Providerprofile.create(name: 'Absalom, Jennie Elizabeth', description: 'Lorem ipsum dolo amet', address: '22 Watkin Street, OCEAN GROVE, VIC, 3226', email: 'jennie_absalom@hotmail.com', hours: "9.00am 3.00pm", capacity: 22, clients: 22)
Providerprofile.create(name: 'Aidacare Pty Ltd', description: 'Lorem ipsum dolo amet', address: '82 Albion St, BRUNSWICK, VIC, 3057', email: 'admin@aidacare.com.au', hours: "9.00am 5.00pm", capacity: 10, clients: 0)


Providerservice.create({name: 'Assist Access/Maintain Employ', providerprofile_id: '1'})
Providerservice.create({name: 'Household Tasks', providerprofile_id: '2'})
Providerservice.create({name: 'Behaviour Support', providerprofile_id: '3'})
Providerservice.create({name: 'Therapeutic Supports', providerprofile_id: '3'})
Providerservice.create({name: 'Assess-Skill/Ability Needs', providerprofile_id: '5'})
Providerservice.create({name: 'Assist Access/Maintain Employ', providerprofile_id: '5'})
Providerservice.create({name: 'Assist-Live Stage, Transition', providerprofile_id: '5'})
Providerservice.create({name: 'Assist Equip/Recreation', providerprofile_id: '5'})
Providerservice.create({name: 'Daily Tasks/Shared Living', providerprofile_id: '5'})
Providerservice.create({name: 'Equipment Special Assess Setup', providerprofile_id: '5'})
Providerservice.create({name: 'Assess-Skill/Ability Needs', providerprofile_id: '5'})
Providerservice.create({name: 'Participate Community', providerprofile_id: '5'})
Providerservice.create({name: 'Therapeutic Supports', providerprofile_id: '5'})
Providerservice.create({name: 'Assess-Skill/Ability Needs', providerprofile_id: '9'})
Providerservice.create({name: 'Equipment Special Assess Setup', providerprofile_id: '9'})
Providerservice.create({name: 'Therapeutic Supports', providerprofile_id: '9'})
Providerservice.create({name: 'Assistive Equip-Recreation', providerprofile_id: '10'})
Providerservice.create({name: 'Assist Prod-Pers Care/Safety', providerprofile_id: '10'})
Providerservice.create({name: 'Assist Prod-Household Task', providerprofile_id: '10'})
Providerservice.create({name: 'Equipment Special Assess Setup', providerprofile_id: '10'})
Providerservice.create({name: 'Home Modification', providerprofile_id: '10'})
Providerservice.create({name: 'Personal Mobility Equipment', providerprofile_id: '10'})
Providerservice.create({name: 'Therapeutic Supports', providerprofile_id: '10'})

Masterservice.create([{ name: 'Assist Access/Maintain Employ' }, { name: 'Household Tasks' }, { name: 'Behaviour Support' }, { name: 'Therapeutic Supports' }, { name: 'Assess-Skill/Ability Needs' }, { name: 'Assist-Live Stage, Transition' }, { name: 'Equipment Special Assess Setup' }, { name: 'Participate Community' }, { name: 'Personal Mobility Equipment' }])