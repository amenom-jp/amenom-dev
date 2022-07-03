import sqlite3
import random
import uuid


OK_Computer = [
    "Airbag",
    "Paranoid Android",
    "Subterranean Homesick Alien",
    "Exit Music (For a Film)",
    "Let Down",
    "Karma Police",
    "Fitter Happier",
    "Electioneering",
    "Climbing Up the Walls",
    "No Surprises",
    "Lucky",
    "The Tourist"
]

To_Pimp_a_Butterfly = [
    "Wesley's Theory feat. George Clinton & Thundercat",
    "For Free? (Interlude)",
    "King Kunta",
    "Institutionalized feat. Anna Wise, Bilal, Snoop Dogg",
    "These Walls feat. Thundercat, Anna Wise, Bilal",
    "u",
    "Alright",
    "For Sale? (Interlude)",
    "Momma",
    "Hood Politics",
    "How Much a Dollar Cost feat. James Fauntleroy II & Ronald Isley",
    "Complexion (A Zulu Love) feat. Rapsody",
    "The Blacker the Berry",
    "You Aint Gotta Lie (Momma Said)",
    "i",
    "Mortal Man"
]


if __name__ == '__main__':
    conn = sqlite3.connect("../../amenom.db")
    with conn:
        for song in OK_Computer:
            record_id = "3b7d0f22-baf3-56b6-a460-8a6836cd09c2"
            song_id = str(uuid.uuid5(uuid.uuid1(), ""))

            sql = """
            INSERT INTO records_songs_map("record_id", "song_id")
            VALUES (?, ?)
            """
            conn.execute(sql, [record_id, song_id])

            sql = """
            INSERT INTO songs("song_id", "name", "rate")
            VALUES (?, ?, ?)
            """
            conn.execute(sql, [song_id, song, round(random.uniform(1, 5), 1)])

        for song in To_Pimp_a_Butterfly:
            record_id = "73e0b429-6365-5059-9e48-c1cd86d3a2f6"
            song_id = str(uuid.uuid5(uuid.uuid1(), ""))

            sql = """
            INSERT INTO records_songs_map("record_id", "song_id")
            VALUES (?, ?)
            """
            conn.execute(sql, [record_id, song_id])

            sql = """
            INSERT INTO songs("song_id", "name", "rate")
            VALUES (?, ?, ?)
            """
            conn.execute(sql, [song_id, song, round(random.uniform(1, 5), 1)])

