# VASP Error Assistant


We have developed a model to assist users when encountering errors in VASP, a popular DFT calculator.

## Solution

1. **Data Collection**: Scraped data from VASP forum, created documents with issue title, description, answer, and link.

2. **Approach 1**: Use Retrieval-Augmented Generation (RAG) to predict top 5 similar issues.

3. **Approach 2**: Pass top 5 issues as context to a large language model (LLM) and use user's query to generate a concise output.

## Benefits

- Semantic search capabilities
- Addresses limitations of keyword search and rigid topic search
- Provides relevant and concise solutions to VASP-related issues

## Future Enhancements

- Add configuration conversions between DFT calculators
- Fine-tune LLM on VASP documentation