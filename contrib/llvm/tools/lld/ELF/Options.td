include "llvm/Option/OptParser.td"

// For options whose names are multiple letters, either one dash or
// two can precede the option name except those that start with 'o'.
class F<string name>: Flag<["--", "-"], name>;
class J<string name>: Joined<["--", "-"], name>;
class S<string name>: Separate<["--", "-"], name>;
class JS<string name>: JoinedOrSeparate<["--", "-"], name>;

def auxiliary: S<"auxiliary">, HelpText<"Set DT_AUXILIARY field to the specified name">;

def Bsymbolic: F<"Bsymbolic">, HelpText<"Bind defined symbols locally">;

def Bsymbolic_functions: F<"Bsymbolic-functions">,
  HelpText<"Bind defined function symbols locally">;

def Bdynamic: F<"Bdynamic">, HelpText<"Link against shared libraries">;

def Bstatic: F<"Bstatic">, HelpText<"Do not link against shared libraries">;

def build_id: F<"build-id">, HelpText<"Generate build ID note">;

def build_id_eq: J<"build-id=">, HelpText<"Generate build ID note">;

def compress_debug_sections : J<"compress-debug-sections=">,
  HelpText<"Compress DWARF debug sections">;

def defsym: J<"defsym=">, HelpText<"Define a symbol alias">;

def L: JoinedOrSeparate<["-"], "L">, MetaVarName<"<dir>">,
  HelpText<"Add a directory to the library search path">;

def O: Joined<["-"], "O">, HelpText<"Optimize output file size">;

def Tbss: S<"Tbss">, HelpText<"Same as --section-start with .bss as the sectionname">;

def Tdata: S<"Tdata">, HelpText<"Same as --section-start with .data as the sectionname">;

def Ttext: S<"Ttext">, HelpText<"Same as --section-start with .text as the sectionname">;

def allow_multiple_definition: F<"allow-multiple-definition">,
  HelpText<"Allow multiple definitions">;

def as_needed: F<"as-needed">,
  HelpText<"Only set DT_NEEDED for shared libraries if used">;

def color_diagnostics: F<"color-diagnostics">,
  HelpText<"Use colors in diagnostics">;

def color_diagnostics_eq: J<"color-diagnostics=">,
  HelpText<"Use colors in diagnostics">;

def define_common: F<"define-common">,
  HelpText<"Assign space to common symbols">;

def demangle: F<"demangle">, HelpText<"Demangle symbol names">;

def disable_new_dtags: F<"disable-new-dtags">,
  HelpText<"Disable new dynamic tags">;

def discard_all: F<"discard-all">, HelpText<"Delete all local symbols">;

def discard_locals: F<"discard-locals">,
  HelpText<"Delete temporary local symbols">;

def discard_none: F<"discard-none">,
  HelpText<"Keep all symbols in the symbol table">;

def dynamic_linker: S<"dynamic-linker">,
  HelpText<"Which dynamic linker to use">;

def dynamic_list: S<"dynamic-list">,
  HelpText<"Read a list of dynamic symbols">;

def eh_frame_hdr: F<"eh-frame-hdr">,
  HelpText<"Request creation of .eh_frame_hdr section and PT_GNU_EH_FRAME segment header">;

def emit_relocs: F<"emit-relocs">, HelpText<"Generate relocations in output">;

def enable_new_dtags: F<"enable-new-dtags">,
  HelpText<"Enable new dynamic tags">;

def end_lib: F<"end-lib">,
  HelpText<"End a grouping of objects that should be treated as if they were together in an archive">;

def entry: S<"entry">, MetaVarName<"<entry>">,
  HelpText<"Name of entry point symbol">;

def error_limit: S<"error-limit">,
  HelpText<"Maximum number of errors to emit before stopping (0 = no limit)">;

def error_unresolved_symbols: F<"error-unresolved-symbols">,
  HelpText<"Report unresolved symbols as errors">;

