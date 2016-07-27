### SwiDeN


This project is a CAFFE implementation for our ACMMM 2016 paper describing Switching Deep Networks(SwiDeN) [](), which is a novel`deep depictive style-based switching mechanism which appropriately addresses the depiction-specific and depiction-invariant aspects of the problem.
   ```bash
   $ curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
   $ git clone https://github.com/torch/distro.git ~/torch --recursive
   $ cd ~/torch; 
   $ ./install.sh      # and enter "yes" at the end to modify your bashrc
   $ source ~/.bashrc


### License

This code is released under the MIT License (Please refer to the LICENSE file for details).
<!---
### Citation
Please cite SwiDeN in your publications if it helps your research:

    @inproceedings{,
        Author = {},
        Title = {},
        Booktitle = {},
        Year = {2016}
    }

--->
### Dependencies and Installation

1. Code for SwiDeN is based on [CAFFE](http://caffe.berkeleyvision.org/). This code was tested on UBUNTU 14.04 on the folowing NVIDIA GPUs: NVIDIA TITAN X, NVIDIA K40, NVIDIA K20. 

2. To install this version of CAFFE used to realize SwiDeN, install all the dependencies for CAFFE and then execute the following:
  
   ```bash
   $ git clone https://github.com/val-iisc/swiden.git
   $ cd swiden/caffe/
   $ make all 
   $ make matcaffe #if you have a MATLAB installation and want to link CAFFE to MATLAB
   $ make pycaffe  #if you want to link CAFFE to python
   ```
### Datasets

We provide a link to the page on which the [Photo-Art-50 dataset](http://people.bath.ac.uk/hc551/dataset.html) is hosted. Please cite the papers of the authors of the dataset if you use it. The models for testing SwiDeN can be found [here](https://drive.google.com/open?id=0B-uAVJ5bK78SaDNlTm5iWEVKbnM). The train-test splits are located in /swiden/caffe/data/swiden_split/ .

### Q&A

Please send message to iisc.val@gmail.com if you have any query regarding the code.
