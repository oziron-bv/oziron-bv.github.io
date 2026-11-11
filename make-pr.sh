#!/bin/bash
# Script om een pull request te maken voor de Oziron agents site

echo "Git status:"
git status

echo -e "\nGit log laatste 5 commits:"
git log --oneline -5

echo -e "\nOm een pull request te maken naar oziron-bv/oziron-bv.github.io:"
echo "1. Zorg dat de repository oziron-bv/oziron-bv.github.io bestaat op GitHub"
echo "2. Voer uit: git push -u origin agent/oziron-agents-site"
echo "3. Maak een pull request met:"
echo "   curl -X POST \\"
echo "     -H \"Authorization: token <GITHUB_TOKEN>\" \\"
echo "     -H \"Accept: application/vnd.github.v3+json\" \\"
echo "     https://api.github.com/repos/oziron-bv/oziron-bv.github.io/pulls \\"
echo "     -d '{\"title\":\"Add Oziron agents static site\",\"head\":\"agent/oziron-agents-site\",\"base\":\"main\",\"body\":\"Statische site voor de Google-app Oziron agents met index, privacybeleid en gebruiksvoorwaarden.\"}'"

echo -e "\nTestadres (wanneer gehost op GitHub Pages):"
echo "TESTADRES: https://oziron-bv.github.io"