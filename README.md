# Rooster for Claude and Cursor

Let Claude or Cursor edit your [Rooster](https://rooster.cam) video projects on your Mac. Ask it to remove the filler words, cut a sentence, add a zoom, turn on captions, put a title over the opening, save a frame or export the video. Every edit lands at once in the open project as one undo step, so Edit > Undo in Rooster takes it back.

This plugin is a skill that teaches the AI app how to edit with Rooster. Rooster's tools come from Rooster itself, which you connect once from its Settings.

## What you need

- [Rooster](https://rooster.cam) for Apple silicon Macs on macOS 26 or later, installed in your Applications folder. Rooster is a paid app with a free trial.
- Rooster connected to your AI app: in Rooster, choose Rooster > Settings > **AI** and press **Connect** beside the app you use, or **Copy Command** for Claude Code and paste it in Terminal. This also turns on **Let AI apps use Rooster**.

## Install

In Claude Code:

```
/plugin install rooster --marketplace peterjduffy/rooster-plugin
```

Or add it from the plugin directory in Claude. In Cursor, add it from the Cursor Marketplace once it is listed there.

## What it runs

Nothing. The plugin holds one skill, `skills/edit-with-rooster/SKILL.md`, and no programs, scripts or servers. The tools it describes come from the connection you make in Rooster's Settings, which runs a part of Rooster on your Mac.

## What leaves your Mac

The plugin uploads nothing and sends nothing anywhere. Claude reads your project's words and frames through Rooster on your Mac; what Claude sends to its own service is between you and Claude. No Rooster tool takes a file path, a URL or a command. Frames and exports go to Downloads and never replace a file that is already there. To keep a project out, right-click it in Rooster's sidebar and choose **Keep Out of AI Apps**. To stop it entirely, turn off **Let AI apps use Rooster**.

## Where it works

Claude Code, Cowork and Cursor, once Rooster is connected to them from its Settings.

## Help

[Connect Claude, ChatGPT or Cursor to Rooster](https://rooster.cam/help/connect-an-ai-app) - [Support](https://rooster.cam/support) - [Privacy](https://rooster.cam/privacy)

This repository holds the plugin's files only. Rooster itself is closed source.
