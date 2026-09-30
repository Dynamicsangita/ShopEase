from pathlib import Path
import re

root = Path(r'c:\Users\ASUS\Desktop\ShopEase')
for jsp_path in sorted(root.rglob('*.jsp')):
    text = jsp_path.read_text(encoding='utf-8')
    text = re.sub(r'<%@\s+page[^%]*?%>\s*', '', text, count=1, flags=re.S)
    text = text.replace('.jsp', '.html')
    html_path = jsp_path.with_suffix('.html')
    html_path.write_text(text, encoding='utf-8')
    print(f'created {html_path}')
