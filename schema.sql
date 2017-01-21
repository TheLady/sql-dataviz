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
  (821583224790884000, 'RT @KatrinaNation: A Long List of What We Know Thanks to Private Manning via @thenation https://t.co/t9xwItfuIr
', 'https://www.thenation.com/article/long-list-what-we-know-thanks-private-manning/');

INSERT INTO
  tweets (tweets_id, text)
VALUES
  (821581559354405000,'I am glad POTUS had the wisdom and compassion to free Chelsea Manning, but I just found out bc I have obviously fallen off the face of the Ea..');

  INSERT INTO
    tweets (tweets_id, text, expanded_urls)
  VALUES
    (820905434043191000, 'RT @ncoghlan_dev: This. As @lxt put it: "The primary work product of senior engineers is more senior engineers" (with leading by example be…', 'https://twitter.com/Wikipedia/status/819300078665879552/video/1');

  INSERT INTO
    tweets (tweets_id, text)
  VALUES (805635451461608000, 'Thankful for the unicorns who spent some time at the coffee shop today. It did not occur to me to acknowledge at the time but I noticed.');

  INSERT INTO
    tweets (tweets_id, text)
  VALUES (805635451461608000, 'Thankful for the unicorns who spent some time at the coffee shop today. It did not occur to me to acknowledge at the time but I noticed.');


  




