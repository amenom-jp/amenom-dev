CREATE TABLE "genres" (
    "genre_id" INTEGER NOT NULL,  -- id
    "name" TEXT NOT NULL          -- ジャンルの名前
);

CREATE TABLE "genre_map" (
    "entry_item_id" TEXT NOT NULL,  -- 紐付けたい要素のid
    "genre_id" INTEGER              -- ジャンルのid
);