def exclude_libs: S<"exclude-libs">,
  HelpText<"Exclude static libraries from automatic export">;

def export_dynamic: F<"export-dynamic">,
  HelpText<"Put symbols in the dynamic symbol table">;

def export_dynamic_symbol: S<"export-dynamic-symbol">,
  HelpText<"Put a symbol in the dynamic symbol table">;

def fatal_warnings: F<"fatal-warnings">,
  HelpText<"Treat warnings as errors">;

def filter: J<"filter=">, HelpText<"Set DT_FILTER field to the specified name">;

def fini: S<"fini">, MetaVarName<"<symbol>">,
  HelpText<"Specify a finalizer function">;

def full_shutdown : F<"full-shutdown">,
  HelpText<"Perform a full shutdown instead of calling _exit">;

def format: J<"format=">, MetaVarName<"<input-format>">,
  HelpText<"Change the input format of the inputs following this option">;

def gc_sections: F<"gc-sections">,
  HelpText<"Enable garbage collection of unused sections">;

def gdb_index: F<"gdb-index">,
  HelpText<"Generate .gdb_index section">;

def hash_style: S<"hash-style">,
  HelpText<"Specify hash style (sysv, gnu or both)">;

def help: F<"help">, HelpText<"Print option help">;

def icf: F<"icf=all">, HelpText<"Enable identical code folding">;

def image_base : J<"image-base=">, HelpText<"Set the base address">;

def init: S<"init">, MetaVarName<"<symbol>">,
  HelpText<"Specify an initializer function">;

def l: JoinedOrSeparate<["-"], "l">, MetaVarName<"<libName>">,
  HelpText<"Root name of library to use">;

def lto_O: J<"lto-O">, MetaVarName<"<opt-level>">,
  HelpText<"Optimization level for LTO">;

def m: JoinedOrSeparate<["-"], "m">, HelpText<"Set target emulation">;

def Map: JS<"Map">, HelpText<"Print a link map to the specified file">;

def nostdlib: F<"nostdlib">,
  HelpText<"Only search directories specified on the command line">;

def no_as_needed: F<"no-as-needed">,
  HelpText<"Always DT_NEEDED for shared libraries">;

def no_color_diagnostics: F<"no-color-diagnostics">,
  HelpText<"Do not use colors in diagnostics">;

def no_define_common: F<"no-define-common">,
  HelpText<"Do not assign space to common symbols">;

def no_demangle: F<"no-demangle">,
  HelpText<"Do not demangle symbol names">;

def no_dynamic_linker: F<"no-dynamic-linker">,
  HelpText<"Inhibit output of .interp section">;

def no_export_dynamic: F<"no-export-dynamic">;
def no_fatal_warnings: F<"no-fatal-warnings">;

def no_gc_sections: F<"no-gc-sections">,
  HelpText<"Disable garbage collection of unused sections">;

def no_gnu_unique: F<"no-gnu-unique">,
  HelpText<"Disable STB_GNU_UNIQUE symbol binding">;

def no_threads: F<"no-threads">,
  HelpText<"Do not run the linker multi-threaded">;

def no_whole_archive: F<"no-whole-archive">,
  HelpText<"Restores the default behavior of loading archive members">;

def noinhibit_exec: F<"noinhibit-exec">,
  HelpText<"Retain the executable output file whenever it is still usable">;

def nopie: F<"nopie">, HelpText<"Do not create a position independent executable">;

def no_rosegment: F<"no-rosegment">, HelpText<"Do not put read-only non-executable sections in their own segment">;

def no_undefined: F<"no-undefined">,
  HelpText<"Report unresolved symbols even if the linker is creating a shared library">;

def no_undefined_version: F<"no-undefined-version">,
  HelpText<"Report version scripts that refer undefined symbols">;

def o: JoinedOrSeparate<["-"], "o">, MetaVarName<"<path>">,
  HelpText<"Path to file to write output">;

def oformat: Separate<["--"], "oformat">, MetaVarName<"<format>">,
  HelpText<"Specify the binary format for the output object file">;

