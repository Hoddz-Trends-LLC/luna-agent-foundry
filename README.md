<p align="center">
  <img src="assets/logo.png" alt="Luna Agent Foundry" width="240">
</p>

# Luna Agent Foundry

**Build your AI company with one command.**

An open-source Claude Code plugin with **100 specialized agents, 310 skills and
115 slash commands** across leadership, product, engineering, data, security,
marketing, sales, support, operations and administration.

## Install

Install the latest [Claude Code](https://code.claude.com/docs/en/quickstart) and make sure
`claude` is on your PATH. Once this repository is public under the GitHub
organization shown below, run this one line in your terminal:

```bash
claude plugin install luna-agent-foundry --marketplace Hoddz-Trends-LLC/luna-agent-foundry --scope user
```

Then open a new Claude Code session. The plugin is free and MIT-licensed.
Running agents uses your Claude Code access and any associated plan or API usage.

## Start with a company or pick a workflow

Type these commands **inside Claude Code** and replace the example context with yours:

```text
/luna-agent-foundry:launch-company Plan a 2-week pilot for a small B2B software company.
/luna-agent-foundry:plan-engineering Scope the technical delivery plan for our MVP.
/luna-agent-foundry:api-design Design a paginated orders endpoint using docs/requirements.md.
/luna-agent-foundry:customer-escalation Coordinate a response to a delayed enterprise rollout.
```

You can also ask Claude to use a specific agent, such as
`luna-agent-foundry:software-architect`. Each specialist workflow includes skills
for intake, drafting and review. The ten department playbooks cover sequencing
and handoffs. See the [complete catalog](CATALOG.md).

Agents use read-only file tools. Commands and skills guide the main Claude session
and are subject to its tool permissions. External actions such as sending messages,
deploying changes and spending remain human approval points. The plugin contains
no hooks, external service connectors or background worker.

## Try the ZIP locally

Extract the archive, enter the `luna-agent-foundry` directory and run:

```bash
claude --plugin-dir .
```

On Bash, you can also register and install the extracted copy with
`bash install.sh "$PWD"`. Use a local or a remote marketplace source, and remove
the existing marketplace first if switching sources.

## Update or uninstall

```bash
claude plugin marketplace update luna-foundry
claude plugin update luna-agent-foundry@luna-foundry --scope user
```

```bash
claude plugin uninstall luna-agent-foundry@luna-foundry --scope user
claude plugin marketplace remove luna-foundry
```

## Contribute

Edit the task briefs in `tools/workflows.txt` or shared templates in
`tools/build.py`. Regenerate the Markdown catalog with `python3 tools/build.py`.
Commit both the input and generated files. Run `python3 tools/build.py --check`
and, with Claude Code installed, `claude plugin validate .`.

## Publish on GitHub

Create a public repository named `luna-agent-foundry` under
`Hoddz-Trends-LLC`. From the extracted folder, push its contents as the repo root.
Include hidden directories, especially `.claude-plugin/` and `.github/`. If you
publish under a different owner, update the GitHub coordinates in this README,
`install.sh` and `.claude-plugin/plugin.json`. Verify the public install command
in a fresh Claude Code environment, then optionally tag the release as `v1.0.0`.

## License

[MIT](LICENSE) · Hoddz Trends LLC
