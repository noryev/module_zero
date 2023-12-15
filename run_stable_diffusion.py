import replicate

output = replicate.run(
    "stability-ai/stable-video-diffusion:3f0457e4619daac51203dedb472816fd4af51f3149fa7a9e0b5ffcf1b8172438",
    input={
        "cond_aug": 0.02,
        "decoding_t": 7,
        "input_image": "https://bafybeictcegnqjquifdqbwy4nnkndwo3iy5zns7jfbkllz5hl26owidmf4.ipfs.w3s.link/orkaDank.png",
        "video_length": "14_frames_with_svd",
        "sizing_strategy": "maintain_aspect_ratio",
        "motion_bucket_id": 127,
        "frames_per_second": 6
    }
)

print(output)
