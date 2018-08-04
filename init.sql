
INSERT INTO company (id, `name`, description, created_at, updated_at) VALUES
(1, 'Marvel', '', '2018-07-28 23:57:40', '2018-07-28 23:57:40'),
(2, 'DC Comics', '', '2018-07-29 00:04:01', '2018-07-29 00:04:01');

INSERT INTO creator (id, `name`, created_at, updated_at) VALUES
(1, 'Jim Zub', '2018-07-28 23:58:19', '2018-07-28 23:58:19'),
(2, 'Terry Dodson', '2018-07-29 00:03:33', '2018-07-29 00:03:33'),
(3, 'Stjepan Sejic', '2018-07-29 00:03:33', '2018-07-29 00:03:33');

INSERT INTO product (id, product_type_id, company_id, `name`, description, details, upc, customer_cost, vendor_cost, released_at, created_at, updated_at) VALUES
(1, 1, 1, 'Hunt for Wolverine Mystery Madripoor #1 (of 4)', 'WHAT MAYHEM HAS THE RETURN OF THE MUTANT WITH METAL CLAWS CAUSED IN MADRIPOOR? When Wolverine\'s former alter-ego Patch is sighted on the streets of Madripoor, the infamous island of ill-repute, Kitty Pryde pulls together a group of Logan\'s closest friends to try and find him: Storm, Rogue, Psylocke, Domino, and Jubilee. What they discover is a twisted cabal of crime and dark mysteries that will take these X-Men from the depths of Lowtown to the stars circling overhead in the Hunt For Wolverine. Parental Advisory', NULL, '75960609003700111', 3.99, NULL, '2018-05-23 00:00:00', '2018-07-29 00:00:58', '2018-07-29 00:00:58'),
(2, 1, 2, 'Justice League Odyssey #1 (Dodson Variant)', 'Spinning out of JUSTICE LEAGUE: NO JUSTICE! When a cosmic menace threatens worlds beyond our own in the Ghost Sector, it falls to a new Justice League team to answer the call to battle! Cyborg, Starfire, Green Lantern Jessica Cruz and an out-of-his-element Azrael head to deep space inside a commandeered Brainiac Skull Ship. But as these wildcard teammates try to stop Despero from slave-trading Coluan refugees, they discover something that nothing in the universe could have prepared them for: Darkseid...who says he\'s there to help?!', NULL, '76194135726300121', 3.99, NULL, '2018-09-26 00:00:00', '2018-07-29 00:04:56', '2018-07-29 00:04:56');

INSERT INTO product_creator (product_id, creator_id) VALUES
(1, 1),
(2, 2),
(2, 3);

INSERT INTO product_type (id, `name`, description, created_at, updated_at) VALUES
(1, 'Comic', '', '2018-07-28 23:59:08', '2018-07-28 23:59:08');

INSERT INTO `user` (id, username, `password`, email, is_active) VALUES
(1, 'admin', 'nhDr7OyKlXQju+Ge/WKGrPQ9lPBSUFfpK+B1xqx/+8zLZqRNX0+5G1zBQklXUFy86lCpkAofsExlXiorUcKSNQ==', NULL, 1);
