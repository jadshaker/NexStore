INSERT INTO
  Category (Name, Description, Parent_Category_Name)
VALUES
  ('Electronics', 'Devices and gadgets', NULL),
  ('Clothing', 'Apparel and fashion items', NULL),
  ('Furniture', 'Home and office furniture', NULL),
  ('Fashion', 'Clothing and accessories', NULL),
  ('Books', 'Printed and digital books', 'Stationery'),
  ('Groceries', 'Food and daily supplies', 'Health'),
  ('Sports', 'Sporting equipment and apparel', 'Clothing'),
  ('Beauty', 'Cosmetics and skincare products', 'Health'),
  ('Toys', 'Toys for kids and adults', 'Sports'),
  ('Automotive', 'Car parts and accessories', 'Electronics'),
  ('Jewelry', 'Watches, rings, and necklaces', 'Fashion'),
  ('Health', 'Medical supplies and equipment', 'Beauty'),
  ('Stationery', 'Office and school supplies', 'Furniture'),
  ('Pets', 'Pet food and accessories', 'Groceries'),
  ('Music', 'Instruments and music equipment', 'Art'),
  ('Art', 'Art supplies and crafts', 'Stationery');