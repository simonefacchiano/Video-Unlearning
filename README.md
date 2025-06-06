# Video-Unlearning
[![website](https://img.shields.io/badge/-Website-orange?style=flat&labelColor=grey&logo=firefox%20browser&logoColor=white)](https://pinlab.org/hmu)
[![arXiv](https://img.shields.io/badge/-Paper-red?style=flat&labelColor=grey&logo=arxiv&logoColor=white)]([https://arxiv.org/abs/2503.18674](https://www.alphaxiv.org/abs/2504.04479))

The first training-free approach for unlearning sensitive or toxic concepts from a pre-trained Video Generation model. 🔮 💫

Code will be made available soon... stay tuned! 🚀

----


> ## 🚧 Work in progress!
>
> Code will be made available soon... stay tuned! 🚀 \\
> Feel free to **star** ⭐️  and **watch** 👁️ the repo to stay updated!

This repository will host the official implementation of the paper [*Human Motion Unlearning*](https://arxiv.org/pdf/2503.18674).

We introduce human motion unlearning to prevent toxic animation synthesis while preserving text-to-motion quality. We provide the first benchmark by filtering toxic samples from HumanML3D and Motion-X, and adapt image unlearning methods as baselines. We also propose *Latent Code Replacement (LCR)*, a simple, training-free method that outperforms all baselines.

*"A man does a run-up to **kick** something lying on the ground."*

| ❌ Before (Toxic Motion) | ✅ After (Unlearned Motion) |
|-------------------------|-----------------------------|
| ![before](assets/imgs/momask_1.gif) | ![after](assets/imgs/lcr_1.gif) |

*"A man stands up from the ground and then **kicks with force**."*

| ❌ Before (Toxic Motion) | ✅ After (Unlearned Motion) |
|-------------------------|-----------------------------|
| ![before](assets/imgs/momask_2.gif) | ![after](assets/imgs/lcr_2.gif) |

*"A man **punches** and then **kicks** the enemy."*

| ❌ Before (Toxic Motion) | ✅ After (Unlearned Motion) |
|-------------------------|-----------------------------|
| ![before](assets/imgs/momask_3.gif) | ![after](assets/imgs/lcr_3.gif) |

For more visualizations, check out our [project page](https://www.pinlab.org/hmu).

## Announcements

- **2025-03-25**:  The repository is live! Code and models will be available soon. Stay tuned!

## Acknowledgements

We thank the authors of [MoMask](https://github.com/EricGuo5513/momask-codes) and [BAMM](https://github.com/exitudio/BAMM/) for their open-source code.
We also acknowledge the datasets [HumanML3D](https://github.com/EricGuo5513/HumanML3D) and [Motion-X](https://github.com/IDEA-Research/Motion-X) for enabling this research.

## Citation

```bibtex
@misc{dematteis2025humanmotionunlearning,
      title={Human Motion Unlearning}, 
      author={Edoardo De Matteis and Matteo Migliarini and Alessio Sampieri and Indro Spinelli and Fabio Galasso},
      year={2025},
      eprint={2503.18674},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/2503.18674}, 
}
```
