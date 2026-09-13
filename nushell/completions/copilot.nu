# Native Nushell completion for GitHub Copilot CLI.
# Target: Nushell 0.115.x

const ROOT = [
    {value: "login", description: "Authenticate with Copilot"}
    {value: "help", description: "Display help information"}
    {value: "init", description: "Initialize Copilot instructions"}
    {value: "update", description: "Download the latest version"}
    {value: "version", description: "Display version information"}
    {value: "plugin", description: "Manage plugins"}
    {value: "mcp", description: "Manage MCP servers"}
    {value: "plugins", description: "Inspect configured plugins across kinds"}
    {value: "skill", description: "Manage skills"}
    {value: "completion", description: "Generate a shell completion script"}
]

const MODELS = ["auto", "claude-sonnet-5", "claude-fable-5", "claude-opus-5", "claude-opus-4.8", "claude-opus-4.8-fast", "claude-opus-4.7", "claude-sonnet-4.6", "claude-opus-4.6", "claude-sonnet-4.5", "claude-opus-4.5", "claude-haiku-4.5", "gpt-5.6-sol", "gpt-5.6-terra", "gpt-5.6-luna", "gpt-5.5", "gpt-5.4", "gpt-5.4-mini", "gpt-5.3-codex", "gpt-5-mini", "mai-code-1-flash-picker", "gemini-3.7-flash", "gemini-3.6-flash", "gemini-3.5-flash", "gemini-3.1-pro-preview", "grok-4.5", "kimi-k3", "kimi-k2.7-code"]
const EFFORT = ["none", "minimal", "low", "medium", "high", "xhigh", "max"]
const CONTEXT = ["default", "long_context"]
const LOG_LEVEL = ["none", "error", "warning", "info", "debug", "all", "default"]
const ONOFF = ["on", "off"]
const OUTPUT = ["text", "json"]
const MODES = ["interactive", "plan", "autopilot"]
const TRANSPORT = ["stdio", "http", "sse"]
const SCOPES = ["user", "project"]
const COMPLETION_SHELLS = ["bash", "zsh", "fish"]

