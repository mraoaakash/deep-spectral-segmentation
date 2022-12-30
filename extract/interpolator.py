import cv2
import os

outpath = "/home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/data/upscaledPatches"
def interpolator(path, scale=10):
    img = cv2.imread(path)
    name= path.split('/')[-1]
    bilinear_img = cv2.resize(img,None, fx = 1000, fy = 1000, interpolation = cv2.INTER_LINEAR)
    cv2.imwrite(os.path.join(outpath,name,bilinear_img))

def main():
    if not os.path.exists(outpath):
        os.makedirs(outpath)
    for i in os.listdir("/home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/data/object-segmentation/VOC2012/single_region_segmentation/patches/laplacian_dino_vits16"):
        interpolator(i)

main()