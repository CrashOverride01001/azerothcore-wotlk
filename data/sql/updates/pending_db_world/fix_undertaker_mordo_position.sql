-- Fix: Move Undertaker Mordo to correct position inside Shadow Grave (Deathknell)
-- NPC Entry: 1568 (Undertaker Mordo)
-- Issue: In WotLK 3.3.5 this NPC was moved inside the Shadow Grave crypt,
--        but the database has incorrect coordinates placing him outside.
-- Reference: https://github.com/azerothcore/azerothcore-wotlk/issues/4512

UPDATE `creature`
SET
    `position_x` = 1671.25,
    `position_y` = 1678.31,
    `position_z` = 120.72,
    `orientation` = 0.051
WHERE
    `id1` = 1568
    AND `map` = 0;
