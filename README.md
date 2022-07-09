# Assembly
Learning Assembly

Git HTTPS to SSH:

git remote set-url origin git@github.com:Repo_SSH_path (get it in "clone" tab)
git remote -v (should be SSH path)

Check if you have SSH key:

ssh-add -l -E sha256

And copy it to "add ssh puclickey" tab.
If you dont have it, then:

ssh-keygen -t rsa -b 4096
cat /home/USERNAME/.ssh/id_rsa.pub
