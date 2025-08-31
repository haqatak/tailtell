-- This is a seed script for the Volunteer Call Manager application.
--
-- Before you run this script, you need to create the demo users in the
-- TrailBase admin UI and get their IDs. Then, replace the placeholder
-- user IDs in this script with the real IDs.
--
-- Placeholder IDs:
--   - ADMIN_USER_ID
--   - MANAGER_USER_ID
--   - VOLUNTEER_USER_ID

INSERT INTO contacts (name, phone, email, notes, assignedTo, tags, status, createdAt) VALUES
('Alice Johnson', '555-0101', 'alice@email.com', 'Interested in weekend volunteering', 'VOLUNTEER_USER_ID', '["interested", "weekend"]', 'active', strftime('%s', 'now')),
('Bob Smith', '555-0102', 'bob@email.com', 'Available for morning shifts', 'VOLUNTEER_USER_ID', '["morning", "high-priority"]', 'active', strftime('%s', 'now')),
('Carol White', '555-0103', '', 'Prefers email communication', NULL, '["callback"]', 'active', strftime('%s', 'now'));

INSERT INTO calls (contactId, userId, status, duration, notes, callDate, followUpDate) VALUES
(1, 'VOLUNTEER_USER_ID', 'completed', 5, 'Great conversation, very enthusiastic about helping', strftime('%s', 'now'), NULL),
(2, 'VOLUNTEER_USER_ID', 'follow-up', 3, 'Left voicemail, will try again tomorrow', strftime('%s', 'now', '-1 day'), strftime('%s', 'now', '+1 day'));

INSERT INTO scripts (id, title, content) VALUES
('intro', 'Introduction Script', 'Hello, is this [Contact Name]?\n\nHi [Contact Name], my name is [Your Name] and I''m calling from [Organization Name]. We got your contact information from [Source] indicating you might be interested in volunteering with us.\n\nDo you have a few minutes to talk about volunteer opportunities?\n\n[If YES]\nGreat! We''re currently looking for volunteers to help with [specific activities]. The time commitment is typically [hours per week/month], and we''re very flexible with scheduling.\n\nWhat kind of volunteer work interests you most?\n\n[Listen and respond to their interests]\n\n[If NO]\nNo problem! Would there be a better time I could call you back? Or if you prefer, I can send you an email with more information.'),
('followup', 'Follow-up Script', 'Hi [Contact Name], this is [Your Name] from [Organization Name]. We spoke [timeframe] about volunteer opportunities.\n\nI wanted to follow up and see if you had any questions or if you''re ready to get started with volunteering?\n\n[Listen to response]\n\n[If interested]\nWonderful! The next step would be to schedule an orientation session. We have sessions on [days/times]. Which would work best for you?\n\n[If unsure]\nThat''s completely understandable. What questions or concerns can I address for you?');
