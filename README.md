# Rooster for Claude and Cursor

Let Claude or Cursor edit your [Rooster](https://rooster.cam) video projects on your Mac. Ask it to remove the filler words, cut a sentence, add a zoom, turn on captions, put a title over the opening, save a frame or export the video. Every edit lands at once in the open project as one undo step, so Edit > Undo in Rooster takes it back.

## What you need

- [Rooster](https://rooster.cam) for Apple silicon Macs on macOS 26 or later, installed in your Applications folder. Rooster is a paid app with a free trial.
- In Rooster, Settings > AI Apps > **Let AI apps use Rooster** turned on.

If you already connected Claude from Rooster's Settings, you don't need this plugin: it adds the same tools, plus a skill that tells Claude how to use them.

## Install

In Claude Code:

```
/plugin install rooster --marketplace peterjduffy/rooster-plugin
```

Or add it from the plugin directory in Claude. In Cursor, add it from the Cursor Marketplace once it is listed there.

## What it runs

The plugin starts one program that is part of Rooster, `Rooster.app/Contents/Helpers/rooster-mcp`: a local MCP server that talks to the running Rooster app on your Mac. `scripts/start-rooster.sh` looks for Rooster in `/Applications`, then in `~/Applications`, and starts the server from there. Nothing else runs, and nothing is downloaded.

## What leaves your Mac

The plugin uploads nothing and sends nothing anywhere. Claude reads your project's words and frames through Rooster on your Mac; what Claude sends to its own service is between you and Claude. No tool takes a file path, a URL or a command. Frames and exports go to Downloads and never replace a file that is already there. To keep a project out, right-click it in Rooster's sidebar and choose **Keep Out of AI Apps**. To stop it entirely, turn off **Let AI apps use Rooster**.

## Where it works

Claude Code, Cowork running on your Mac, and Cursor. Claude chat does not run local servers: use **Connect** in Rooster's Settings > AI Apps for the Claude desktop app.

## Help

[Connect Claude, ChatGPT or Cursor to Rooster](https://rooster.cam/help/connect-an-ai-app) - [Support](https://rooster.cam/support) - [Privacy](https://rooster.cam/privacy)

This repository holds the plugin's files only. Rooster itself is closed source.