def omagic: Flag<["--"], "omagic">, MetaVarName<"<magic>">,
  HelpText<"Set the text and data sections to be readable and writable">;

def pie: F<"pie">, HelpText<"Create a position independent executable">;

def print_gc_sections: F<"print-gc-sections">,
  HelpText<"List removed unused sections">;

def print_map: F<"print-map">,
  HelpText<"Print a link map to the standard output">;

def reproduce: S<"reproduce">,
  HelpText<"Dump linker invocation and input files for debugging">;

def rpath: S<"rpath">, HelpText<"Add a DT_RUNPATH to the output">;

def relocatable: F<"relocatable">, HelpText<"Create relocatable object file">;

def retain_symbols_file: J<"retain-symbols-file=">, MetaVarName<"<file>">,
  HelpText<"Retain only the symbols listed in the file">;

def script: S<"script">, HelpText<"Read linker script">;

def section_start: S<"section-start">, MetaVarName<"<address>">,
  HelpText<"Set address of section">;

def shared: F<"shared">, HelpText<"Build a shared object">;

def soname: J<"soname=">, HelpText<"Set DT_SONAME">;

def sort_section: S<"sort-section">, HelpText<"Specifies sections sorting rule when linkerscript is used">;

def start_lib: F<"start-lib">,
  HelpText<"Start a grouping of objects that should be treated as if they were together in an archive">;

def strip_all: F<"strip-all">, HelpText<"Strip all symbols">;

def strip_debug: F<"strip-debug">, HelpText<"Strip debugging information">;

def symbol_ordering_file: S<"symbol-ordering-file">,
  HelpText<"Layout sections in the order specified by symbol file">;

def sysroot: J<"sysroot=">, HelpText<"Set the system root">;

def target1_rel: F<"target1-rel">, HelpText<"Interpret R_ARM_TARGET1 as R_ARM_REL32">;

def target1_abs: F<"target1-abs">, HelpText<"Interpret R_ARM_TARGET1 as R_ARM_ABS32">;

def target2: J<"target2=">, MetaVarName<"<type>">, HelpText<"Interpret R_ARM_TARGET2 as <type>, where <type> is one of rel, abs, or got-rel">;

def threads: F<"threads">, HelpText<"Run the linker multi-threaded">;

def trace: F<"trace">, HelpText<"Print the names of the input files">;

def trace_symbol : S<"trace-symbol">, HelpText<"Trace references to symbols">;

def undefined: S<"undefined">,
  HelpText<"Force undefined symbol during linking">;

def unresolved_symbols: J<"unresolved-symbols=">,
  HelpText<"Determine how to handle unresolved symbols">;

def rsp_quoting: J<"rsp-quoting=">,
  HelpText<"Quoting style for response files. Values supported: windows|posix">;

def v: Flag<["-"], "v">, HelpText<"Display the version number">;

def verbose: F<"verbose">, HelpText<"Verbose mode">;

def version: F<"version">, HelpText<"Display the version number and exit">;

def version_script: S<"version-script">,
  HelpText<"Read a version script">;

def warn_common: F<"warn-common">,
  HelpText<"Warn about duplicate common symbols">;

def warn_unresolved_symbols: F<"warn-unresolved-symbols">,
  HelpText<"Report unresolved symbols as warnings">;

def whole_archive: F<"whole-archive">,
  HelpText<"Force load of all members in a static library">;

def wrap: S<"wrap">, MetaVarName<"<symbol>">,
  HelpText<"Use wrapper functions for symbol">;

def z: JoinedOrSeparate<["-"], "z">, MetaVarName<"<option>">,
  HelpText<"Linker option extensions">;

