{{ config(materialized='materializedview', indexes=[{'columns': ['item']}]) }}

SELECT
  auctions.item,
  count(bids.id) AS number_of_bids
FROM {{ source('auction','bids') }} AS bids
JOIN {{ source('auction','auctions') }} AS auctions
  ON bids.auction_id = auctions.id
WHERE bids.bid_time < auctions.end_time
GROUP BY auctions.item