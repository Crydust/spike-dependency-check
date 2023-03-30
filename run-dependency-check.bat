@echo off
cd /d %~dp0
call mvnw.cmd clean verify org.owasp:dependency-check-maven:7.4.4:check ^
-DskipTests=true ^
-Dmaven.test.skip=true ^
-Dmaven.install.skip=true ^
-Ddependency-check.autoUpdate=true ^
-Ddependency-check.skip=false ^
-B
