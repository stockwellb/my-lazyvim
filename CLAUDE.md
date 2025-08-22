# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Configuration Overview

This is a Neovim configuration based on LazyVim, a modern Neovim starter template. The configuration uses the lazy.nvim plugin manager and follows LazyVim's modular structure.

## Architecture

The configuration follows LazyVim's standard directory structure:

- `init.lua` - Entry point that bootstraps lazy.nvim
- `lua/config/` - Core configuration files
  - `lazy.lua` - Main lazy.nvim setup with plugin specifications
  - `options.lua` - Neovim options (currently sets telescope as picker)
  - `keymaps.lua` - Custom keymaps (currently empty, uses LazyVim defaults)
  - `autocmds.lua` - Auto commands (currently empty, uses LazyVim defaults)
- `lua/plugins/` - Custom plugin configurations that override or extend LazyVim

## Plugin Configuration

### Language Support
The configuration includes LazyVim extras for multiple languages:
- JSON, YAML, TOML, SQL
- TypeScript/JavaScript, Python, Go, Kotlin, Zig
- Tailwind CSS

### AI Integration
Two main AI plugins are configured:

1. **Copilot** (`lua/plugins/copilot.lua`)
   - GitHub Copilot integration with custom Tab acceptance
   - Enabled for all filetypes including markdown and help files
   - Panel disabled, suggestions enabled with auto-trigger

2. **Avante** (`lua/plugins/avante.lua`)
   - AI chat interface using Copilot as provider
   - Supports OpenAI as alternative (requires OPENAI_API_KEY env var)
   - Built with `make` command
   - Debug mode enabled

## Development Commands

### Formatting
- Code formatting uses StyLua with configuration in `stylua.toml`:
  - 2-space indentation
  - 120 character column width

### Plugin Management
- `:Lazy` - Open Lazy plugin manager
- `:Lazy update` - Update all plugins
- `:Lazy sync` - Install missing and update existing plugins

### AI Features
- Avante provides AI chat functionality (requires building with `make`)
- Copilot provides inline suggestions (Tab to accept)

## Key Configuration Details

- Uses telescope as the default picker instead of fzf
- Auto-checks for plugin updates but doesn't notify
- Performance optimizations disable some default RTP plugins (gzip, tar, zip, etc.)
- Plugin lazy-loading is disabled by default for custom plugins
- Uses latest git commits rather than stable versions for most plugins