---
name: edit-with-rooster
description: Edit a video in the Rooster app on this Mac - tidy a recording, cut words, add zooms, captions, titles or an intro, save a frame or export. Use when the user mentions Rooster or a Rooster project, or asks to edit a recording they made in Rooster.
---

# Edit with Rooster

Rooster is a transcript-first video editor for Mac. Its tools work on the user's Rooster projects through the open app. Every edit lands at once in Rooster as one undo step, named for what it did, so the user can take it back with Edit > Undo.

## Find the project and read it first

1. `list_projects` shows the projects and marks the one open in Rooster. Leave `project` out to use the open one, or pass an id or title from this list.
2. Read before you edit: `get_project` for its scenes and length, `get_transcript` or `search_transcript` for the words, `list_zooms` and `list_graphics` for what is already there.
3. Times are seconds on the edited video. Quote words exactly as the transcript gives them.

## Make one edit at a time

- Tidy a recording: `remove_filler_words`, `shorten_pauses`, `trim_dead_air`, `remove_retakes`.
- Cut words: `cut_quote` with the exact words.
- Zooms: `add_zoom`, then `reaim_zoom`, `resize_zoom`, `retime_zoom` or `remove_zoom`.
- Words on screen: `add_intro`, `add_title_card`, `add_lower_third`, `add_outro`, `edit_graphic`, `remove_graphic`.
- Captions: `set_captions`, `move_captions`, `resize_captions`.
- Scenes and layout: `split_scene`, `set_layout`, `place_picture`.
- Sound: `set_studio_voice`.

The tools that take something away - the tidy-up tools, `cut_quote`, `remove_zoom` and `remove_graphic` - are marked destructive. Say what will go before you run one, unless the user already asked for exactly that. After an edit, tell the user what changed and that Edit > Undo takes it back.

## Outputs

- `save_frame` writes a still to Downloads.
- `export` starts an MP4 in Downloads; check it with `export_status`.
- Neither ever replaces a file that is already there.

## If a tool says Rooster is off or missing

- Rooster must be installed in the Applications folder.
- In Rooster, Settings > AI Apps > "Let AI apps use Rooster" must be on. With it off, the tools say so: ask the user to turn it on.
- If Rooster is closed and the switch is on, the first call opens it.
- A project the user marked "Keep Out of AI Apps" cannot be seen or changed.
