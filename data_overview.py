import pandas as pd

players = pd.read_csv('../data/players.csv')
sessions = pd.read_csv('../data/sessions.csv')
matches = pd.read_csv('../data/matches.csv')
courts = pd.read_csv('../data/courts.csv')

def overview(df, name):
    print(f"\n{name}")
    print("Shape:", df.shape)
    print("Columns:", df.columns.tolist())
    print("Data Types:", df.dtypes)
    print("Missing Values:", df.isnull().sum())

overview(players, "PLAYERS")
overview(sessions, "SESSIONS")
overview(matches, "MATCHES")
overview(courts, "COURTS")
