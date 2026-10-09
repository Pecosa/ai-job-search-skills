# AI job search skills

Two small Claude Code skills I use when I'm job hunting. One checks real job boards and helps me draft honest applications. The other turns meeting notes into prep and status drafts. Both stop before anything gets submitted or sent.

## Install

As a plugin:

```
/plugin marketplace add Pecosa/ai-job-search-skills
/plugin install ai-job-search-skills@pecosa
```

Or copy `skills/job-search-check` and `skills/sync-prep` into `~/.claude/skills/`.

## job-search-check

Ask it to recheck a company's open roles, draft answers for an application, or fill a form. The first time, it asks for your resume path, where you keep your tracker, the titles you want and where you can work, and can save that in `job-search.config.md`.

What it will and won't do:

- It opens the company's real board. Search results and job aggregators go stale and are often wrong about location.
- It only writes answers the resume supports. If a role doesn't fit, it says so.
- It asks you for numbers it doesn't have, like salary and start date.
- It fills forms but never clicks Submit. You do that.

## sync-prep

Paste your notes from a meeting and ask for a prep, a recap, or a status update. It writes a draft to `sync-drafts.md`, newest on top, and lists any new action items. It never sends anything.

## Why I made these

I used the job-search one on my own search, including a real application where it filled the form and stopped at Submit so I could read everything first. The meeting one comes from a version I built at work for a team of 10 designers and their manager. Each person had a 30 minute 1:1, and getting ready for each one took almost 30 minutes. With one request to Claude it took about 2. This repo has a generic version that works from notes you paste, with no work tools or data in it.

## What I learned

Job boards that collect listings told me some roles were open worldwide. When I checked the company's own board, they were US only. So the skill now checks the source before it counts anything as real.

The most useful rule was the simplest: the AI fills the form and stops before Submit. I read every field myself, and dropdowns in particular can look filled when they aren't.

I also learned to make the AI verify before it batch-edits. One spreadsheet edit once overwrote my header row because a click missed its cell, so the skill now checks the target cell first.

While building this repo, the first version of my own safety script held my email, phone number and a private link inside it. An automated check caught it before I pushed anything. Now those patterns live in a private file outside the repo.

## License

MIT
