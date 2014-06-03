Todo-list

An application including following:-

  1) Registration and login with devise gem

  2) After registration user need to confirm his email (use mailer with SMTP)

  3) After sign in user redirect to his dashboard(showing following):-
    a) Link to create an project
    b) List of projects(created by current_user)
    c) List of project(for which he is invited by others)

  4) On click of any project redirect to project detail page(including following):-
    a) Title of project, short description of project.
    b) List of members:-
      i) If current_user is owner of project then he can add new user or can remove user from project.
      ii) If current_user is not a owner then he can only add a new user.
    c) User can create a new post with attachment.
    d) User can create a comment on any post with attachment.
    e) Owner can delete any post,comment.
    f) Before showing any post, we need to verify it from owner of that project.

  5) Use cancan gem.

  6) Later will add following functionalities in this project:-
    a) Integrate Active admin into it.
    b) Integrate with social sites login.
    c) Like comments, share posts with facebook and twitter.
