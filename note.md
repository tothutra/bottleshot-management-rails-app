##Step 1: Apply css asset + plan out basic root page
  Create SiteController and stub out Homepage
  Apply basic assets from Bootstrap for Grid system and fixed top Navigation Bar
  
  Stub out Root Page:
    If not logged in: Please Sign In or Sign Up to order your bottleshots!
    If logged in: 
      Hi [Username]! Welcome to your page!
      List of all bottle shots with status
      View my library 
    If Admin
      Manage Collections
      Manage Users

  Stub out Navigation Bar: 
    If logged in: Sign Out | My Library | My Order 
    If not logged in: Sign In | Sign Up
    If Admin: Control Panel 

##Step 2: Create models

  User
    Attributes
      name: string
      role: integer
    Relations 
      has_many :bottleshots 

  Generate Devise for User

  Bottleshot
    Attributes
      name: string 
      user_id: integer
      status: string, default: "not sumbmitted"
      vintage: integer
      bottle_shape_id: integer
      glass_color_id: integer
      wine_color_id: integer
      capsule_id: integer
      screenprinted: boolean
      paperstock_id: integer
      label_finish_id: integer
      label_file: string
    Relations
      belongs_to :user
      belongs_to :bottle_shape
      belongs_to :wine_color
      belongs_to :capsule
      belongs_to :paperstock
      belongs_to :label_finish

  BottleShape
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots

  GlassColore
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots  

  WineColor
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots

  Capsule
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots

  Paperstock
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots

  LabelFinish
    Attributes
      name: string
      description: string
    Relations
      has_many: bottleshots

#Step 2B: Add seed data
 
##Step 3: Add CRUD functionality to bottleshots

##Step 3B: Add CRUD to other models 

##Step 4: Add Role

##Step 5: Add OmniAuth
https://richonrails.com/articles/google-authentication-in-ruby-on-rails
https://deepakrip007.wordpress.com/2013/11/05/google-integration-using-devise-and-omniauth-in-rails-app/
Client ID: 910214406025-kqt11k5a3lujjcl16u0hm1mlsfhpa3ot.apps.googleusercontent.com
Client Secret: SlxOckMjhTCLxVcrbnAl9DCC

##Step 6: Add Admin view

##Step 7: Add more Policy

##Step 8: Add BeautyShots to Bottleshots

Bottle shots has_many AddOns
AddOn has_many bottleshot



*****************************************************

RAILS WITH JQUERY INTERFACE ASSESSMENT

##Step 1: from ugly to....ok
  - How to use webfont yo?
  