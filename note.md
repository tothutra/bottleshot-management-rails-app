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

##Step 2: Create models

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
