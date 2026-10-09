---
name: job-search-check
description: Check open roles on a company's real career page, draft honest application answers from the user's own resume, or fill (never submit) a live application form. Use when the user asks to recheck a job board, look for new openings, draft or fill out an application, or update their job tracker.
---

# Job search check

Checks real career pages instead of trusting stale search results, drafts answers that only use what the user's resume actually says, and fills forms without ever submitting them.

## First use: read the config

Look for `job-search.config.md` in the current folder. If it is missing, ask the user for these four things and offer to save them there:

- `resume`: path to their resume file (markdown or text)
- `tracker`: where they track roles (a Google Sheet link, or a markdown file path; default `./applications.md`)
- `target_titles`: the job titles they want
- `regions`: where they can work (countries, remote, visa needs)

Never guess the resume path. No resume, no drafting.

## Checking open roles

1. Open the company's real careers board. Common ones: `job-boards.greenhouse.io/<slug>`, `jobs.ashbyhq.com/<slug>`, `jobs.lever.co/<slug>`. If you have browser tools, use them. If not, read the board's public JSON (`boards-api.greenhouse.io/v1/boards/<slug>/jobs`, `api.ashbyhq.com/posting-api/job-board/<slug>`) and say you did.
2. Search snippets and aggregator sites go stale. A job found there is not real until you have opened the live posting or the board.
3. Aggregators often label a role "anywhere" when the company's own board says US only. Check the company's board for the real location rule.
4. Site search boxes sometimes do not filter. Confirm the results actually changed.
5. For each match note the exact title, location and remote rules, years asked for, and whether the posting says anything about visas or work authorization. Say "not stated" when it is not stated.
6. Record the result in the tracker.

## Drafting an application

1. Read the user's resume first. Every answer must come from it or from what the user tells you in chat.
2. Open the live posting and read the real form fields. Many forms are short structured questions, not a cover letter. Answer those exact fields.
3. If the role's hard requirements do not match the resume, say so plainly and offer to skip. Do not write a note that implies a fit that is not there.
4. For numbers you do not have (salary, start date, years of a skill), ask. If asked to suggest a salary, give a reasoned range from sources you cite and say it is your suggestion.
5. Write like a person: short sentences, no filler, no dashes used as drama.
6. Save the draft next to the tracker, with a clear list of what still needs the user's answer.

## Filling a live form

1. Fill every field you have an answer for. Leave the rest empty and list them.
2. Re-check each field after filling. Dropdowns and radio buttons can fail to register even when the click succeeds.
3. **Never click Submit or Apply.** Stop when everything is filled and tell the user it is ready for their review.
4. Mark a role "Applied" in the tracker only after the user says they submitted it.

## Gotchas

- Zoomed screenshots have scaled coordinates. Do not click from them; use element references or a normal screenshot.
- In Google Sheets, check the Name Box shows the target cell before typing. A missed click can overwrite a header.
- Sites with bot checks: do not try to get around them. Tell the user and move on.