const FLAGS = [
    {value: "-v", description: "Show version information"}
    {value: "--version", description: "Show version information"}
    {value: "-i", description: "Start interactive mode and execute this prompt"}
    {value: "--interactive", description: "Start interactive mode and execute this prompt"}
    {value: "-p", description: "Execute a prompt in non-interactive mode"}
    {value: "--prompt", description: "Execute a prompt in non-interactive mode"}
    {value: "-s", description: "Output only the agent response"}
    {value: "--silent", description: "Output only the agent response"}
    {value: "--enable-memory", description: "Enable memory in prompt mode"}
    {value: "--model", description: "Set the AI model to use"}
    {value: "--effort", description: "Set the reasoning effort level"}
    {value: "--reasoning-effort", description: "Set the reasoning effort level"}
    {value: "--context", description: "Set the context window tier"}
    {value: "--enable-reasoning-summaries", description: "Request reasoning summaries for OpenAI models"}
    {value: "--agent", description: "Specify a custom agent"}
    {value: "-r", description: "Resume from a previous session"}
    {value: "--resume", description: "Resume from a previous session"}
    {value: "--continue", description: "Resume the most recent session"}
    {value: "-n", description: "Set a name for the new session"}
    {value: "--name", description: "Set a name for the new session"}
    {value: "--session-id", description: "Resume or create a session by ID"}
    {value: "--connect", description: "Connect directly to a remote session"}
    {value: "--allow-all-tools", description: "Allow all tools automatically"}
    {value: "--allow-all-paths", description: "Allow access to any path"}
    {value: "--disallow-temp-dir", description: "Prevent automatic access to the temp directory"}
    {value: "--no-custom-instructions", description: "Disable custom instructions"}
    {value: "--no-auto-update", description: "Disable automatic CLI updates"}
    {value: "--no-ask-user", description: "Disable the ask_user tool"}
    {value: "--banner", description: "Show the startup banner"}
    {value: "--no-color", description: "Disable all color output"}
    {value: "--screen-reader", description: "Enable screen reader optimizations"}
    {value: "--plain-diff", description: "Disable rich diff rendering"}
    {value: "-C", description: "Change working directory"}
    {value: "--log-dir", description: "Set log file directory"}
    {value: "--extension-sdk-path", description: "Override the bundled Copilot SDK"}
    {value: "--log-level", description: "Set the log level"}
    {value: "--stream", description: "Enable or disable streaming"}
    {value: "--output-format", description: "Output format: text or json"}
    {value: "--share", description: "Share session to a markdown file"}
    {value: "--share-gist", description: "Share session to a secret GitHub gist"}
    {value: "--add-dir", description: "Add a directory to the allowed list"}
    {value: "--attachment", description: "Attach a file to the initial prompt"}
    {value: "--disable-mcp-server", description: "Disable a specific MCP server"}
    {value: "--disable-builtin-mcps", description: "Disable all built-in MCP servers"}
    {value: "--enable-all-github-mcp-tools", description: "Enable all GitHub MCP tools"}
    {value: "--add-github-mcp-toolset", description: "Add a GitHub MCP toolset"}
    {value: "--add-github-mcp-tool", description: "Add a GitHub MCP tool"}
    {value: "--plugin-dir", description: "Load a plugin from a local directory"}
    {value: "--additional-mcp-config", description: "Additional MCP server configuration"}
    {value: "--allow-all-mcp-server-instructions", description: "Allow MCP server instructions"}
    {value: "--allow-tool", description: "Allow a tool"}
    {value: "--deny-tool", description: "Deny a tool"}
    {value: "--available-tools", description: "Restrict available tools"}
    {value: "--excluded-tools", description: "Exclude tools"}
    {value: "--secret-env-vars", description: "Strip and redact selected environment variables"}
    {value: "--allow-url", description: "Allow specific URLs or domains"}
    {value: "--deny-url", description: "Deny specific URLs or domains"}
    {value: "--allow-all-urls", description: "Allow all URLs"}
    {value: "--allow-all", description: "Enable all permissions"}
    {value: "--yolo", description: "Enable all permissions"}
    {value: "--max-autopilot-continues", description: "Set maximum autopilot continuation messages"}
    {value: "--mode", description: "Set the initial agent mode"}
    {value: "--autopilot", description: "Start in autopilot mode"}
    {value: "--plan", description: "Start in plan mode"}
    {value: "--experimental", description: "Enable experimental features"}
    {value: "--no-experimental", description: "Disable experimental features"}
    {value: "--bash-env", description: "Enable or disable BASH_ENV support"}
    {value: "--no-bash-env", description: "Disable BASH_ENV support"}
    {value: "--mouse", description: "Enable or disable mouse support"}
    {value: "--no-mouse", description: "Disable mouse support"}
    {value: "--acp", description: "Start as Agent Client Protocol server"}
    {value: "--remote", description: "Enable remote control"}
    {value: "--no-remote", description: "Disable remote control"}
    {value: "--remote-export", description: "Export the session"}
    {value: "--no-remote-export", description: "Disable session exporting"}
    {value: "--max-ai-credits", description: "Set maximum AI credits"}
]

const PLUGIN = [
    {value: "install", description: "Install a plugin"}
    {value: "uninstall", description: "Uninstall a plugin"}
    {value: "update", description: "Update a plugin"}
    {value: "list", description: "List installed plugins"}
    {value: "marketplace", description: "Manage plugin marketplaces"}
]
const MARKETPLACE = [
    {value: "add", description: "Add a marketplace"}
    {value: "remove", description: "Remove a marketplace"}
    {value: "list", description: "List registered marketplaces"}
    {value: "browse", description: "Browse plugins in a marketplace"}
    {value: "update", description: "Update marketplace plugin catalogs"}
]
const MCP = [
    {value: "list", description: "List configured MCP servers"}
    {value: "get", description: "Show server details"}
    {value: "add", description: "Add an MCP server"}
    {value: "remove", description: "Remove an MCP server"}
]
const PLUGINS = [
    {value: "list", description: "List configured plugins"}
    {value: "enable", description: "Enable a configured tool"}
    {value: "disable", description: "Disable a configured tool"}
    {value: "remove", description: "Remove an installed tool"}
    {value: "rm", description: "Remove an installed tool"}
    {value: "install", description: "Install a new tool"}
    {value: "add", description: "Install a new tool"}
    {value: "update", description: "Update a plugin"}
    {value: "marketplace", description: "Manage plugin marketplaces"}
    {value: "marketplaces", description: "Manage plugin marketplaces"}
]
const SKILL = [
    {value: "list", description: "List available skills"}
    {value: "add", description: "Add a skill"}
    {value: "remove", description: "Remove a skill"}
]

