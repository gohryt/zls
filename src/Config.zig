//! DO NOT EDIT
//! Configuration options for zls.
//! If you want to add a config option edit
//! src/config_gen/config.json and run `zig build gen`
//! GENERATED BY src/config_gen/config_gen.zig

/// Enables snippet completions when the client also supports them
enable_snippets: bool = true,

/// Whether to enable ast-check diagnostics
enable_ast_check_diagnostics: bool = true,

/// Whether to automatically fix errors on save. Currently supports adding and removing discards.
enable_autofix: bool = true,

/// Whether to enable import/embedFile argument completions
enable_import_embedfile_argument_completions: bool = true,

/// Set level of semantic tokens. Partial only includes information that requires semantic analysis.
semantic_tokens: enum {
    none,
    partial,
    full,
    
    pub const tres_string_enum = true;
} = .full,

/// Enables inlay hint support when the client also supports it
enable_inlay_hints: bool = true,

/// Enable inlay hints for builtin functions
inlay_hints_show_builtin: bool = true,

/// Don't show inlay hints for single argument calls
inlay_hints_exclude_single_argument: bool = true,

/// Hides inlay hints when parameter name matches the identifier (e.g. foo: foo)
inlay_hints_hide_redundant_param_names: bool = false,

/// Hides inlay hints when parameter name matches the last token of a parameter node (e.g. foo: bar.foo, foo: &foo)
inlay_hints_hide_redundant_param_names_last_token: bool = false,

/// Enables `*` and `?` operators in completion lists
operator_completions: bool = true,

/// Enables warnings for style guideline mismatches
warn_style: bool = false,

/// Whether to highlight global var declarations
highlight_global_var_declarations: bool = false,

/// Whether to use the comptime interpreter
dangerous_comptime_experiments_do_not_enable: bool = false,

/// Whether the @ sign should be part of the completion of builtins
include_at_in_builtins: bool = false,

/// When true, skips searching for references in std. Improves lookup speed for functions in user's code. Renaming and go-to-definition will continue to work as is
skip_std_references: bool = false,

/// The detail field of completions is truncated to be no longer than this (in bytes)
max_detail_length: usize = 1048576,

/// Can be used in conjuction with `enable_ast_check_diagnostics` to favor using `zig ast-check` instead of ZLS's fork
prefer_ast_check_as_child_process: bool = true,

/// When true, zls will record all request is receives and write in into `record_session_path`, so that they can replayed with `zls replay`
record_session: bool = false,

/// Output file path when `record_session` is set. The recommended file extension *.zlsreplay
record_session_path: ?[]const u8 = null,

/// Used when calling `zls replay` for specifying the replay file. If no extra argument is given `record_session_path` is used as the default path.
replay_session_path: ?[]const u8 = null,

/// Path to 'builtin;' useful for debugging, automatically set if let null
builtin_path: ?[]const u8 = null,

/// Zig library path, e.g. `/path/to/zig/lib/zig`, used to analyze std library imports
zig_lib_path: ?[]const u8 = null,

/// Zig executable path, e.g. `/path/to/zig/zig`, used to run the custom build runner. If `null`, zig is looked up in `PATH`. Will be used to infer the zig standard library path if none is provided
zig_exe_path: ?[]const u8 = null,

/// Path to the `build_runner.zig` file provided by zls. null is equivalent to `${executable_directory}/build_runner.zig`
build_runner_path: ?[]const u8 = null,

/// Path to a directory that will be used as zig's cache. null is equivalent to `${KnownFolders.Cache}/zls`
global_cache_path: ?[]const u8 = null,

/// Path to a directory that will be used as the global cache path when executing a projects build.zig. null is equivalent to the path shown by `zig env`
build_runner_global_cache_path: ?[]const u8 = null,

/// Opt into telemetry so that we can optimize the Zig Language Server
opt_in_telemetry: bool = false,

// DO NOT EDIT
