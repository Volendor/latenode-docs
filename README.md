# Latenode Docs
<p align="center">
  <img src="./assets/banner.png" alt="Latenode Docs Banner" />
</p>
<p align="center">
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white" alt="Postman"/>
  <img src="https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white" alt="Bash"/>
  <img src="https://img.shields.io/badge/Firecrawl-EB844E?style=for-the-badge&logo=fireship&logoColor=white" alt="Firecrawl"/>
  <img src="https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white" alt="Markdown"/>
</p>
<p align="center">
  <a href="https://project-types.github.io/#toy">
  <img src="https://img.shields.io/badge/project%20type-toy-blue" alt="Toy Badge"/>
  </a>
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs-welcome"/>
</p>

## What is this
This repo contains:
 * Scraped docs for Latenode and Nodul in `.md` format
 * A Bash script to clean, rename, and format the files
 * A Postman collection for running Firecrawl

## Usage
This repository provides the latest Markdown copies of Latenode and Nodul documentation, which you can:
 * **Plug into LLM tools** like NotebookLM for research or guidance.
 * **Link in Cursor IDE** to write and test JavaScript nodes for your automation scenarios.

### Keeping docs up to date
If you need to refresh the documentation yourself, use the provided Postman collection `Firecrawl Latenode Docs.postman_collection.json`, which includes ready-to-use API requests to Firecrawl with the required parameters and post-response scripts.

### Preparing files for LLMs
After crawling, use `doc_utils.sh` to:
 * Rename files to readable titles
 * Remove empty or redundant `.md` files
 * Strip emojis and unwanted characters
```Bash
chmod +x doc_utils.sh
./doc_utils.sh
```
OR
```Bash
./doc_utils.sh --all
```
<p align="center">
  <img src="./assets/demo.gif" alt="CLI demo of doc_utils.sh" />
</p>

## Licence
This repository contains Markdown scraped copies of **Latenode** and **Nodul** documentation for personal use and reference. No license granted – please refer to original documentation at https://help.latenode.com and https://docs.nodul.ru for official terms.