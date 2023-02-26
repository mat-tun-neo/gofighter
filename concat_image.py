import cv2
import numpy as np

def concat_tile(im_list_2d):
    return cv2.vconcat([cv2.hconcat(im_list_h) for im_list_h in im_list_2d])

im9999 = cv2.imread('game_main/images/old/99999.png')

no='1'
im0000 = cv2.imread('game_main/images/old/' + no + '0000.png')
im0001 = cv2.imread('game_main/images/old/' + no + '0001.png')
im0002 = cv2.imread('game_main/images/old/' + no + '0002.png')
im0003 = cv2.imread('game_main/images/old/' + no + '0003.png')
im0004 = cv2.imread('game_main/images/old/' + no + '0004.png')
im0005 = cv2.imread('game_main/images/old/' + no + '0005.png')
im0006 = cv2.imread('game_main/images/old/' + no + '0006.png')
im0007 = cv2.imread('game_main/images/old/' + no + '0007.png')
im0008 = cv2.imread('game_main/images/old/' + no + '0008.png')
im0009 = cv2.imread('game_main/images/old/' + no + '0009.png')
im0010 = cv2.imread('game_main/images/old/' + no + '0010.png')
im0011 = cv2.imread('game_main/images/old/' + no + '0011.png')
im0012 = cv2.imread('game_main/images/old/' + no + '0012.png')
im0013 = cv2.imread('game_main/images/old/' + no + '0013.png')
im0014 = cv2.imread('game_main/images/old/' + no + '0014.png')
im0015 = cv2.imread('game_main/images/old/' + no + '0015.png')
im0016 = cv2.imread('game_main/images/old/' + no + '0016.png')
im0017 = cv2.imread('game_main/images/old/' + no + '0017.png')
im0018 = cv2.imread('game_main/images/old/' + no + '0018.png')
im0019 = cv2.imread('game_main/images/old/' + no + '0019.png')
im0020 = cv2.imread('game_main/images/old/' + no + '0020.png')
im0021 = cv2.imread('game_main/images/old/' + no + '0021.png')
im0022 = cv2.imread('game_main/images/old/' + no + '0022.png')
im0023 = cv2.imread('game_main/images/old/' + no + '0023.png')
im0024 = cv2.imread('game_main/images/old/' + no + '0024.png')
im0025 = cv2.imread('game_main/images/old/' + no + '0025.png')
im0026 = cv2.imread('game_main/images/old/' + no + '0026.png')
im0027 = cv2.imread('game_main/images/old/' + no + '0027.png')
im0028 = cv2.imread('game_main/images/old/' + no + '0028.png')
im0029 = cv2.imread('game_main/images/old/' + no + '0029.png')
im0030 = cv2.imread('game_main/images/old/' + no + '0030.png')
im0031 = cv2.imread('game_main/images/old/' + no + '0031.png')
im0032 = cv2.imread('game_main/images/old/' + no + '0032.png')
im0033 = cv2.imread('game_main/images/old/' + no + '0033.png')
im0034 = cv2.imread('game_main/images/old/' + no + '0034.png')
im0035 = cv2.imread('game_main/images/old/' + no + '0035.png')

im_tile = concat_tile([
    [im0000, im0001, im0002, im0003, im0004, im0005, im0006, im0007, im0008, im0009],
    [im0010, im0011, im0012, im0013, im0014, im0015, im0016, im0017, im0018, im0019],
    [im0020, im0021, im0022, im0023, im0024, im0025, im0026, im0027, im0028, im0029],
    [im0030, im0031, im0032, im0033, im0034, im0035, im9999, im9999, im9999, im9999],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999]
    ])
cv2.imwrite('game_main/images/old/character4' + no + '.bmp', im_tile)

