// Soccer League Project 1



//********* Part One ***************

//Dictionary of all players

var players: [[String : Any]] = [

["playerName": "Joe Smith", "height": 42.0, "hasExperience": true, "guardians": "Jim and Jan Smith"],
["playerName": "Jill Tanner", "height": 36.0, "hasExperience": true, "guardians": "Clara Tanner"],
["playerName": "Bill Bon", "height": 43.0, "hasExperience": true, "guardians": "Sara and Jenny Bon"],
["playerName": "Eva Gordon", "height": 45.0, "hasExperience": false, "guardians": "Wendy and Mike Gordon"],
["playerName": "Matt Gill", "height": 40.0, "hasExperience": false, "guardians" : "Charles and Sylvia Gill"],
["playerName": "Kenny Stein", "height": 41.0, "hasExperience": false, "guardians" : "Bill and Hillary Stein"],
["playerName": "Sammy Adams", "height": 45.0, "hasExperience" : false, "guardians" : "Jeff Adams"],
["playerName": "Karl Saygan", "height": 42.0, "hasExperience" : true, "guardians" : "Heather Bledsoe"],
["playerName": "Suzane Greenberg", "height": 44.0, "hasExperience" : true, "guardians" : "Henrietta Dumas"],
["playerName": "Sal Dali", "height": 41.0, "hasExperience" : false, "guardians" : "Gala Dali"],
["playerName": "Joe Kavalier", "height": 39.0, "hasExperience" : false, "guardians" : "Sam and Elaine Kavalier"],
["playerName": "Ben Finkelstein", "height": 44.0, "hasExperience" : false, "guardians" : "Aaron and Jill Finkenlstein"],
["playerName": "Diego Soto", "height": 41.0, "hasExperience" : true, "guardians" : "Robin and Sarika Soto"],
["playerName": "Chloe Alaska", "height": 47.0, "hasExperience" : false, "guardians" : "David and Jamie Alaska"],
["playerName": "Arnold Willis", "height": 43.0, "hasExperience" : false, "guardians" : "Claire Willis"],
["playerName": "Philip Helm", "height": 44.0, "hasExperience" : true, "guardians" : "Thomas Helm and Eva Jones"],
["playerName": "Les Clay", "height": 42.0, "hasExperience" : true, "guardians" : "Wynonna Brown"],
["playerName": "Herschel Krustofski", "height": 45.0, "hasExperience" : true, "guardians" : "Hyman and Rachel Krustofski"],
]



//******************* Part Two ********************



// Player Experience
var experiencedPlayers: [[String : Any]] = []
var noExperiencePlayers: [[String : Any]] = []

// Teams
var teamDragons: [[String : Any]] = []
var teamSharks: [[String : Any]] = []
var teamRaptors: [[String : Any]] = []


var theLeague: [[String : Any]] = []


// divide players with or without experiance

for player in players {
    if let isExperienced = player["hasExperience"] as? Bool {
        if isExperienced == true {
            experiencedPlayers.append(player)
        } else {
            noExperiencePlayers.append(player)
        }
        
    }
}



func sortByExperience(for player: [String: Any]) {
    if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
    }   else if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
        teamRaptors.append(player)
    }   else if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
    }
}



// Dividing teams by experience
for player in experiencedPlayers {
    sortByExperience(for: player)
}
 for player in noExperiencePlayers {
    sortByExperience(for: player)
}

(teamDragons.count)
(teamSharks.count)
(teamRaptors.count)




//**************** Part Three *******************




// Letters collection
var letters: [String] = []


// Practice dates
let dragonsPractice = ["date": "March 17th", "time": "1pm"]
let sharksPractice = ["date": "March 17th", "time": "3pm"]
let raptorsPractice = ["date": "March 18th", "time": "1pm"]


func welcomeLetter() {
    for player in teamDragons {
        if let guardianName = player["guardians"],
            let playersName = player["playerName"],
            let practiceTime = dragonsPractice["time"],
            let practiceDate = dragonsPractice["date"] {
            let letter = "Hello \(guardianName), Your child \(playersName) will be joining the Mighty Dragons! Our first team practice will be held on \(practiceDate) at \(practiceTime). We are excited to see you there!"
           letters.append(letter)
        }   else {
            return
        }
    }
    
    for player in teamSharks {
        if let guardiansName = player["guardians"],
            let playersName = player["playerName"],
            let practiceTime = sharksPractice["time"],
            let practiceDate = sharksPractice["date"] {
            let letter = "Hello \(guardiansName), Your child \(playersName) will be joining the Mighty Sharks! Our first team practice will be held on \(practiceDate) at \(practiceTime). We are excited to see you there!"
           letters.append(letter)
        }   else {
            return
        }
    }
    
    for player in teamRaptors {
        if let guardiansName = player["guardians"],
            let playersName = player["playerName"],
            let practcieTime = raptorsPractice["time"],
            let practiceDate = raptorsPractice["date"] {
            let letter = "Hello \(guardiansName), Your child \(playersName) will be joining the Mighty Raptors! Our first team practice will be held on \(practiceDate) at \(practcieTime). We are excited to see you there!"
           letters.append(letter)
        }   else {
            return
        }
    }
    
    for letter in letters {
        print(letter)
    }
}
welcomeLetter()




