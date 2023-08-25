{{ config(materialized='view', indexes=[{'columns': ['item']}]) }}

SELECT
  auctions.item,
  avg(bids.amount) AS average_bid
FROM {{ source('auction','bids') }} AS bids
JOIN {{ source('auction','auctions') }} AS auctions
  ON bids.auction_id = auctions.id
WHERE bids.bid_time < auctions.end_time
GROUP BY auctions.item