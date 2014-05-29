// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [by myself, with:]

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


for (var voter in votes) {
  var voter_choices = votes[voter];
  for (var position in voter_choices) {
     if (voteCount[position].hasOwnProperty(voter_choices[position]))
      voteCount[position][voter_choices[position]] += 1;
     else 
      voteCount[position][voter_choices[position]] = 1;

  }

}




  // var president_vote = voter_names.president;
  // var vicePresident_vote = voter_names.vicePresident;
  // var secretary_vote = voter_names.vicePresident;
  // var treasurer_vote = voter_names.treasurer;
  // voteCount.president = president_vote;
  // voteCount.vicePresident = vicePresident_vote;
  // voteCount.secretary = secretary_vote;
  // voteCount.treasurer =  treasurer_vote;
  //  for (var key in voteCount) {

  //   if voteCount[key] 

  //  }



  //console.log(voteCount.president);
 

// var count = 1;
// for (var voter in votes) {
//   var voter_names = votes[voter_names];
//     for (var position in voter_names) {
//        voteCount.president = position.president;
//        if position.president in voteCount.president
//           then  voteCount.president = {position.president: count += 1};
//        else voteCount.president = {position.president: count};

//     }
// } 


// for (var voter in votes) {
//   var voter_names = votes[voter_names];
//   for (var position in voter_names) {
//     voteCount.president.push(voter_names.president)
//           if voter_names.president in voteCount.president 
//             then votecount.president.voter_names.president += 1
//           else votecount.president.voter_names.president = 1


//      // "name" = "voter_names.position";
//      // if ("name" in voteCount.president)
//      //    then count += 1 
// }
// voteCount.president = {"name":president_count}
// // 
// for (var voter in votes) {
//   var voter_names = votes[voter_names];
//   for (var position in voter_names) {
//     if voter_names.president === 'undefined' {
//       voteCount
//     }
    
//   }

// }

// for(var i = 0; i < array.length; i++) {
//         solo[array[i]] = (solo[array[i]] || 0) + 1;
//     } 



// voteCount.president = function(vote_name) {
//    for (var voter in votes) {
//      var voter_names = votes[voter_names];
//   for (var position in voter_names) {
//     if voteCount.president[vote_name] 
    
//   }

// }




/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution







// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection






// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)