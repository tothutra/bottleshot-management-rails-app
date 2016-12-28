function Bottleshot(attributes){
  this.varietal = attributes.varietal
  this.vintage = attributes.vintage
  this.bottle_shape = attributes.bottle_shape
  this.glass_color = attributes.glass_color
  this.wine_color = attributes.wine_color
  this.capsule = attributes.capsule
  this.paperstock = attributes.paperstock
  this.label_finish = attributes.label_finish
  this.screenprinted = attributes.screenprinted
  this.add_ons = attributes.add_ons
  this.fullname = attributes.vintage + " " + attributes.varietal
  this.is_screenprinted = function() {
    if (this.screenprinted == true) {
      return "Yes"
    } else {
      return "No"
    }
  }
  this.all_add_ons = function() {
    var add_ons = []
    this.add_ons.forEach(function(add_on) {
      add_ons.push(add_on["name"])
    })
    return add_ons.join(", ")
  }
}