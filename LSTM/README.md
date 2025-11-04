# LSTM from Scratch for Vehicle Sensor Data

This project implements a Long Short-Term Memory (LSTM) network from scratch using only NumPy to process vehicle sensor data for predictive maintenance applications.

## Project Context

This LSTM implementation is part of a larger project focused on predictive maintenance for vehicles using OBD-II data. This work builds upon the [Vanilla RNN implementation](../vanilla_rnn/) in this repository, which serves as the foundation for understanding recurrent neural networks.

## Research Background

This implementation is based on the methodology described in the research paper: [DeepAR + STAM + VAE for predictive maintenance](https://arxiv.org/abs/2407.17654). While the full system will eventually combine DeepAR, STAM, and VAE components, this LSTM implementation serves as a critical building block, as LSTM is the basis for both DeepAR and STAM architectures.

## Features

- LSTM implementation from scratch (no deep learning frameworks)
- Time series prediction on vehicle sensor data
- Backpropagation Through Time (BPTT) for LSTM
- Gradient clipping to prevent exploding gradients
- Educational approach with step-by-step explanations

## Dataset

The dataset used is from the [Automotive OBD-II Dataset](https://radar.kit.edu/radar/en/dataset/bCtGxdTklQlfQcAq) by Karlsruhe Institute of Technology.

- **File**: `dataset/2017-07-31_Seat_Leon_RT_KA_Normal.csv`
- **Size**: 57,331 rows, 10 sensor signals
- **Signals**: Engine coolant temperature, intake manifold pressure, engine RPM, vehicle speed, intake air temperature, air flow rate, throttle position, ambient temperature, and accelerator pedal positions

**Note**: The dataset does not contain fault labels, which may require unsupervised learning approaches or synthetic anomaly generation for fault detection.

## Setup

1. Install required packages:
```bash
pip install pandas numpy matplotlib scikit-learn
```

2. Update the dataset path in the notebook and run the cells.

## Structure

- `lstm_from_scratch.ipynb` - Main notebook with LSTM implementation and training
- `dataset/` - Contains the OBD-II vehicle sensor data

## Learning Path

This implementation follows a novice-friendly approach:
1. Understanding LSTM architecture differences from RNN
2. Implementing LSTM cell components (forget gate, input gate, output gate, cell state)
3. Building forward pass
4. Building backward pass (BPTT)
5. Training loop and evaluation

## Future Work

- Integration with DeepAR architecture
- Integration with STAM (Spatial-Temporal Attention Mechanism)
- VAE integration for unsupervised anomaly detection
- Real-time prediction with Modaxe OBD-II datalogger

## License

[Add your license here]

