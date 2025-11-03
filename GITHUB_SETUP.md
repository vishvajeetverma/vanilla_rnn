# How to Push Code to GitHub

## Step 1: Create a Personal Access Token

1. Open your web browser
2. Go to: https://github.com/settings/tokens
3. Click the button: **"Generate new token (classic)"** 
4. Give it a name like: `vanilla_rnn_token`
5. Check the box next to **"repo"** (this gives permission to access repositories)
6. Scroll down and click **"Generate token"**
7. **IMPORTANT:** Copy the token immediately (it looks like: `ghp_xxxxxxxxxxxxxxxxxxxx`)
   - Save it somewhere safe - you won't see it again!

## Step 2: Use the Token to Push

Now run this command in your terminal:
```bash
git push -u origin main
```

When it asks:
- **Username:** Enter `vishvajeetverma`
- **Password:** Paste your token (NOT your GitHub password!)

That's it! Your code will be pushed to GitHub.

## After Pushing

You can then:
1. Upload your dataset file to the GitHub repository
2. Or add it locally and push it

