CREATE OR REPLACE VIEW "camp_party" AS
SELECT "CAMPAIGN".campaign_name, "PARTY".party_name, "PARTY".size, "PARTY".wealth, "PARTY".notes
FROM "CAMPAIGN"
INNER JOIN "PARTY" on "PARTY".campaign_id = "CAMPAIGN".campaign_id;
