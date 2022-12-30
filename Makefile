Yeehaw:
	# Example dataset
	DATASET=VOC2012

	# Features
	python /Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/lists/images.txt" \
		--images_root "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/images" \
		--output_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/images" \
		--features_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/eigs/laplacian_dino_vits16" \
		--K 2 \


	# Extract single-region segmentatiosn
	python /Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/features/dino_vits16" \
		--eigs_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/eigs/laplacian_dino_vits16" \
		--output_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/lists/images.txt" \
		--images_root "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/images" \
		--segmentations_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "/Users/mraoaakash/Documents/research/research-tnbc/deep-spectral-segmentation/deep-spectral-segmentation/data/object-segmentation/VOC2012/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2