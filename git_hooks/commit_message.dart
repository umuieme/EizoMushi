// ignore_for_file: avoid_print

import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('❌ No commit message file provided.');
    exit(1);
  }

  final messageFile = File(args[0]);
  final message = messageFile.readAsStringSync().trim();

  if (!isValidCommitMessage(message)) {
    print('❌ Invalid commit message.');
    print('✅ Format: type(scope): short description');
    print('👉 Example: feat(auth): add login functionality');
    exit(1);
  }

  print('✅ Commit message is valid.');
}

bool isValidCommitMessage(String commitMessage) {
  final pattern = RegExp(
    r'^(feat|fix|docs|chore|refactor|revert|style|test|hotfix|bugfix)(\(.+\))?: .+',
  );
  return pattern.hasMatch(commitMessage);
}
