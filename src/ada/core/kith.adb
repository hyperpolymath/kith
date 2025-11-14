cat > kith.gpr << 'EOF'
project Kith is
for Source_Dirs use ("src/ada/core", "src/ada/ui", "src/ada/validation", "src/ada/integration", "src/ada/plugins");
for Object_Dir use "obj";
for Exec_Dir use "bin";
for Main use ("main.adb");  -- If main.adb is in the root
-- OR, if main.adb is in src/ada/core/:
-- for Main use ("src/ada/core/main.adb");
package Compiler is
    for Default_Switches ("Ada") use ("-g", "-O2", "-gnat2022");
end Compiler;
end Kith;
EOF
