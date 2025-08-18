import os

# 📦 Function to display the Tic-Tac-Toe board
def print_board(board):
    os.system('cls' if os.name == 'nt' else 'clear')  # Clear terminal screen
    print(f" {board[1]} || {board[2]} || {board[3]}")
    print('-------------')
    print(f" {board[4]} || {board[5]} || {board[6]}")
    print('-------------')
    print(f" {board[7]} || {board[8]} || {board[9]}")

# 🎮 Get a valid move from the current player
def get_input(player):
    while True:
        try:
            move = int(input(f"\nPlayer {player + 1}, select a position (1-9): "))
            if move in range(1, 10):
                return move
            else:
                print("Invalid range. Choose a number from 1 to 9.")
        except ValueError:
            print("Invalid input. Enter a number.")

# 🏆 Check for win conditions
def win_check(board):
    def criteria(t):
        return (
            t[1]==1 and t[2]==1 and t[3]==1 or
            t[4]==1 and t[5]==1 and t[6]==1 or
            t[7]==1 and t[8]==1 and t[9]==1 or
            t[1]==1 and t[5]==1 and t[9]==1 or
            t[3]==1 and t[5]==1 and t[7]==1 or
            t[1]==1 and t[4]==1 and t[7]==1 or
            t[2]==1 and t[5]==1 and t[8]==1 or
            t[3]==1 and t[6]==1 and t[9]==1
        )

    current_player = board[0]  # 0 for Player 1, 1 for Player 2
    t = board.copy()

    for i in range(1, 10):
        if (current_player == 0 and t[i] == "X") or (current_player == 1 and t[i] == "O"):
            t[i] = 1

    if criteria(t):
        print(f"\nPlayer {current_player + 1} Wins!\n")
        board[0] = "done"
    return board


# 🤝 Check if the game ends in a tie
def tie_check(board):
    if " " not in board[1:]:
        board[0] = "done"
        print("\nGame Tie!\n")
    return board

# 🧩 Make a move and switch turns
def play(board):
    move = get_input(board[0])
    symbol = "X" if board[0] == 0 else "O"

    if board[move] == " ":
        board[move] = symbol
        board[0] = 1 if board[0] == 0 else 0  # Switch turn
    else:
        print("Wrong Selection, spot already taken.")
        # Don't switch turn

    print_board(board)


# 🚀 Start or replay the game
def start_game():
    while True:
        board = [" "] * 10
        board[0] = 0  # Start with Player 1
        print_board(board)

        while board[0] != "done":
            play(board)
            tie_check(board)
            win_check(board)

        # Ask the user if they want to play again
        replay = input("Do you want to play again? (Y/N): ").strip().lower()
        if replay != 'y':
            print("Thanks for playing! 🎉")
            break

# 🕹️ Launch the game!
start_game()
