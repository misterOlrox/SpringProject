create table user_subscriptions (
    channel_id bigint not null references user_table,
    subscriber_id bigint not null references user_table,
    primary key (channel_id, subscriber_id)
)