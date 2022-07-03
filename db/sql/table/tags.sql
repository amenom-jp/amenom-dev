CREATE TABLE "tags" (
    "tag_id" INTEGER NOT NULL,  -- id
    "name" TEXT NOT NULL        -- タグの名前
);

CREATE TABLE "tag_map" (
    "entry_item_id" TEXT NOT NULL,  -- 紐付けたい要素のid
    "tag_id" INTEGER                -- タグのid
);