const PLUGIN_FLAGS = [
    {value: "--all", description: "Update all installed plugins"}
    {value: "--force", description: "Force removal"}
]
const MCP_LIST_FLAGS = [{value: "--json", description: "Output as JSON"}]
const MCP_GET_FLAGS = [
    {value: "--json", description: "Output as JSON"}
    {value: "--show-secrets", description: "Show full environment and header values"}
]
const MCP_ADD_FLAGS = [
    {value: "--transport", description: "Server transport"}
    {value: "--env", description: "Environment variable KEY=VALUE"}
    {value: "--header", description: "HTTP header"}
    {value: "--tools", description: "Tool filter"}
    {value: "--timeout", description: "Timeout in milliseconds"}
    {value: "--json", description: "Output added config as JSON"}
    {value: "--show-secrets", description: "Show full environment and header values"}
]
const PLUGINS_LIST_FLAGS = [
    {value: "--kind", description: "Filter by kind"}
    {value: "--scope", description: "Filter by scope"}
    {value: "--json", description: "Emit machine-readable JSON"}
]
const TARGET_FLAGS = [
    {value: "--plugin", description: "Target a plugin"}
    {value: "--mcp", description: "Target an MCP server"}
    {value: "--skill", description: "Target a skill"}
]

# Find the non-option command path. This intentionally ignores option values;
# it is enough to make subcommand completion reliable while keeping this file native Nu.
def __copilot_path [args: list<string>] {
    let plain = $args | where {|x| not ($x starts-with "-")}
    if ($plain | is-empty) { return [] }
    let root = $plain | first
    if $root == "plugin" { return ["plugin", ($plain | skip 1 | first)] | where {|x| $x != null } }
    if $root == "mcp" { return ["mcp", ($plain | skip 1 | first)] | where {|x| $x != null } }
    if $root == "plugins" { return ["plugins", ($plain | skip 1 | first)] | where {|x| $x != null } }
    if $root == "skill" { return ["skill", ($plain | skip 1 | first)] | where {|x| $x != null } }
    if $root == "update" { return ["update"] }
    if $root == "login" { return ["login"] }
    if $root == "completion" { return ["completion"] }
    [$root]
}

def __copilot_complete [spans: list<string>] {
    let args = if ($spans | length) > 1 { $spans | skip 1 } else { [] }
    let current = if ($args | length) > 0 { $args | last } else { "" }
    let done = if $current == "" { $args } else { $args | drop 1 }
    let path = (__copilot_path $done)

    if ($current starts-with "-") {
        if $path == ["mcp", "list"] { return $MCP_LIST_FLAGS }
        if $path == ["mcp", "get"] { return $MCP_GET_FLAGS }
        if $path == ["mcp", "add"] { return $MCP_ADD_FLAGS }
        if ($path | length) >= 2 and ($path | first) == "plugins" {
            let sub = $path | get 1
            if $sub == "list" { return $PLUGINS_LIST_FLAGS }
            if $sub in ["enable", "disable", "remove", "rm"] { return $TARGET_FLAGS }
            if $sub in ["install", "add"] { return ($TARGET_FLAGS | append [{value: "--scope", description: "Install target: user or project"}]) }
            if $sub == "update" { return $PLUGIN_FLAGS }
            if $sub in ["marketplace", "marketplaces"] { return $PLUGIN_FLAGS }
        }
        if $path == ["plugin", "update"] { return $PLUGIN_FLAGS }
        if $path == ["plugin", "marketplace", "remove"] { return [{value: "--force", description: "Force removal even if plugins are installed"}] }
        return $FLAGS
    }

    if $path == [] { return $ROOT }
    if $path == ["plugin"] { return $PLUGIN }
    if $path == ["plugin", "marketplace"] { return $MARKETPLACE }
    if $path == ["mcp"] { return $MCP }
    if $path == ["plugins"] { return $PLUGINS }
    if $path == ["skill"] { return $SKILL }
    if $path == ["completion"] { return $COMPLETION_SHELLS }
    if $path == ["update"] { return ["stable", "prerelease"] }

    []
}

@complete __copilot_complete
extern copilot []
