# This file will explain what urls should be for various actions. It will also provide an explanation on the types of initial views required for users and authors.

# View for Users

* A user will be required to sign up via the sign up page. Once signed up, they will be redirected to the user profile page. This view will provide an overview of their profile. They will be able to edit their profile within this view. They will also have horizontal tabs detailing their account, the articles they have requested to be written, their favorite authors, their feedback provided, the ability to add or withdraw funds. They can also choose to close their account if desired.

# View for authors

* An author wil be required to sign up via the sign up page. Once signed up, they will be redirected to the author profile page. This view will provide an overview of their profile. They will be able to edit their profile within this view. They will also have horizontal tabs detailing their account, the articles they have written and submitted, the feedback they have been provided, the ability to add or withdraw funds. They can also choose to close their account if desired.

# A typical users roles

* A user should be able to register for an account                                        - cupidicon/sign_up
* A user should be able to upload an Avatar                                               - cupidicon/sign_up
* A user should be able to add funds to their account via a credit card or paypal         - cupidicon/user/account/add_funds
* A user should be able to withdraw funds from their account via a credit card or paypal  - cupidicon/user/account/withdraw_funds
* A user should be able to create an article                                              - cupidicon/posts/new
* A user should be able to edit a post before submission                                  - cupidicon/posts/edit
* A user should be able to see a summary of an article before submission                  - cupidicon/posts/show
* A user should be able to submit an article to be written                                - cupidicon/lexicon/id/posts/id
* A user should be able to view the lexicion                                              - cupidicon/lexicon
* A user should be able to view an article in the lexicon                                 - cupidicon/lexicon/id/posts/id/show 
* A user should be able to select an article to be written                                - cupidicon/lexicon/id/posts/id/edit
* A user should be able to review a written article                                       - cupidicon/lexicon/id/posts/id/review
* A user should be able to submit the article                                             - cupidicon/lexicon/id/posts/id/
* A user should be able to provide feedback on an article                                 
* A user should be able to comment on an article
* A user should be able to delete a comment they have made on an article
* A user should be able to add an authour as a favorite
* A user should be able to read other users articles
* A user should be a client and an author
* A user should be able to edit their account                                             - cupidicon/user/account/edit
* A user should be able to view a history of their posted and written articles
* A user should not be able to edit an article once it has been submitted and accepted
* A user should be able to cancel their account
* A user should have a ranking that can be changed over time
* A user should have an overview of their account

# An admin user role

* An admin user should be able to edit all articles
* An admin user should be able to delete articles and comments
* An admin user should be able to restrict users
* An admin user shoud be able to change a users ranking

