SELECT 
    comments.content
    , s.sentiment
FROM 
    comments
    , aws_comprehend.detect_sentiment(comments.content, 'en') s
WHERE s.confidence >= 0.80;