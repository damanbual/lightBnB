
-- Clear existing data
DELETE FROM property_reviews;
DELETE FROM reservations;
DELETE FROM properties;
DELETE FROM users;

-- Reset sequence for primary keys to start from 1
ALTER SEQUENCE users_id_seq RESTART WITH 1;
ALTER SEQUENCE properties_id_seq RESTART WITH 1;
ALTER SEQUENCE reservations_id_seq RESTART WITH 1;
ALTER SEQUENCE property_reviews_id_seq RESTART WITH 1;

-- Insert users
INSERT INTO users (name, email, password)
VALUES
  ('Eva Stanley', 'eva.stanley@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Louisa Meyer', 'louisa.meyer@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Dominic Parks', 'dominic.parks@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- Insert properties
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
  (1, 'Speed lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 93061, 6, 4, 8, 'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', '28142', TRUE),
  (1, 'Blank corner', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 85234, 6, 6, 7, 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680', TRUE),
  (2, 'Habit mix', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 46058, 0, 5, 6, 'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', '44583', TRUE);

-- Insert reservations
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2018-09-11', '2018-09-26', 1, 3),
  ('2019-01-04', '2019-02-01', 2, 2),
  ('2023-10-01', '2023-10-14', 1, 3);

-- Insert property reviews
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (3, 1, 1, 3, 'messages'),
  (2, 2, 2, 4, 'messages'),
  (3, 1, 3, 4, 'messages');