// Aliases
def alias_auxiliary: Separate<["-"], "f">, Alias<auxiliary>;
def alias_Bdynamic_call_shared: F<"call_shared">, Alias<Bdynamic>;
def alias_Bdynamic_dy: F<"dy">, Alias<Bdynamic>;
def alias_Bstatic_dn: F<"dn">, Alias<Bstatic>;
def alias_Bstatic_non_shared: F<"non_shared">, Alias<Bstatic>;
def alias_Bstatic_static: F<"static">, Alias<Bstatic>;
def alias_L__library_path: J<"library-path=">, Alias<L>;
def alias_define_common_d: Flag<["-"], "d">, Alias<define_common>;
def alias_define_common_dc: F<"dc">, Alias<define_common>;
def alias_define_common_dp: F<"dp">, Alias<define_common>;
def alias_defsym: S<"defsym">, Alias<defsym>;
def alias_discard_all_x: Flag<["-"], "x">, Alias<discard_all>;
def alias_discard_locals_X: Flag<["-"], "X">, Alias<discard_locals>;
def alias_dynamic_list: J<"dynamic-list=">, Alias<dynamic_list>;
def alias_emit_relocs: Flag<["-"], "q">, Alias<emit_relocs>;
def alias_entry_e: JoinedOrSeparate<["-"], "e">, Alias<entry>;
def alias_entry_entry: J<"entry=">, Alias<entry>;
def alias_error_limit: J<"error-limit=">, Alias<error_limit>;
def alias_exclude_libs: J<"exclude-libs=">, Alias<exclude_libs>;
def alias_export_dynamic_E: Flag<["-"], "E">, Alias<export_dynamic>;
def alias_export_dynamic_symbol: J<"export-dynamic-symbol=">,
  Alias<export_dynamic_symbol>;
def alias_filter: Separate<["-"], "F">, Alias<filter>;
def alias_fini_fini: J<"fini=">, Alias<fini>;
def alias_format_b: S<"b">, Alias<format>;
def alias_hash_style_hash_style: J<"hash-style=">, Alias<hash_style>;
def alias_init_init: J<"init=">, Alias<init>;
def alias_l__library: J<"library=">, Alias<l>;
def alias_Map_eq: J<"Map=">, Alias<Map>;
def alias_omagic: Flag<["-"], "N">, Alias<omagic>;
def alias_o_output: Joined<["--"], "output=">, Alias<o>;
def alias_o_output2 : Separate<["--"], "output">, Alias<o>;
def alias_pie_pic_executable: F<"pic-executable">, Alias<pie>;
def alias_print_map_M: Flag<["-"], "M">, Alias<print_map>;
def alias_relocatable_r: Flag<["-"], "r">, Alias<relocatable>;
def alias_reproduce_eq: J<"reproduce=">, Alias<reproduce>;
def alias_retain_symbols_file: S<"retain-symbols-file">, Alias<retain_symbols_file>;
def alias_rpath_R: JoinedOrSeparate<["-"], "R">, Alias<rpath>;
def alias_rpath_rpath: J<"rpath=">, Alias<rpath>;
def alias_script_T: JoinedOrSeparate<["-"], "T">, Alias<script>;
def alias_shared_Bshareable: F<"Bshareable">, Alias<shared>;
def alias_soname_h: JoinedOrSeparate<["-"], "h">, Alias<soname>;
def alias_soname_soname: S<"soname">, Alias<soname>;
def alias_sort_section: J<"sort-section=">, Alias<sort_section>;
def alias_script: J<"script=">, Alias<script>;
def alias_strip_all: Flag<["-"], "s">, Alias<strip_all>;
def alias_strip_debug_S: Flag<["-"], "S">, Alias<strip_debug>;
def alias_Tbss: J<"Tbss=">, Alias<Tbss>;
def alias_Tdata: J<"Tdata=">, Alias<Tdata>;
def alias_trace: Flag<["-"], "t">, Alias<trace>;
def trace_trace_symbol_eq : J<"trace-symbol=">, Alias<trace_symbol>;
def alias_trace_symbol_y : JoinedOrSeparate<["-"], "y">, Alias<trace_symbol>;
def alias_Ttext: J<"Ttext=">, Alias<Ttext>;
def alias_Ttext_segment: S<"Ttext-segment">, Alias<Ttext>;
def alias_Ttext_segment_eq: J<"Ttext-segment=">, Alias<Ttext>;
def alias_undefined_eq: J<"undefined=">, Alias<undefined>;
def alias_undefined_u: JoinedOrSeparate<["-"], "u">, Alias<undefined>;
def alias_version_script_eq: J<"version-script=">, Alias<version_script>;
def alias_version_V: Flag<["-"], "V">, Alias<version>;
def alias_wrap_wrap: J<"wrap=">, Alias<wrap>;

