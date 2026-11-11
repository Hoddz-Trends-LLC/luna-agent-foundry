<p align="center">
  <img src="assets/logo.png" alt="Luna Agent Foundry" width="240">
</p>

<h1 align="center">Luna Agent Foundry</h1>

<p align="center">
  <strong>Build your AI company with one command.</strong>
</p>

<p align="center">
  <a href="https://github.com/Hoddz-Trends-LLC/luna-agent-foundry/actions/workflows/validate.yml"><img src="https://github.com/Hoddz-Trends-LLC/luna-agent-foundry/actions/workflows/validate.yml/badge.svg" alt="Validate catalog"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/version-1.0.0-informational.svg" alt="Version 1.0.0">
</p>

Luna Agent Foundry is an open-source [Claude Code](https://code.claude.com/docs/en/quickstart)
plugin that gives you a ready-made team of AI specialists:
**100 agents, 310 skills and 115 slash commands** organized into ten departments:
leadership, product, engineering, data, security, marketing, sales, support,
operations and administration.

Ask for a plan, a review or a draft in one command, and the right specialist
workflow picks it up: intake, build, then review.

## Requirements

- [Claude Code](https://code.claude.com/docs/en/quickstart) installed, with `claude` on your PATH.
  Claude Code requires a paid Claude plan (Pro, Max, Team or Enterprise) or a Claude Console account.
- Claude Code v2.1.292 or later for the one-line install below. On an older version, run
  `claude update` or use the two-step install.

The plugin itself is free. Running its agents uses your own Claude Code access and any
plan or API usage that comes with it.

## Install

Run this in your terminal:

```bash
claude plugin install luna-agent-foundry --marketplace Hoddz-Trends-LLC/luna-agent-foundry --scope user
```

Then start a new Claude Code session.

<details>
<summary>Two-step install, or install from inside a session</summary>

From your terminal:

```bash
claude plugin marketplace add Hoddz-Trends-LLC/luna-agent-foundry
claude plugin install luna-agent-foundry@luna-foundry --scope user
```

Or from inside a Claude Code session:

```text
/plugin marketplace add Hoddz-Trends-LLC/luna-agent-foundry
/plugin install luna-agent-foundry@luna-foundry
```

</details>

## Quick start

Type these **inside Claude Code** and replace the example context with your own:

```text
/luna-agent-foundry:launch-company Plan a 2-week pilot for a small B2B software company.
/luna-agent-foundry:plan-engineering Scope the technical delivery plan for our MVP.
/luna-agent-foundry:api-design Design a paginated orders endpoint using docs/requirements.md.
/luna-agent-foundry:customer-escalation Coordinate a response to a delayed enterprise rollout.
```

You can also ask Claude to use a specific agent by name, for example
`luna-agent-foundry:software-architect`.

## What's inside

| Part | Count | What it does |
|---|---|---|
| **Agents** | 100 | Ten specialists in each of the ten departments. Each has a defined role, inputs, checks and hand-off. |
| **Specialist commands** | 100 | One slash command per specialist workflow, such as `/luna-agent-foundry:api-design`. |
| **Department and cross-functional commands** | 15 | Ten `plan-<department>` commands, plus `launch-company`, `launch-product`, `quarterly-review`, `customer-escalation` and `handoff`. |
| **Skills** | 310 | Three per specialist workflow (intake, build and review), plus ten department playbooks that cover sequencing and hand-offs. |

| Department | Agents | Department | Agents |
|---|---|---|---|
| Leadership | 10 | Marketing | 10 |
| Product | 10 | Sales | 10 |
| Engineering | 10 | Support | 10 |
| Data | 10 | Operations | 10 |
| Security | 10 | Administration | 10 |

See the [complete catalog](CATALOG.md) for every agent, command and skill.

## Safety and limits

- **Read-only agents.** Every agent is limited to the `Read`, `Glob` and `Grep` tools.
- **Human approval stays in charge.** Commands and skills guide the main Claude session and
  follow its tool permissions. Sending messages, deploying changes, spending money and changing
  access are left as human approval points.
- **Nothing runs in the background.** The plugin contains no hooks, no external service connectors
  and no background worker. `install.sh` is an optional helper that only runs `claude plugin install`.
- **Treat outputs as drafts.** Agents label assumptions and unverified claims, but you should
  review every deliverable. Regulated decisions (legal, financial, medical, compliance) need review
  by a qualified person.

## Try it from a local copy

To test or modify the plugin without installing it:

```bash
git clone https://github.com/Hoddz-Trends-LLC/luna-agent-foundry.git
cd luna-agent-foundry
claude --plugin-dir .
```

This loads the plugin for that session only. To register and install the local copy, run
`bash install.sh "$PWD"`. If you switch between a local and a remote marketplace source,
remove the existing marketplace first with `claude plugin marketplace remove luna-foundry`.

## Update or uninstall

```bash
claude plugin marketplace update luna-foundry
claude plugin update luna-agent-foundry@luna-foundry --scope user
```

```bash
claude plugin uninstall luna-agent-foundry@luna-foundry --scope user
claude plugin marketplace remove luna-foundry
```

## Contributing

The catalog is generated, so edit the source files and rebuild:

1. Edit the task briefs in `tools/workflows.txt`, or the shared templates in `tools/build.py`.
2. Regenerate the Markdown catalog and components with `python3 tools/build.py`.
3. Commit both the inputs and the generated files.
4. Check your work with `python3 tools/build.py --check` and, if you have Claude Code installed,
   `claude plugin validate . --strict`.

GitHub Actions runs the same check on every push and pull request.

## License

[MIT](LICENSE) © 2026 Hoddz Trends LLC

Luna Agent Foundry is an independent project and is not affiliated with or endorsed by Anthropic.
Claude and Claude Code are trademarks of Anthropic.
