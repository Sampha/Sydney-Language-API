# README

This is the readme for the free & open Sydney Language API

Endpoints available:
/dharug_words - Will output an array of every word in the database in the following format {
  dharug_word: string
  english_word: string
  source: array of strings
}

/dharug_words/show?dharug=()?english=() - Takes dharug or english paramaters and outputs array of all words matching either, will only output one or the other, if dharug parameter is parsed in, will always use it first
uses the following format {
  dharug_word: string
  english_word: string
  source: array of strings
}

*To be developed*
- Alternate Vocabulary relationship
- Presenting alternate vocabulary in words Endpoints
- Sources endpoint
- Words by Source endpoint
- Sound system back-end
- Sounds system endpoint
- Grammar rules back-end
- Grammar rules endpoint 
