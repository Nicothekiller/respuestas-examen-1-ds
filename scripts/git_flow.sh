#!/usr/bin/env bash
git init
git checkout -b feature/tasks
git add .
git commit -m "feat: create task api endpoint"
git remote add origin git@github.com:user/reponame # o con http
git push origin feature/tasks
