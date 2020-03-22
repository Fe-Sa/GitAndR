get-yesterday <- function(){
 x <- (as.character(Sys.Date()- 1))
 return(x)
 #Adding a commment here to commit within GitHub
}

#Section 1. Basic Work Flow :
  # 1. Edit code
  # 2. Save the script
  # 3. Got to the commit tab in the env pane
  # 4. Select the script and select Commit 
  # 5. Add a commit message (it wont let you commit without a message)
  # 6. Select the commit button to Commit changes
 

#Section 2. Reverting to older versions of the script in R 
## *You need to get the Git id (SHA)*

  #1. Git Tab ->Diff button -> History
  #2. Copy the SHA
  #3. Tools ->Terminal -> New terminal
  #4. Type git reset --hard SHA
  #5. RUN

#Section 3. Create a GitHub repo through R
  # usethis package

  #1. Load usethis package: library(usethis)
  #2. In the help file (?use-github), under the Authentification section,
  #   you will need to create a personal access token.(useful link)
  #3. Select the repo permission box and give it a note
  #4. *Copy the token. You only get one shot at copying the token.Once you close the window
  #   you will lose that token. The best way to store is in the r env file
  #5. Back in r, use the edit_r_environ() function
  #6. Add the token as follows: GITHUB_PAT = 'Copied token'
  #7. Restart the R session. Session -> Restart R session
  #8. Re-load the usethis package
  #9. use_github(protocol = 'https', auth_token = Sys.getenv("GITHUB_PAT")) -> RUN
  #10.Now the repo has been created with the title of the project. 
  #11. Once the repo has been created, follow the steps in section 1, with the 
  #    added step of "Pushing" the commit to the GitHub repo. 
  #12. You can also make changes within GitHub using the edit button and then "Pull" 
  #    back those changes into the R script. 

  