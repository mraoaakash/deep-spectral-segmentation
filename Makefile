Level 9:
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L9/images.txt" \
		--images_root "./data/object-segmentation/dataset/L9/images" \
		--output_dir "./data/object-segmentation/dataset/L9/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L9/images" \
		--features_dir "./data/object-segmentation/dataset/L9/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L9/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L9/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L9/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L9/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L9/images.txt" \
		--images_root "./data/object-segmentation/dataset/L9/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L9/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L9/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2

