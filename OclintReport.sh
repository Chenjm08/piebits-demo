#!/usr/bin/env bash

rm compile_commands.json oclint_report.json

xctool clean -project LaunchBox.xcodeproj/ -scheme LaunchBox -sdk iphonesimulator -configuration Debug -reporter json-compilation-database:compile_commands.json -reporter pretty
xctool build -project LaunchBox.xcodeproj/ -scheme LaunchBox -sdk iphonesimulator -configuration Debug -reporter json-compilation-database:compile_commands.json -reporter pretty

oclint-json-compilation-database -enable-clang-static-analyzer -- -max-priority-2=20 -max-priority-3=100 -rc LONG_LINE=150 -rc=CYCLOMATIC_COMPLEXITY=1