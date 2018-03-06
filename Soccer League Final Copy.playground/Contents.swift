
// Part 1

let playerName : [Int: String] = [
    1: "Joe Smith",
    2: "Jill Tanner",
    3: "Bill Bon",
    4: "Eva Gordon",
    5: "Matt Gill",
    6: "Kimmy Stein",
    7: "Sammy Adams",
    8: "KArl Saygan",
    9: "Suzane Greenberg",
    10: "Sal Dali",
    11: "Joe Kavalier",
    12: "Ben Finkelstein",
    13: "Diego Soto",
    14: "Chloe Alaska",
    15: "Arnold Willis",
    16: "Phillip Helm",
    17: "Les Clay",
    18: "Herschel Krustofski"
]

let playerHeight : [Int: Int] = [
    1:  42,
    2:  36,
    3:  43,
    4:  45,
    5:  40,
    6:  41,
    7:  45,
    8:  42,
    9:  44,
    10: 41,
    11: 39,
    12: 44,
    13: 41,
    14: 47,
    15: 43,
    16: 44,
    17: 42,
    18: 45
]

//true for YES, false for NO
let playerSoccerExp : [Int: Bool] = [
    1: true,
    2: true,
    3: true,
    4: false,
    5: false,
    6: false,
    7: false,
    8: true,
    9: true,
    10: false,
    11: false,
    12: false,
    13: true,
    14: false,
    15: false,
    16: true,
    17: true,
    18: true
]


let playerGuardianName : [Int: String] = [
    1: "Jim and Jan Smith",
    2: "Clara Tanner",
    3: "Sara and Jenny Bon",
    4: "Wendy and Mike Gordon",
    5: "Charles and Sylvia Gill",
    6: "Bill and Hillary Stein",
    7: "Jeff Adams",
    8: "Heather Bledsoe",
    9: "Henrietta Dumas",
    10: "Gala Dali",
    11: "Sam and Elaine Kavalier",
    12: "Aaron and Jill Finkelstein",
    13: "Robin and Sarika Soto",
    14: "David and Jamie Alaska",
    15: "Claire Willis",
    16: "Thomas Helm and Eva Jones",
    17: "Wynonna Brown",
    18: "Hyman and Rachel Krustofski"
]

var experiencedPlayers: [Int] = []
var nonExperiencedPlayers: [Int] = []


// Part 2


var teamDragons : [Int] = []
var teamSharks : [Int] = []
var teamRaptors : [Int] = []

let totalPlayerInTeam = playerSoccerExp.count/3


var numExpPlayers = 0

for (_,experience) in playerSoccerExp {
    if(experience == true){
        +numExpPlayers
    }
}


let expPlayersPerTeam = numExpPlayers/3



//updates array of experienced players and non experienced
for(index,experience) in playerSoccerExp{
    if experience == true {
        //experiencedPlayers[index] = playerName[index]
        experiencedPlayers.append(index)
    } else{
        //nonExperiencedPlayers[index] = playerName[index]
        nonExperiencedPlayers.append(index)
    }
    
}



//add the experiencedPlayers, according to the number of expPlayersPerTeam into teamDragons
for i in 0..<expPlayersPerTeam { //0 to 2 in this case. 0,1,2 so loops 3 times
    
    teamDragons.append(experiencedPlayers[i])//teamDragons[0] = 1 (player index is the value)
    teamSharks.append(experiencedPlayers[i])//teamSharks[0] = 2
    teamRaptors.append(experiencedPlayers[i])//teamRaptors[0] = 3
}

//add the remaining nonExperiencedPlayers into the teams
for i1 in expPlayersPerTeam..<totalPlayerInTeam{ //3 to 6. 3,4,5 so loops 3 times
    teamDragons.append(nonExperiencedPlayers[i1]) //teamDragons[3] = 4
    teamSharks.append(nonExperiencedPlayers[i1]) //teamSharks[3] = 5
    teamRaptors.append(nonExperiencedPlayers[i1]) //teamRaptors[3] = 6
}





// Part 3


for playerIndex in teamDragons{
    print("To: \(String(describing: playerGuardianName[playerIndex])), Your child \(playerName[playerIndex]) from Team Dragon will attend their first team practice on March 17, 1pm")
}


for playerIndex in teamSharks{
    print("To: \(String(describing: playerGuardianName[playerIndex])), Your child \(playerName[playerIndex]) from Team Sharks will attend their first team practice on March 17, 3pm")
}

for playerIndex in teamRaptors{
    print("To: \(playerGuardianName[playerIndex] ?? <#default value#>), Your child \(String(describing: playerName[playerIndex])) from Team Raptors will attend their first team practice on March 18, 1pm")
}

