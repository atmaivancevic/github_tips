# On fiji server

# Go to the dir that stores your ssh keys
cd ~/.ssh

# Check if you already have existing keys that you can use
ls -al ~/.ssh

#drwx------  2 ativ2716 chuongLab    9 Jan  7 16:50 .
#drwx------ 27 ativ2716 root        36 Jan  7 14:31 ..
#-rw-------  1 ativ2716 chuongLab  847 Oct  2 12:25 authorized_keys
#-rw-------  1 ativ2716 chuongLab  134 Jan  7 16:16 environment
#-rw-------  1 ativ2716 chuongLab  419 Oct  1 10:25 id_ed25519
#-rw-r--r--  1 ativ2716 chuongLab  110 Oct  1 10:25 id_ed25519.pub
#-rw-------  1 ativ2716 chuongLab 1675 Oct  2 12:21 id_rsa
#-rw-r--r--  1 ativ2716 chuongLab  381 Jan  7 16:44 id_rsa.pub
#-rw-r--r--  1 ativ2716 chuongLab 1551 Jan  7 15:05 known_hosts

# Most keys should be paired, eg id_rsa and id_rsa.pub. The .pub file contains the public key, while the other file is private and should never be shared anywhere.

# If you don't have id_rsa.pub, generate it by doing:
ssh-keygen -y -f ~/.ssh/id_rsa > ~/.ssh/id_rsa.pub

# Add the SSH public key to github

# On github, locate the settings for your account and find the "SSH and GPG keys" section
# Click "New SSH key"
# Give it an informative name (e.g. fiji server)
# And paste the key into the box (note: you can find your key by doing 'cat id_rsa.pub' in your terminal)
# Click "Add SSH Key" and you're all set!

####################################################

# Test out your new ssh connection
ssh -T git@github.com

# You should receive a message like: Hi atmaivancevic! You've successfully authenticated, but GitHub does not provide shell access.

# Now try it with one of your github repos
cd ~/repos
git clone git@github.com:atmaivancevic/LTR_enrichment.git
# note: make sure to use the SSH link, not the HTML

# If you did use the HTML link, then you'll need to cd into the cloned repo and run this:
git remote set-url origin git@github.com:atmaivancevic/LTR_enrichment.git

# That will set it so that you never need to enter username or password again

# Do the same to add SSH keys to your local mac and work mac
