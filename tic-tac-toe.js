
//need to determine winner
//need computer to make the next best move
//best initial move is odd numbers 1,3,7,9
$(document).ready(function() {
      var playerOne = 'X';
      var playerTwo = 'O';
      var plays = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      var played = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'];

      function newGame(){
        $('.field').html('');
        plays = [1, 2, 3, 4, 5, 6, 7, 8, 9];
        //computer plays first
        var move = 7;
        $('#' + move).html('<h1>' + playerOne + '</h1>');
        plays.splice(move - 1, 1);
        played = ['a', 'b', 'c', 'd', 'e', 'f', playerOne, 'h', 'i'];
      }

      function checkWin(played) {
        //check horizontal
        for (l = 0; l < played.length; l = l + 3) {
          if (played[l] === played[l + 1] && played[l] === played[l + 2]) {
            return true;
            newGame();
          }
        }
        //check vertical win
        for (v = 0; v < 3; v++) {
          if (played[v] === played[v + 3] && played[v] === played[v + 6]) {
            return true
            newGame();
          }
        }
        //check vertical win
        if (played[0] === played[4] && played[0] === played[8]) {
          return true;
          newGame();
        } else if (played[2] === played[4] && played[2] === played[6]) {
          return true;
          newGame();
        } else {
        }
      }

// Begin new game on document ready
      newGame();

//clicky clicky
      $('.field').click(function() {
        var id = $(this).attr('id');
        var i = plays.indexOf(parseInt(id));

        //board reset if all tiles have been played
        if (plays.length === 0) {
          newGame();
        }

        //check for valid play
        if (i != -1) {
          if(!checkWin(played)) {
            $('#' + id).html('<h1>' + playerTwo + '</h1>');
            plays.splice(i, 1);
            played[id - 1] = playerTwo;
            console.log(played);
            console.log(checkWin(played));

            //computer plays random open square
            var cRand = plays[Math.floor(Math.random() * plays.length)];
            var k = plays.indexOf(cRand);

            $('#' + cRand).html('<h1>' + playerOne + '</h1>');
            plays.splice(k, 1);
            played[cRand - 1] = playerOne;
            console.log(played);
            console.log(checkWin(played));
            $("#plays").html(plays);
          } else {
            newGame();
          }
        }
        $("#plays").html(plays);
      })
    });
