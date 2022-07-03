CREATE TABLE "albums" (
    "album_id" TEXT NOT NULL,   -- id
    "name" TEXT NOT NULL,       -- アルバムの名前
    "release" INTEGER,          -- リリース年
    "rate" REAL,                -- レート
    "description" TEXT          -- 説明
);

CREATE TABLE "singles" (
    "single_id" TEXT NOT NULL,  -- id
    "name" TEXT NOT NULL,       -- シングルの名前
    "release" INTEGER,          -- リリース年
    "rate" REAL,                -- レート
    "description" TEXT          -- 説明
);

CREATE TABLE "records_artists_map" (
    "record_id" TEXT NOT NULL,  -- アルバム，シングルのid
    "artist_id" TEXT NOT NULL   -- アーティストのid
);

CREATE TABLE "records_labels_map" (
    "record_id" TEXT NOT NULL,  -- アルバム，シングルのid
    "label_id" INTEGER NOT NULL    -- レーベルのid
);

CREATE TABLE "songs" (
    "song_id" TEXT NOT NULL,    -- id
    "name" TEXT NOT NULL,       -- 曲の名前
    "rate" REAL                 -- レート
);

CREATE TABLE "records_songs_map" (
    "record_id" TEXT NOT NULL,  -- アルバム，シングルのid
    "song_id" TEXT NOT NULL     -- 曲のid
);

CREATE TABLE "new_music" (
    "new_music_id" TEXT NOT NULL,  -- id
    "record_id" TEXT               -- アルバム，シングルのid
);