no='2'
im0000 = cv2.imread('game_main/images/old/' + no + '0000.png')
im0001 = cv2.imread('game_main/images/old/' + no + '0001.png')
im0002 = cv2.imread('game_main/images/old/' + no + '0002.png')
im0003 = cv2.imread('game_main/images/old/' + no + '0003.png')
im0004 = cv2.imread('game_main/images/old/' + no + '0004.png')
im0005 = cv2.imread('game_main/images/old/' + no + '0005.png')
im0006 = cv2.imread('game_main/images/old/' + no + '0006.png')
im0007 = cv2.imread('game_main/images/old/' + no + '0007.png')
im0008 = cv2.imread('game_main/images/old/' + no + '0008.png')
im0009 = cv2.imread('game_main/images/old/' + no + '0009.png')
im0010 = cv2.imread('game_main/images/old/' + no + '0010.png')
im0011 = cv2.imread('game_main/images/old/' + no + '0011.png')
im0012 = cv2.imread('game_main/images/old/' + no + '0012.png')
im0013 = cv2.imread('game_main/images/old/' + no + '0013.png')
im0014 = cv2.imread('game_main/images/old/' + no + '0014.png')
im0015 = cv2.imread('game_main/images/old/' + no + '0015.png')
im0016 = cv2.imread('game_main/images/old/' + no + '0016.png')
im0017 = cv2.imread('game_main/images/old/' + no + '0017.png')
im0018 = cv2.imread('game_main/images/old/' + no + '0018.png')
im0019 = cv2.imread('game_main/images/old/' + no + '0019.png')
im0020 = cv2.imread('game_main/images/old/' + no + '0020.png')
im0021 = cv2.imread('game_main/images/old/' + no + '0021.png')
im0022 = cv2.imread('game_main/images/old/' + no + '0022.png')
im0023 = cv2.imread('game_main/images/old/' + no + '0023.png')
im0024 = cv2.imread('game_main/images/old/' + no + '0024.png')
im0025 = cv2.imread('game_main/images/old/' + no + '0025.png')
im0026 = cv2.imread('game_main/images/old/' + no + '0026.png')
im0027 = cv2.imread('game_main/images/old/' + no + '0027.png')
im0028 = cv2.imread('game_main/images/old/' + no + '0028.png')
im0029 = cv2.imread('game_main/images/old/' + no + '0029.png')

im_tile = concat_tile([
    [im0000, im0001, im0002, im0003, im0004, im0005, im0006, im0007, im0008, im0009],
    [im0010, im0011, im0012, im0013, im0014, im0015, im0016, im0017, im0018, im0019],
    [im0020, im0021, im0022, im0023, im0024, im0025, im0026, im0027, im0028, im0029],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999]
    ])
cv2.imwrite('game_main/images/old/character4' + no + '.bmp', im_tile)

no='3'
im0000 = cv2.imread('game_main/images/old/' + no + '0000.png')
im0001 = cv2.imread('game_main/images/old/' + no + '0001.png')
im0002 = cv2.imread('game_main/images/old/' + no + '0002.png')
im0003 = cv2.imread('game_main/images/old/' + no + '0003.png')
im0004 = cv2.imread('game_main/images/old/' + no + '0004.png')
im0005 = cv2.imread('game_main/images/old/' + no + '0005.png')
im0006 = cv2.imread('game_main/images/old/' + no + '0006.png')
im0007 = cv2.imread('game_main/images/old/' + no + '0007.png')
im0008 = cv2.imread('game_main/images/old/' + no + '0008.png')
im0009 = cv2.imread('game_main/images/old/' + no + '0009.png')
im0010 = cv2.imread('game_main/images/old/' + no + '0010.png')
im0011 = cv2.imread('game_main/images/old/' + no + '0011.png')
im0012 = cv2.imread('game_main/images/old/' + no + '0012.png')
im0013 = cv2.imread('game_main/images/old/' + no + '0013.png')
im0014 = cv2.imread('game_main/images/old/' + no + '0014.png')
im0015 = cv2.imread('game_main/images/old/' + no + '0015.png')
im0016 = cv2.imread('game_main/images/old/' + no + '0016.png')
im0017 = cv2.imread('game_main/images/old/' + no + '0017.png')
im0018 = cv2.imread('game_main/images/old/' + no + '0018.png')
im0019 = cv2.imread('game_main/images/old/' + no + '0019.png')
im0020 = cv2.imread('game_main/images/old/' + no + '0020.png')
im0021 = cv2.imread('game_main/images/old/' + no + '0021.png')
im0022 = cv2.imread('game_main/images/old/' + no + '0022.png')
im0023 = cv2.imread('game_main/images/old/' + no + '0023.png')
im0024 = cv2.imread('game_main/images/old/' + no + '0024.png')
im0025 = cv2.imread('game_main/images/old/' + no + '0025.png')
im0026 = cv2.imread('game_main/images/old/' + no + '0026.png')
im0027 = cv2.imread('game_main/images/old/' + no + '0027.png')
im0028 = cv2.imread('game_main/images/old/' + no + '0028.png')
im0029 = cv2.imread('game_main/images/old/' + no + '0029.png')
im0030 = cv2.imread('game_main/images/old/' + no + '0030.png')
im0031 = cv2.imread('game_main/images/old/' + no + '0031.png')
im0032 = cv2.imread('game_main/images/old/' + no + '0032.png')
im0033 = cv2.imread('game_main/images/old/' + no + '0033.png')
im0034 = cv2.imread('game_main/images/old/' + no + '0034.png')
im0035 = cv2.imread('game_main/images/old/' + no + '0035.png')

