Step 1: Apply css asset + plan out basic root page
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

Step 2: Create models

  User
    Attributes
      name: string
      role: integer
    Relations 
      has_many :bottleshots 

  Bottleshot
    Attributes
      name: string 
      user_id: integer
      status: string, default: "not sumbmitted"
    Relations
      belongs_to :user
      has_one :shapes
      has_one :winecolors




