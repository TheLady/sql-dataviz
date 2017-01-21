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

  INSERT INTO
    tweets (tweets_id, text, expanded_urls)
  VALUES
    (820905434043191000,'words3', 'https://twitter.com/Wikipedia/status/819300078665879552/video/1');
