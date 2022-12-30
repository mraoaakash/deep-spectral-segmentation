import cv2
import os

outpath = "/home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/data/upscaledPatches"
def interpolator(path):
    img = cv2.imread(path)
    name= path.split('/')[-1]
    bilinear_img = cv2.resize(img,None, fx = 10, fy = 10, interpolation = cv2.INTER_LINEAR)
    cv2.imwrite(os.path.join(outpath,name,bilinear_img))

def main():
    if not os.path.exists(outpath):
        os.makedirs(outpath)
    for i in os.listdir("/home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/data/object-segmentation/VOC2012/single_region_segmentation/patches/laplacian_dino_vits16"):
        if i.endswith('.png'):
            interpolator(i)

main()