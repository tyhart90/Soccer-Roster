// Soccer League Project 1



//********* Part One ***************

//Dictionary of all players

var players: [[String : Any]] = [

["playerName": "Joe Smith", "height": 42.0, "experience": true, "gaurdians": "Jim and Jan Smith"],
["playerName": "Jill Tanner", "height": 36.0, "experience": true, "gaurdians": "Clara Tanner"],
["playerName": "Bill Bon", "height": 43.0, "experience": true, "gaurdians": "Sara and Jenny Bon"],
["playerName": "Eva Gordon", "height": 45.0, "experience": false, "gaurdians": "Wendy and Mike Gordon"],
["playerName": "Matt Gill", "height": 40.0, "experience": false, "gaurdians" : "Charles and Sylvia Gill"],
["playerName": "Kenny Stein", "height": 41.0, "experience": false, "gaurdians" : "Bill and Hillary Stein"],
["playerName": "Sammy Adams", "height": 45.0, "experience" : false, "gaurdians" : "Jeff Adams"],
["playerName": "Karl Saygan", "height": 42.0, "experience" : true, "gaurdians" : "Heather Bledsoe"],
["playerName": "Suzane Greenberg", "height": 44.0, "experience" : true, "gaurdians" : "Henrietta Dumas"],
["playerName": "Sal Dali", "height": 41.0, "experience" : false, "gaurdians" : "Gala Dali"],
["playerName": "Joe Kavalier", "height": 39.0, "experience" : false, "gaurdians" : "Sam and Elaine Kavalier"],
["playerName": "Ben Finkelstein", "height": 44.0, "experience" : false, "gaurdians" : "Aaron and Jill Finkenlstein"],
["playerName": "Diego Soto", "height": 41.0, "experience" : true, "gaurdians" : "Robin and Sarika Soto"],
["playerName": "Chloe Alaska", "height": 47.0, "experience" : false, "gaurdians" : "David and Jamie Alaska"],
["playerName": "Arnold Willis", "height": 43.0, "experience" : false, "gaurdians" : "Claire Willis"],
["playerName": "Philip Helm", "height": 44.0, "experience" : true, "gaurdians" : "Thomas Helm and Eva Jones"],
["playerName": "Les Clay", "height": 42.0, "experience" : true, "gaurdians" : "Wynonna Brown"],
["playerName": "Herschel Krustofski", "height": 45.0, "experience" : true, "gaurdians" : "Hyman and Rachel Krustofski"],
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
    if let isExperienced = player["experience"] as? Bool {
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
let dragonsPractice = ["Date": "March 17th", "Time": "1pm"]
let sharksPractice = ["Date": "March 17th", "Time": "3pm"]
let raptorsPractice = ["Date": "March 18th", "Time": "1pm"]


func welcomeLetter() {
    for player in teamDragons {
        if let guardianName = player["guardians"],
            let playersName = player["playerName"],
            let practiceTime = dragonsPractice["Time"],
            let practiceDate = dragonsPractice["Date"] {
            let letter = "Hello \(guardianName), Your child \(playersName) will be joining the Mighty Dragons! Our first team practice will be held on \(practiceDate) at \(practiceTime). We are excited to see you there!"
           letters.append(letter)
        }   else {
            return
        }
    }
    
    for player in teamSharks {
        if let guardiansName = player["guardians"],
            let playersName = player["playerName"],
            let practiceTime = sharksPractice["Time"],
            let practiceDate = sharksPractice["Date"] {
            let letter = "Hello \(guardiansName), Your child \(playersName) will be joining the Mighty Sharks! Our first team practice will be held on \(practiceDate) at \(practiceTime). We are excited to see you there!"
           letters.append(letter)
        }   else {
            return
        }
    }
    
    for player in teamRaptors {
        if let guardiansName = player["guardians"],
            let playersName = player["playerName"],
            let practcieTime = raptorsPractice["Time"],
            let practiceDate = raptorsPractice["Date"] {
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




