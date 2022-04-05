CREATE OR REPLACE VIEW "camp_quests" AS
SELECT "CAMPAIGN".campaign_name, "QUESTS".name, "QUESTS".difficulty, "QUESTS".is_complete
FROM "CAMPAIGN"
INNER JOIN "QUESTS" on "QUESTS".campaign_id = "CAMPAIGN".campaign_id;