// Our symbol resolution algorithm handles symbols in archive files differently
// than traditional linkers, so we don't need --start-group and --end-group.
// These options are recongized for compatibility but ignored.
def end_group: F<"end-group">;
def end_group_paren: Flag<["-"], ")">;
def start_group: F<"start-group">;
def start_group_paren: Flag<["-"], "(">;

// LTO-related options.
def lto_aa_pipeline: J<"lto-aa-pipeline=">,
  HelpText<"AA pipeline to run during LTO. Used in conjunction with -lto-newpm-passes">;
def lto_newpm_passes: J<"lto-newpm-passes=">,
  HelpText<"Passes to run during LTO">;
def lto_partitions: J<"lto-partitions=">,
  HelpText<"Number of LTO codegen partitions">;
def disable_verify: F<"disable-verify">;
def mllvm: S<"mllvm">;
def opt_remarks_filename: Separate<["--"], "opt-remarks-filename">,
  HelpText<"YAML output file for optimization remarks">;
def opt_remarks_with_hotness: Flag<["--"], "opt-remarks-with-hotness">,
  HelpText<"Include hotness informations in the optimization remarks file">;
def save_temps: F<"save-temps">;
def thinlto_cache_dir: J<"thinlto-cache-dir=">,
  HelpText<"Path to ThinLTO cached object file directory">;
def thinlto_cache_policy: S<"thinlto-cache-policy">,
  HelpText<"Pruning policy for the ThinLTO cache">;
def thinlto_jobs: J<"thinlto-jobs=">, HelpText<"Number of ThinLTO jobs">;

// Ignore LTO plugin-related options.
// clang -flto passes -plugin and -plugin-opt to the linker. This is required
// for ld.gold and ld.bfd to get LTO working. But it's not for lld which doesn't
// rely on a plugin. Instead of detecting which linker is used on clang side we
// just ignore the option on lld side as it's easier. In fact, the linker could
// be called 'ld' and understanding which linker is used would require parsing of
// --version output.
def plugin: S<"plugin">;
def plugin_eq: J<"plugin=">;
def plugin_opt: S<"plugin-opt">;
def plugin_opt_eq: J<"plugin-opt=">;

// Options listed below are silently ignored for now for compatibility.
def allow_shlib_undefined: F<"allow-shlib-undefined">;
def cref: Flag<["--"], "cref">;
def detect_odr_violations: F<"detect-odr-violations">;
def g: Flag<["-"], "g">;
def no_add_needed: F<"no-add-needed">;
def no_allow_shlib_undefined: F<"no-allow-shlib-undefined">;
def no_copy_dt_needed_entries: F<"no-copy-dt-needed-entries">,
  Alias<no_add_needed>;
def no_keep_memory: F<"no-keep-memory">;
def no_mmap_output_file: F<"no-mmap-output-file">;
def no_warn_common: F<"no-warn-common">;
def no_warn_mismatch: F<"no-warn-mismatch">;
def rpath_link: S<"rpath-link">;
def rpath_link_eq: J<"rpath-link=">;
def sort_common: F<"sort-common">;
def stats: F<"stats">;
def warn_execstack: F<"warn-execstack">;
def warn_shared_textrel: F<"warn-shared-textrel">;
def EB : F<"EB">;
def EL : F<"EL">;
def G: JoinedOrSeparate<["-"], "G">;
def Qy : F<"Qy">;

