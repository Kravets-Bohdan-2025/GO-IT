SELECT
    ad_date,
    campaign_id,
    SUM(spend) AS total_spend,
    count(impressions) AS total_impressions,
    count(clicks) AS total_clicks,
    SUM(value) AS total_value_conversions
FROM
    facebook_ads_basic_daily
GROUP BY
    ad_date, campaign_id
ORDER BY
    ad_date DESC, campaign_id;