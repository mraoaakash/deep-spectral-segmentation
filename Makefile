Yeehaw:
	# Example dataset
	DATASET=VOC2012

	# Features
	python extract.py extract_features \
		--images_list "./data/object-segmentation/${DATASET}/lists/images.txt" \
		--images_root "./data/object-segmentation/${DATASET}/images" \
		--output_dir "./data/object-segmentation/${DATASET}/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python extract.py extract_eigs \
		--images_root "./data/object-segmentation/${DATASET}/images" \
		--features_dir "./data/object-segmentation/${DATASET}/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/${DATASET}/eigs/laplacian_dino_vits16" \
		--K 2 \


	# Extract single-region segmentatiosn
	python extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/${DATASET}/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/${DATASET}/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/${DATASET}/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/${DATASET}/lists/images.txt" \
		--images_root "./data/object-segmentation/${DATASET}/images" \
		--segmentations_dir "./data/object-segmentation/${DATASET}/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/${DATASET}/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2