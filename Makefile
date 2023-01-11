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






	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L16/images.txt" \
		--images_root "./data/object-segmentation/dataset/L10/images" \
		--output_dir "./data/object-segmentation/dataset/L10/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L10/images" \
		--features_dir "./data/object-segmentation/dataset/L10/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L10/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L10/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L10/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L10/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L10/images.txt" \
		--images_root "./data/object-segmentation/dataset/L10/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L10/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L10/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L11/images.txt" \
		--images_root "./data/object-segmentation/dataset/L11/images" \
		--output_dir "./data/object-segmentation/dataset/L11/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L11/images" \
		--features_dir "./data/object-segmentation/dataset/L11/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L11/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L11/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L11/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L11/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L11/images.txt" \
		--images_root "./data/object-segmentation/dataset/L11/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L11/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L11/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L12/images.txt" \
		--images_root "./data/object-segmentation/dataset/L12/images" \
		--output_dir "./data/object-segmentation/dataset/L12/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L12/images" \
		--features_dir "./data/object-segmentation/dataset/L12/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L12/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L12/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L12/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L12/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L12/images.txt" \
		--images_root "./data/object-segmentation/dataset/L12/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L12/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L12/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L13/images.txt" \
		--images_root "./data/object-segmentation/dataset/L13/images" \
		--output_dir "./data/object-segmentation/dataset/L13/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L13/images" \
		--features_dir "./data/object-segmentation/dataset/L13/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L13/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L13/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L13/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L13/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L13/images.txt" \
		--images_root "./data/object-segmentation/dataset/L13/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L13/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L13/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L14/images.txt" \
		--images_root "./data/object-segmentation/dataset/L14/images" \
		--output_dir "./data/object-segmentation/dataset/L14/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L14/images" \
		--features_dir "./data/object-segmentation/dataset/L14/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L14/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L14/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L14/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L14/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L14/images.txt" \
		--images_root "./data/object-segmentation/dataset/L14/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L14/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L14/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L15/images.txt" \
		--images_root "./data/object-segmentation/dataset/L15/images" \
		--output_dir "./data/object-segmentation/dataset/L15/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L15/images" \
		--features_dir "./data/object-segmentation/dataset/L15/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L15/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L15/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L15/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L15/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L15/images.txt" \
		--images_root "./data/object-segmentation/dataset/L15/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L15/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L15/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2







		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L16/images.txt" \
		--images_root "./data/object-segmentation/dataset/L16/images" \
		--output_dir "./data/object-segmentation/dataset/L16/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L16/images" \
		--features_dir "./data/object-segmentation/dataset/L16/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L16/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L16/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L16/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L16/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L16/images.txt" \
		--images_root "./data/object-segmentation/dataset/L16/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L16/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L16/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2






		
	# Features
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_features \
		--images_list "./data/object-segmentation/dataset/L17/images.txt" \
		--images_root "./data/object-segmentation/dataset/L17/images" \
		--output_dir "./data/object-segmentation/dataset/L17/features/dino_vits16" \
		--model_name dino_vits16 \
		--batch_size 1

	# Eigenvectors
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_eigs \
		--images_root "./data/object-segmentation/dataset/L17/images" \
		--features_dir "./data/object-segmentation/dataset/L17/features/dino_vits16/" \
		--which_matrix "laplacian" \
		--output_dir "./data/object-segmentation/dataset/L17/eigs/laplacian_dino_vits16" \
		--K 5 \


	# Extract single-region segmentatiosn
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_single_region_segmentations \
		--features_dir "./data/object-segmentation/dataset/L17/features/dino_vits16" \
		--eigs_dir "./data/object-segmentation/dataset/L17/eigs/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L17/single_region_segmentation/patches/laplacian_dino_vits16"

	# With CRF
	# Optionally, you can also use `--multiprocessing 64` to speed up computation by running on 64 processes
	python /home/chs.rintu/Documents/chs-lab-ws02/research-cancerPathology/deep-spectral-segmentation/extract/extract.py extract_crf_segmentations \
		--images_list "./data/object-segmentation/dataset/L17/images.txt" \
		--images_root "./data/object-segmentation/dataset/L17/images" \
		--segmentations_dir "./data/object-segmentation/dataset/L17/single_region_segmentation/patches/laplacian_dino_vits16" \
		--output_dir "./data/object-segmentation/dataset/L17/single_region_segmentation/crf/laplacian_dino_vits16" \
		--downsample_factor 16 \
		--num_classes 2

