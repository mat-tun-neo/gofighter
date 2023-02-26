import os
from rembg import remove
from PIL import Image

target_dir = 'game_main/images/old/org'
dst_dir = 'game_main/images/old'
imagelist = os.listdir(target_dir)
for input_path in imagelist:
    input = Image.open(os.path.join(target_dir, input_path))
    output = remove(input)
    output.save(os.path.join(dst_dir, input_path))