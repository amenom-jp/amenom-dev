CREATE TABLE "reviews" (
    "review_id" TEXT NOT NULL,  -- id
    "user_id" TEXT NOT NULL,    -- ユーザーのid
    "item_id" TEXT NOT NULL,    -- アルバム，シングルのid
    "body" TEXT,                -- 本文
    "favorites" INTEGER         -- いいねの数
);

CREATE TABLE "reply_review_map" (
    "entry_review_id" TEXT NOT NULL,  -- 紐付けたいレビューのid
    "reply_review_id" TEXT            -- リプライするレビューのid
);