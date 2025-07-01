![Diagramme sans nom drawio](https://github.com/user-attachments/assets/c1bb2e1f-0c6b-438a-9f36-2281a4288527)## Database Normalization Review and Explanation

## Overview
The goal is to ensure the database schema adheres to Third Normal Form (3NF), which requires:

First Normal Form (1NF): Each column contains atomic values, and each record is unique.

Second Normal Form (2NF): It is in 1NF and all non-key attributes are fully functionally dependent on the primary key.

Third Normal Form (3NF): It is in 2NF and all the attributes are not only functionally dependent on the primary key but also free of transitive dependencies.

## Schema Review
User Table
Primary key: user_id

Attributes are atomic and directly related to the user.

No repeating groups or arrays.

No partial or transitive dependencies.

Conclusion: User table is in 3NF.

Property Table
Primary key: property_id

host_id is a foreign key to User.

Attributes describe a property.

No redundant or derived data stored here.

No transitive dependencies (e.g., no host name stored redundantly here).

Conclusion: Property table is in 3NF.

## Booking Table
Primary key: booking_id

Foreign keys to property_id and user_id.

Other attributes describe booking details.

All attributes depend on the booking uniquely.

No redundant attributes stored here.

Conclusion: Booking table is in 3NF.

Payment Table
Primary key: payment_id

Foreign key to booking_id.

Payment attributes are directly related to payment only.

No redundancy or transitive dependencies.

Conclusion: Payment table is in 3NF.

Review Table
Primary key: review_id

Foreign keys to property_id and user_id.

Rating and comment are directly related to the review.

No redundant data stored.

Conclusion: Review table is in 3NF.

Message Table
Primary key: message_id

Foreign keys sender_id and recipient_id referencing User.

Message text and timestamp directly related.

No redundancy or transitive dependencies.

Conclusion: Message table is in 3NF.

## Summary of Normalization Steps
All tables have a clearly defined primary key.

Each non-key attribute depends fully on the primary key.

No partial dependencies exist because all tables have simple, single-attribute primary keys.

No transitive dependencies are present (no attribute depends on another non-key attribute).

Foreign keys link related tables without duplicating data.

ENUM types are used to enforce data consistency and integrity on certain fields.
Timestamp fields track creation and updates without violating normalization.

## Final Note
The schema already satisfies 3NF based on the provided design. No modifications are necessary for normalization purposes. This design avoids data redundancy, ensures referential integrity, and supports efficient queries.





