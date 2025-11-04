# How to Run Training in Background

## Option 1: Run Training Cell in Jupyter (Simplest)

**Steps:**
1. Open `vanilla_rnn.ipynb` in Jupyter
2. Make sure you've run all prerequisite cells first:
   - Cell 41: VanillaRNN class initialization
   - Cell 44: Add forward method  
   - Cell 46: Add backward method
   - Cell 48: Add update_parameters method
   - Cell 50: Loss functions
   - Cell 53: Training loop function
3. Run Cell 55 (Step 4: Train the Model)
4. Leave the notebook running
5. Check back later - training will continue even if you close your browser (if Jupyter is running as a service)

**Note:** Training with 200 epochs and 40,119 samples will take several hours. You can monitor progress in the cell output.

---

## Option 2: Run as Background Python Script

If you prefer to run it as a standalone script in the background:

```bash
# Make sure you're in the project directory
cd /home/kaifalam/vishvajeet_verma/vanilla_rnn

# Run training in background with nohup (will continue even if you disconnect)
nohup python3 -m jupyter nbconvert --to notebook --execute --inplace vanilla_rnn.ipynb > training.log 2>&1 &

# Or if you prefer to use the script wrapper (once created):
# nohup python3 train_model.py > training.log 2>&1 &

# Check if it's running:
ps aux | grep jupyter

# Monitor progress:
tail -f training.log
```

---

## Check Training Progress

When you return, you can:

1. **In Jupyter**: Check the training cell output for epoch-by-epoch progress
2. **From terminal**: Check the log file
   ```bash
   tail -f training.log
   ```

3. **Check if training completed**: Look for "✓ Training completed!" in output/log

---

## Next Steps After Training

Once training completes:
1. Run visualization cell (Step 5) to see loss curves
2. Run test evaluation cell (Step 6) to see test metrics
3. Run prediction visualization cell (Step 7) to see actual vs predicted plots

---

## Important Notes

- Training will take **several hours** with 200 epochs
- All progress is saved in git (already committed)
- Model weights are stored in the `rnn_model` object in memory
- After training, you may want to save the model weights to disk for later use

---

**Recommendation:** Use Option 1 (Jupyter cell) - it's simpler and you can see real-time progress.
