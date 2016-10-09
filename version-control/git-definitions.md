# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control is the way by which programmers make changes to existing code as well as preserve code as backup. If necessary code can be reverted back to an earlier state through proper, responsible version control.

* What is a branch and why would you use one?
    - A branch is essentially a copy or an "alternate reality" of pre-existing code. Branches are useful because they allow us to work on particular aspects of the code without potentially altering the already working "master" code (i.e. branches help preserve the working condition of code). A developer would use a branch to experiment with a particular feature of some code, knowing that their work thus far would be kept intact.

* What is a commit? What makes a good commit message?
    - A commit is a "save point" for code that has been modified and allows a programmer the option to keep any desired changes to code that is being worked on. A good commit message is one that is succinct and informative, letting other programmers know what kind of changes have been made to code.

* What is a merge conflict?
    - A merge conflict occurs when Git notices that two branches that are trying to merge contain code that cannot be reconciled (e.g. two different developers making changes individually to the same line of code). Git usually can handle merges well, but merge conflicts occasionally occur despite this.