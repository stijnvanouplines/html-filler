## HTML filler
Script to fill HTML template from CSV file.

Edit [data.csv](data.csv). Structure:
| Name        | Function  | Phone         | Email            |
| ----------- | --------- | ------------- | ---------------- |
| Steve Jobs  | CEO       | 0800 0201581  | steve@apple.com  |

Use these variables in [template.html](template.html):
- {NAME}
- {FUNCTION}
- {PHONE}
- {EMAIL}

Run the script:
```bash
sh script.sh
```
