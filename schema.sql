DROP TABLE tweets;

CREATE TABLE IF NOT EXISTS tweets (
  id SERIAL PRIMARY KEY,
  tweets_id BIGINT,
  text VARCHAR(255),
  expanded_urls VARCHAR
);

INSERT INTO
  tweets (tweets_id, text, expanded_urls)
VALUES
  (821583224790884000, 'words1', 'https://www.thenation.com/article/long-list-what-we-know-thanks-private-manning/');

INSERT INTO
  tweets (tweets_id, text)
VALUES
  (821581559354405000,'words2');

  
