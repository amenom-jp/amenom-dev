CREATE TABLE "albums" (
    "album_id" TEXT NOT NULL,   -- id
    "name" TEXT NOT NULL,       -- アルバムの名前
    "artist_id" TEXT NOT NULL,  -- アーティストのid
    "release" INTEGER,          -- リリース年
    "label_id" INTEGER,         -- レーベルのid
    "rate" REAL,                -- レート
    "description" TEXT          -- 説明
);

CREATE TABLE "singles" (
    "single_id" TEXT NOT NULL,  -- id
    "name" TEXT NOT NULL,       -- シングルの名前
    "artist_id" TEXT NOT NULL,  -- アーティストのid
    "release" INTEGER,          -- リリース年
    "label_id" INTEGER,         -- レーベルのid
    "rate" REAL,                -- レート
    "description" TEXT          -- 説明
);

CREATE TABLE "songs" (
    "song_id" TEXT NOT NULL,    -- id
    "name" TEXT NOT NULL,       -- 曲の名前
    "artist_id" TEXT NOT NULL,  -- アーティストのid
    "album_id" TEXT,            -- アルバムのid
    "single_id" TEXT            -- シングルのid
);

CREATE TABLE "label" (
    "label_id" INTEGER NOT NULL,  -- id
    "name" TEXT NOT NULL          -- レーベルの名前
);

CREATE TABLE "new_music" (
    "new_music_id" TEXT NOT NULL,  -- id
    "item_id" TEXT                 -- アルバム，シングルのid
);