im_tile = concat_tile([
    [im0000, im0001, im0002, im0003, im0004, im0005, im0006, im0007, im0008, im0009],
    [im0010, im0011, im0012, im0013, im0014, im0015, im0016, im0017, im0018, im0019],
    [im0020, im0021, im0022, im0023, im0024, im0025, im0026, im0027, im0028, im0029],
    [im0030, im0031, im0032, im0033, im0034, im0035, im9999, im9999, im9999, im9999],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999]
    ])
cv2.imwrite('game_main/images/old/character4' + no + '.bmp', im_tile)

no='4'
im0000 = cv2.imread('game_main/images/old/' + no + '0000.png')
im0001 = cv2.imread('game_main/images/old/' + no + '0001.png')
im0002 = cv2.imread('game_main/images/old/' + no + '0002.png')
im0003 = cv2.imread('game_main/images/old/' + no + '0003.png')
im0004 = cv2.imread('game_main/images/old/' + no + '0004.png')
im0005 = cv2.imread('game_main/images/old/' + no + '0005.png')
im0006 = cv2.imread('game_main/images/old/' + no + '0006.png')
im0007 = cv2.imread('game_main/images/old/' + no + '0007.png')
im0008 = cv2.imread('game_main/images/old/' + no + '0008.png')
im0009 = cv2.imread('game_main/images/old/' + no + '0009.png')
im0010 = cv2.imread('game_main/images/old/' + no + '0010.png')
im0011 = cv2.imread('game_main/images/old/' + no + '0011.png')
im0012 = cv2.imread('game_main/images/old/' + no + '0012.png')
im0013 = cv2.imread('game_main/images/old/' + no + '0013.png')
im0014 = cv2.imread('game_main/images/old/' + no + '0014.png')
im0015 = cv2.imread('game_main/images/old/' + no + '0015.png')
im0016 = cv2.imread('game_main/images/old/' + no + '0016.png')
im0017 = cv2.imread('game_main/images/old/' + no + '0017.png')
im0018 = cv2.imread('game_main/images/old/' + no + '0018.png')
im0019 = cv2.imread('game_main/images/old/' + no + '0019.png')
im0020 = cv2.imread('game_main/images/old/' + no + '0020.png')
im0021 = cv2.imread('game_main/images/old/' + no + '0021.png')
im0022 = cv2.imread('game_main/images/old/' + no + '0022.png')
im0023 = cv2.imread('game_main/images/old/' + no + '0023.png')
im0024 = cv2.imread('game_main/images/old/' + no + '0024.png')
im0025 = cv2.imread('game_main/images/old/' + no + '0025.png')
im0026 = cv2.imread('game_main/images/old/' + no + '0026.png')
im0027 = cv2.imread('game_main/images/old/' + no + '0027.png')
im0028 = cv2.imread('game_main/images/old/' + no + '0028.png')
im0029 = cv2.imread('game_main/images/old/' + no + '0029.png')

