---
name: sync-prep
description: Prepare for or follow up on a recurring meeting from notes the user pastes. Drafts a prep note, a recap, or a status update. Use when the user asks to prep for a sync, recap a meeting, or draft a status update. Draft only, never sends or posts anything.
---

# Sync prep

Turns meeting notes into a draft the user reviews and sends themselves. This skill does not send, post or schedule anything.

## When to use

- "Prep me for the design sync"
- "Recap the last planning meeting"
- "Draft a status update for project X" (only when grounded in real notes)

## Steps

1. **Get the notes.** Ask the user to paste what they have: the meeting name, the notes or summary, pending decisions, blockers, and who was there if it matters. If they paste nothing, ask for notes and stop. Write nothing.
2. **Cross-check, if they have a journal.** On first use ask once whether they keep a project journal or notes file and where. If yes, read it and look for anything that contradicts or adds to the new notes, and for earlier action items still open. If no, skip this step.
3. **Draft, do not send.** Save the draft to `./sync-drafts.md` (or the path the user chose). Put the newest entry on top and never overwrite older entries. Plain prose, because it will be pasted into chat or email.
   - For a **prep** request: what to raise, what to follow up on, what to watch for.
   - For a **recap or status** request: the summary itself, in the user's voice.
4. **List new action items** at the end of the draft and ask whether to track them anywhere.

## Entry format

```
[YYYY-MM-DD] Meeting name
Draft text here.

Action items surfaced:
- ...

---
```

## Rules

- Only use facts from the notes the user gave you or their journal. Do not invent attendees, decisions or numbers.
- No meeting platform integration. All input comes from the user.
- The user reads and confirms the draft before they paste it anywhere.
