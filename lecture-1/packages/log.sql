-- *** The Lost Letter ***
SELECT address, type FROM addresses WHERE id = (
    SELECT address_id FROM scans WHERE package_id = (
        SELECT id FROM packages WHERE from_address_id IN(
            SELECT id FROM addresses WHERE address = '900 Somerville Avenue'
        ) AND contents LIKE 'congratulatory letter'
    ) AND action = 'Drop'
);


-- *** The Devious Delivery ***
SELECT contents, type FROM packages
JOIN scans ON packages.id = scans.package_id
JOIN addresses ON addresses.id = scans.address_id
WHERE packages.from_address_id IS NULL AND scans.action = 'Drop';


-- *** The Forgotten Gift ***
SELECT contents, name FROM packages
JOIN scans ON packages.id = scans.package_id
JOIN drivers ON drivers.id = scans.driver_id
WHERE packages.from_address_id = (
    SELECT id FROM addresses WHERE address = '109 Tileston Street'
) AND scans.action = "Pick"
ORDER BY timestamp DESC LIMIT 1;