im_tile = concat_tile([
    [im0000, im0001, im0002, im0003, im0004, im0005, im0006, im0007, im0008, im0009],
    [im0010, im0011, im0012, im0013, im0014, im0015, im0016, im0017, im0018, im0019],
    [im0020, im0021, im0022, im0023, im0024, im0025, im0026, im0027, im0028, im0029],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999]
    ])
cv2.imwrite('game_main/images/old/character4' + no + '.bmp', im_tile)

no='5'
im0000 = cv2.imread('game_main/images/old/' + no + '0000.png')
im0001 = cv2.imread('game_main/images/old/' + no + '0001.png')
im0002 = cv2.imread('game_main/images/old/' + no + '0002.png')
im0003 = cv2.imread('game_main/images/old/' + no + '0003.png')
im0004 = cv2.imread('game_main/images/old/' + no + '0004.png')
im0005 = cv2.imread('game_main/images/old/' + no + '0005.png')
im0006 = cv2.imread('game_main/images/old/' + no + '0006.png')
im0007 = cv2.imread('game_main/images/old/' + no + '0007.png')
im0008 = cv2.imread('game_main/images/old/' + no + '0008.png')
im0009 = cv2.imread('game_main/images/old/' + no + '0009.png')
im0010 = cv2.imread('game_main/images/old/' + no + '0010.png')
im0011 = cv2.imread('game_main/images/old/' + no + '0011.png')
im0012 = cv2.imread('game_main/images/old/' + no + '0012.png')
im0013 = cv2.imread('game_main/images/old/' + no + '0013.png')
im0014 = cv2.imread('game_main/images/old/' + no + '0014.png')
im0015 = cv2.imread('game_main/images/old/' + no + '0015.png')
im0016 = cv2.imread('game_main/images/old/' + no + '0016.png')
im0017 = cv2.imread('game_main/images/old/' + no + '0017.png')
im0018 = cv2.imread('game_main/images/old/' + no + '0018.png')
im0019 = cv2.imread('game_main/images/old/' + no + '0019.png')
im0020 = cv2.imread('game_main/images/old/' + no + '0020.png')
im0021 = cv2.imread('game_main/images/old/' + no + '0021.png')
im0022 = cv2.imread('game_main/images/old/' + no + '0022.png')
im0023 = cv2.imread('game_main/images/old/' + no + '0023.png')
im0024 = cv2.imread('game_main/images/old/' + no + '0024.png')
im0025 = cv2.imread('game_main/images/old/' + no + '0025.png')
im0026 = cv2.imread('game_main/images/old/' + no + '0026.png')
im0027 = cv2.imread('game_main/images/old/' + no + '0027.png')
im0028 = cv2.imread('game_main/images/old/' + no + '0028.png')
im0029 = cv2.imread('game_main/images/old/' + no + '0029.png')
im0030 = cv2.imread('game_main/images/old/' + no + '0030.png')
im0031 = cv2.imread('game_main/images/old/' + no + '0031.png')
im0032 = cv2.imread('game_main/images/old/' + no + '0032.png')
im0033 = cv2.imread('game_main/images/old/' + no + '0033.png')
im0034 = cv2.imread('game_main/images/old/' + no + '0034.png')
im0035 = cv2.imread('game_main/images/old/' + no + '0035.png')

im_tile = concat_tile([
    [im0000, im0001, im0002, im0003, im0004, im0005, im0006, im0007, im0008, im0009],
    [im0010, im0011, im0012, im0013, im0014, im0015, im0016, im0017, im0018, im0019],
    [im0020, im0021, im0022, im0023, im0024, im0025, im0026, im0027, im0028, im0029],
    [im0030, im0031, im0032, im0033, im0034, im0035, im9999, im9999, im9999, im9999],
    [im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999, im9999]
    ])
cv2.imwrite('game_main/images/old/character4' + no + '.bmp', im_tile)