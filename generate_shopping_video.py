from pathlib import Path
import os
from PIL import Image, ImageDraw, ImageFont
import imageio.v2 as imageio

project_root = Path(__file__).resolve().parent
images_dir = project_root / 'images'
out_path = images_dir / 'shopping.mp4'
images_dir.mkdir(exist_ok=True)

size = (1280, 720)
frames = []

product_images = [
    images_dir / 'mobile.png',
    images_dir / 'laptop.png',
    images_dir / 'fashion.png',
    images_dir / 'shoes.png',
    images_dir / 'watch.png',
    images_dir / 'beauty.png',
]

try:
    font_title = ImageFont.truetype('arial.ttf', 44)
    font_sub = ImageFont.truetype('arial.ttf', 28)
except Exception:
    font_title = ImageFont.load_default()
    font_sub = ImageFont.load_default()

for i in range(60):
    frame = Image.new('RGB', size, (10, 18, 35))
    draw = ImageDraw.Draw(frame)

    draw.rounded_rectangle([40, 40, 1240, 680], radius=28, outline=(255, 255, 255, 80), width=4)
    draw.text((80, 80), 'ShopEase', fill=(255, 255, 255), font=font_title)
    draw.text((80, 150), 'Big deals, smart shopping', fill=(220, 230, 255), font=font_sub)

    img_path = product_images[i % len(product_images)]
    if img_path.exists():
        img = Image.open(img_path).convert('RGBA')
        img = img.resize((420, 320))
        frame.paste(img, (430, 190), img)

    draw.text((80, 560), img_path.stem.replace('-', ' ').title(), fill=(255, 255, 255), font=font_sub)
    draw.text((80, 610), 'Fresh picks for your daily needs', fill=(220, 230, 255), font=font_sub)

    shift = (i % 12) * 8
    draw.rectangle([80, 520, 80 + shift, 540], fill=(255, 255, 255))
    frames.append(frame)

imageio.mimsave(out_path, frames, fps=10, codec='libx264', quality=8)
print('created', out_path, os.path.getsize(out_path))
